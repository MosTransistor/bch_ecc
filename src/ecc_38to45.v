
//---
//- Author       : W.A                                     
//- Date         : Friday Oct-18-2024
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
//-  [1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1]
//-  [0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1]
//-  [0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0]
//-  [0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0]
//-  [0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0]
//-  [0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0]
//-  [0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1]
//---

module ecc_38to45(
  input   wire   [37:0]  enc_in,
  output  wire   [44:0]  enc_out,
  input   wire   [44:0]  dec_in,
  output  wire   [37:0]  dec_out,
  output  wire            err_correct,
  output  wire            err_uncorrect,
  output  reg    [5:0]  err_location
);

//- ECC Encode Logic
wire  [6:0]   enc_parity;
assign enc_parity[0] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[3]^enc_in[4]^enc_in[6]^enc_in[7]^enc_in[8]^enc_in[9]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[16]^enc_in[18]^enc_in[19]^enc_in[24]^enc_in[26]^enc_in[27]^enc_in[28]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[36];

assign enc_parity[1] = enc_in[1]^enc_in[2]^enc_in[3]^enc_in[4]^enc_in[5]^enc_in[7]^enc_in[8]^enc_in[9]^enc_in[10]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[17]^enc_in[19]^enc_in[20]^enc_in[25]^enc_in[27]^enc_in[28]^enc_in[29]^enc_in[33]^enc_in[34]^enc_in[36]^enc_in[37];

assign enc_parity[2] = enc_in[0]^enc_in[1]^enc_in[5]^enc_in[7]^enc_in[10]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[15]^enc_in[19]^enc_in[20]^enc_in[21]^enc_in[24]^enc_in[27]^enc_in[29]^enc_in[30]^enc_in[32]^enc_in[33]^enc_in[34]^enc_in[36]^enc_in[37];

assign enc_parity[3] = enc_in[1]^enc_in[2]^enc_in[6]^enc_in[8]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[16]^enc_in[20]^enc_in[21]^enc_in[22]^enc_in[25]^enc_in[28]^enc_in[30]^enc_in[31]^enc_in[33]^enc_in[34]^enc_in[35]^enc_in[37];

assign enc_parity[4] = enc_in[2]^enc_in[3]^enc_in[7]^enc_in[9]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[17]^enc_in[21]^enc_in[22]^enc_in[23]^enc_in[26]^enc_in[29]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[35]^enc_in[36];

assign enc_parity[5] = enc_in[3]^enc_in[4]^enc_in[8]^enc_in[10]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[16]^enc_in[18]^enc_in[22]^enc_in[23]^enc_in[24]^enc_in[27]^enc_in[30]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[36]^enc_in[37];

assign enc_parity[6] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[3]^enc_in[5]^enc_in[6]^enc_in[7]^enc_in[8]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[15]^enc_in[17]^enc_in[18]^enc_in[23]^enc_in[25]^enc_in[26]^enc_in[27]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[35]^enc_in[37];

assign enc_out = {enc_parity, enc_in};

//- ECC Decode Logic
wire  [6:0]   dec_parity;
assign dec_parity[0] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[3]^dec_in[4]^dec_in[6]^dec_in[7]^dec_in[8]^dec_in[9]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[16]^dec_in[18]^dec_in[19]^dec_in[24]^dec_in[26]^dec_in[27]^dec_in[28]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[36]^dec_in[38];

assign dec_parity[1] = dec_in[1]^dec_in[2]^dec_in[3]^dec_in[4]^dec_in[5]^dec_in[7]^dec_in[8]^dec_in[9]^dec_in[10]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[17]^dec_in[19]^dec_in[20]^dec_in[25]^dec_in[27]^dec_in[28]^dec_in[29]^dec_in[33]^dec_in[34]^dec_in[36]^dec_in[37]^dec_in[39];

