#!/usr/bin/python3

#-----------------------------------------------------------------#
#- Script      : gen_bch_verilog.py                              -#
#- Author      : W.A                                             -#
#- Date        : Oct/15/24                                       -#
#- Description : generate bch algorithm ECC verilog logic        -#
#-----------------------------------------------------------------#

import math
import time
import pdb

Primitive_Polynomials = {
    2:  [1, 1, 1], # X^2 + X + 1
    3:  [1, 0, 1, 1], # X^3 + X + 1
    4:  [1, 0, 0, 1, 1], # X^4 + X + 1
    5:  [1, 0, 0, 1, 0, 1], # X^5 + X^2 + 1
    6:  [1, 0, 0, 0, 0, 1, 1], # X^6 + X + 1
    7:  [1, 0, 0, 0, 1, 0, 0, 1], # X^7 + X^3 + 1
    8:  [1, 0, 0, 0, 1, 1, 1, 0, 1], # X^8 + X^4 + X3 + X^2 + 1
    9:  [1, 0, 0, 0, 0, 1, 0, 0, 0, 1], # X^9 + X^4 + 1
    10: [1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1], # X^10 + X^3 + 1
    11: [1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1] # X^11 + X^2 + 1
}

def gen_parity_check_matrix(n, k, m):
    
    primitive_poly = Primitive_Polynomials[m]
    ppLen = len(primitive_poly)
    parity_check_matrix = [[] for i in range(ppLen)]
    # systematic form
    for i in range(n):
        poly =  [1] + [0] * i

        if len(poly) < ppLen:
            remainder_poly = ([0] * (ppLen - len(poly)) + poly)[::-1][0:ppLen-1]
        else:
            while poly[0:-m] != [0] * len(poly[0:-m]):
                idx = poly.index(1)
                for j in range(idx, idx+ppLen):
                    poly[j] = poly[j] ^ primitive_poly[j-idx]
            remainder_poly = poly[::-1][0:ppLen-1]
        # add one bit for 2-bit error detection
        x = 1; [x := x ^ y for y in remainder_poly]
        remainder_poly.append(x)
        
        for j in range(ppLen):
            parity_check_matrix[j].append(remainder_poly[j])

    for i in range(ppLen):
        parity_check_matrix[i] += [1] if i == ppLen - 1 else [0]
    
    for i in range(ppLen-1):
        if parity_check_matrix[i][ppLen-1] == 1:
            for j in range(n+1):
                parity_check_matrix[i][j] = parity_check_matrix[i][j] ^ parity_check_matrix[ppLen-1][j]

    return parity_check_matrix

def gen_verilog_code(bitLen, cwdLen, parity_check_matrix):
    verName = "ecc_{0}to{1}".format(bitLen, cwdLen)
    parLen = cwdLen-bitLen
    posLen = math.ceil(math.log(cwdLen, 2))-1
    verFile = open(verName+".v", "w")
    
    # port
    verFile.write("""
//---
//- Author       : W.A                                     
//- Date         : {0}
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
""".format(time.strftime("%A %b-%d-%Y", time.localtime())))
    for i in parity_check_matrix:
        verFile.write("//-  {0}\n".format(i))
    verFile.write("//---\n\n")

    verFile.write("module "+ verName + "(\n")
    verFile.write("  input   wire   [{0}:0]  enc_in,\n".format(bitLen-1))
    verFile.write("  output  wire   [{0}:0]  enc_out,\n".format(cwdLen-1))
    verFile.write("  input   wire   [{0}:0]  dec_in,\n".format(cwdLen-1))
    verFile.write("  output  wire   [{0}:0]  dec_out,\n".format(bitLen-1))
    verFile.write("  output  wire            err_correct,\n")
    verFile.write("  output  wire            err_uncorrect,\n")
    verFile.write("  output  reg    [{0}:0]  err_location\n".format(posLen))
    verFile.write(");\n\n")

    # encode logic
    verFile.write("//- ECC Encode Logic\n")
    verFile.write("wire  [{0}:0]   enc_parity;\n".format(parLen-1))
    for i in range(parLen):
        bchPoly = parity_check_matrix[i][parLen:cwdLen]
        vLogic = "^".join(["enc_in[{0}]".format(j) for j in range(len(bchPoly)) if bchPoly[j] == 1])
        verFile.write("assign enc_parity[{0}] = {1};\n".format(i, vLogic))
        verFile.write("\n")
    verFile.write("assign enc_out = {enc_parity, enc_in};\n\n")
    
    # decode logic
    verFile.write("//- ECC Decode Logic\n")
    verFile.write("wire  [{0}:0]   dec_parity;\n".format(parLen-1))
    for i in range(parLen):
        bchPoly = parity_check_matrix[i][parLen:cwdLen]
        vLogic = "^".join(["dec_in[{0}]".format(j) for j in range(len(bchPoly)) if bchPoly[j] == 1] + ["dec_in[{0}]".format(i+bitLen)])
        verFile.write("assign dec_parity[{0}] = {1};\n".format(i, vLogic))
        verFile.write("\n")
    
    # error location logic
    verFile.write("always @(*) begin\n")
    verFile.write("  case(dec_parity)\n")
    for i in range(cwdLen):
        vLogic = "".join([str(parity_check_matrix[j][i]) for j in range(parLen)][::-1])
        if i < parLen:
            verFile.write("    {0}'b{1}: err_location = {0}'d{2};\n".format(parLen,vLogic,i+bitLen))
        else:
            verFile.write("    {0}'b{1}: err_location = {0}'d{2};\n".format(parLen,vLogic,i-parLen))
    verFile.write("    default: err_location = {0}'d0;\n".format(parLen))
    verFile.write("  endcase\n")
    verFile.write("end\n")
    
    # error bit
    verFile.write("wire  [{0}:0]   err_bit;\n".format(bitLen-1))
    for i in range(cwdLen):
        vLogic = "".join([str(parity_check_matrix[j][i]) for j in range(parLen)][::-1])
        if i > parLen-1:
            verFile.write("assign err_bit[{0}] = (dec_parity == {1}'b{2}) ? 1'b1 : 1'b0;\n".format(i-parLen, parLen,vLogic))
    verFile.write("\n")
    
    # decode output
    verFile.write("assign dec_out = dec_in[{0}:0] ^ err_bit;\n".format(bitLen-1))
    verFile.write("assign err_correct = ^dec_parity;\n")
    verFile.write("assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);\n")
    verFile.write("\n")

    verFile.write("endmodule\n")
    verFile.close()


if __name__ == "__main__":
    # source data length
    bitLen = int(input("Input Source Data Length : "))
    
    # codeword and parity length
    datLen = bitLen
    cwdLen = 1
    while datLen > 0:
        datLen = datLen if cwdLen & (cwdLen - 1) == 0 else datLen -1
        cwdLen += 1
    p = cwdLen - bitLen

    m = math.ceil(math.log(cwdLen, 2))
    n = 2 ** m -1
    k = n - p + 1 
    
    parity_check_matrix = gen_parity_check_matrix(n, k, m)
    gen_verilog_code(bitLen, cwdLen, parity_check_matrix)