assign dec_parity[2] = dec_in[0]^dec_in[1]^dec_in[5]^dec_in[7]^dec_in[10]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[15]^dec_in[19]^dec_in[20]^dec_in[21]^dec_in[24]^dec_in[27]^dec_in[29]^dec_in[30]^dec_in[32]^dec_in[33]^dec_in[34]^dec_in[36]^dec_in[37]^dec_in[40];

assign dec_parity[3] = dec_in[1]^dec_in[2]^dec_in[6]^dec_in[8]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[16]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[25]^dec_in[28]^dec_in[30]^dec_in[31]^dec_in[33]^dec_in[34]^dec_in[35]^dec_in[37]^dec_in[41];

assign dec_parity[4] = dec_in[2]^dec_in[3]^dec_in[7]^dec_in[9]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[17]^dec_in[21]^dec_in[22]^dec_in[23]^dec_in[26]^dec_in[29]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[35]^dec_in[36]^dec_in[42];

assign dec_parity[5] = dec_in[3]^dec_in[4]^dec_in[8]^dec_in[10]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[16]^dec_in[18]^dec_in[22]^dec_in[23]^dec_in[24]^dec_in[27]^dec_in[30]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[36]^dec_in[37]^dec_in[43];

assign dec_parity[6] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[3]^dec_in[5]^dec_in[6]^dec_in[7]^dec_in[8]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[15]^dec_in[17]^dec_in[18]^dec_in[23]^dec_in[25]^dec_in[26]^dec_in[27]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[35]^dec_in[37]^dec_in[44];

always @(*) begin
  case(dec_parity)
    7'b0000001: err_location = 7'd38;
    7'b0000010: err_location = 7'd39;
    7'b0000100: err_location = 7'd40;
    7'b0001000: err_location = 7'd41;
    7'b0010000: err_location = 7'd42;
    7'b0100000: err_location = 7'd43;
    7'b1000000: err_location = 7'd44;
    7'b1000101: err_location = 7'd0;
    7'b1001111: err_location = 7'd1;
    7'b1011011: err_location = 7'd2;
    7'b1110011: err_location = 7'd3;
    7'b0100011: err_location = 7'd4;
    7'b1000110: err_location = 7'd5;
    7'b1001001: err_location = 7'd6;
    7'b1010111: err_location = 7'd7;
    7'b1101011: err_location = 7'd8;
    7'b0010011: err_location = 7'd9;
    7'b0100110: err_location = 7'd10;
    7'b1001100: err_location = 7'd11;
    7'b1011101: err_location = 7'd12;
    7'b1111111: err_location = 7'd13;
    7'b0111011: err_location = 7'd14;
    7'b1110110: err_location = 7'd15;
    7'b0101001: err_location = 7'd16;
    7'b1010010: err_location = 7'd17;
    7'b1100001: err_location = 7'd18;
    7'b0000111: err_location = 7'd19;
    7'b0001110: err_location = 7'd20;
    7'b0011100: err_location = 7'd21;
    7'b0111000: err_location = 7'd22;
    7'b1110000: err_location = 7'd23;
    7'b0100101: err_location = 7'd24;
    7'b1001010: err_location = 7'd25;
    7'b1010001: err_location = 7'd26;
    7'b1100111: err_location = 7'd27;
    7'b0001011: err_location = 7'd28;
    7'b0010110: err_location = 7'd29;
    7'b0101100: err_location = 7'd30;
    7'b1011000: err_location = 7'd31;
    7'b1110101: err_location = 7'd32;
    7'b0101111: err_location = 7'd33;
    7'b1011110: err_location = 7'd34;
    7'b1111001: err_location = 7'd35;
    7'b0110111: err_location = 7'd36;
    7'b1101110: err_location = 7'd37;
    default: err_location = 7'd0;
  endcase
end
wire  [37:0]   err_bit;
assign err_bit[0] = (dec_parity == 7'b1000101) ? 1'b1 : 1'b0;
assign err_bit[1] = (dec_parity == 7'b1001111) ? 1'b1 : 1'b0;
assign err_bit[2] = (dec_parity == 7'b1011011) ? 1'b1 : 1'b0;
assign err_bit[3] = (dec_parity == 7'b1110011) ? 1'b1 : 1'b0;
assign err_bit[4] = (dec_parity == 7'b0100011) ? 1'b1 : 1'b0;
assign err_bit[5] = (dec_parity == 7'b1000110) ? 1'b1 : 1'b0;
assign err_bit[6] = (dec_parity == 7'b1001001) ? 1'b1 : 1'b0;
assign err_bit[7] = (dec_parity == 7'b1010111) ? 1'b1 : 1'b0;
assign err_bit[8] = (dec_parity == 7'b1101011) ? 1'b1 : 1'b0;
assign err_bit[9] = (dec_parity == 7'b0010011) ? 1'b1 : 1'b0;
assign err_bit[10] = (dec_parity == 7'b0100110) ? 1'b1 : 1'b0;
assign err_bit[11] = (dec_parity == 7'b1001100) ? 1'b1 : 1'b0;
assign err_bit[12] = (dec_parity == 7'b1011101) ? 1'b1 : 1'b0;
assign err_bit[13] = (dec_parity == 7'b1111111) ? 1'b1 : 1'b0;
assign err_bit[14] = (dec_parity == 7'b0111011) ? 1'b1 : 1'b0;
assign err_bit[15] = (dec_parity == 7'b1110110) ? 1'b1 : 1'b0;
assign err_bit[16] = (dec_parity == 7'b0101001) ? 1'b1 : 1'b0;
assign err_bit[17] = (dec_parity == 7'b1010010) ? 1'b1 : 1'b0;
assign err_bit[18] = (dec_parity == 7'b1100001) ? 1'b1 : 1'b0;
assign err_bit[19] = (dec_parity == 7'b0000111) ? 1'b1 : 1'b0;
assign err_bit[20] = (dec_parity == 7'b0001110) ? 1'b1 : 1'b0;
assign err_bit[21] = (dec_parity == 7'b0011100) ? 1'b1 : 1'b0;
assign err_bit[22] = (dec_parity == 7'b0111000) ? 1'b1 : 1'b0;
assign err_bit[23] = (dec_parity == 7'b1110000) ? 1'b1 : 1'b0;
assign err_bit[24] = (dec_parity == 7'b0100101) ? 1'b1 : 1'b0;
assign err_bit[25] = (dec_parity == 7'b1001010) ? 1'b1 : 1'b0;
assign err_bit[26] = (dec_parity == 7'b1010001) ? 1'b1 : 1'b0;
assign err_bit[27] = (dec_parity == 7'b1100111) ? 1'b1 : 1'b0;
assign err_bit[28] = (dec_parity == 7'b0001011) ? 1'b1 : 1'b0;
assign err_bit[29] = (dec_parity == 7'b0010110) ? 1'b1 : 1'b0;
assign err_bit[30] = (dec_parity == 7'b0101100) ? 1'b1 : 1'b0;
assign err_bit[31] = (dec_parity == 7'b1011000) ? 1'b1 : 1'b0;
assign err_bit[32] = (dec_parity == 7'b1110101) ? 1'b1 : 1'b0;
assign err_bit[33] = (dec_parity == 7'b0101111) ? 1'b1 : 1'b0;
assign err_bit[34] = (dec_parity == 7'b1011110) ? 1'b1 : 1'b0;
assign err_bit[35] = (dec_parity == 7'b1111001) ? 1'b1 : 1'b0;
assign err_bit[36] = (dec_parity == 7'b0110111) ? 1'b1 : 1'b0;
assign err_bit[37] = (dec_parity == 7'b1101110) ? 1'b1 : 1'b0;

assign dec_out = dec_in[37:0] ^ err_bit;
assign err_correct = ^dec_parity;
assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);

endmodule
