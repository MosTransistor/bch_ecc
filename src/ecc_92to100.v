
//---
//- Author       : W.A                                     
//- Date         : Friday Oct-18-2024
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
//-  [1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1]
//-  [0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0]
//-  [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0]
//-  [0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1]
//-  [0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0]
//-  [0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0]
//-  [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0]
//-  [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1]
//---

module ecc_92to100(
  input   wire   [91:0]  enc_in,
  output  wire   [99:0]  enc_out,
  input   wire   [99:0]  dec_in,
  output  wire   [91:0]  dec_out,
  output  wire            err_correct,
  output  wire            err_uncorrect,
  output  reg    [6:0]  err_location
);

//- ECC Encode Logic
wire  [7:0]   enc_parity;
assign enc_parity[0] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[3]^enc_in[7]^enc_in[12]^enc_in[13]^enc_in[15]^enc_in[18]^enc_in[19]^enc_in[21]^enc_in[22]^enc_in[24]^enc_in[25]^enc_in[26]^enc_in[27]^enc_in[28]^enc_in[29]^enc_in[31]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[36]^enc_in[39]^enc_in[40]^enc_in[41]^enc_in[43]^enc_in[47]^enc_in[49]^enc_in[52]^enc_in[55]^enc_in[56]^enc_in[57]^enc_in[58]^enc_in[59]^enc_in[62]^enc_in[63]^enc_in[66]^enc_in[68]^enc_in[70]^enc_in[71]^enc_in[75]^enc_in[76]^enc_in[81]^enc_in[84]^enc_in[86]^enc_in[87]^enc_in[88]^enc_in[89]^enc_in[91];

assign enc_parity[1] = enc_in[0]^enc_in[4]^enc_in[7]^enc_in[8]^enc_in[12]^enc_in[14]^enc_in[15]^enc_in[16]^enc_in[18]^enc_in[20]^enc_in[21]^enc_in[23]^enc_in[24]^enc_in[30]^enc_in[31]^enc_in[34]^enc_in[35]^enc_in[37]^enc_in[39]^enc_in[42]^enc_in[43]^enc_in[44]^enc_in[47]^enc_in[48]^enc_in[49]^enc_in[50]^enc_in[52]^enc_in[53]^enc_in[55]^enc_in[60]^enc_in[62]^enc_in[64]^enc_in[66]^enc_in[67]^enc_in[68]^enc_in[69]^enc_in[70]^enc_in[72]^enc_in[75]^enc_in[77]^enc_in[81]^enc_in[82]^enc_in[84]^enc_in[85]^enc_in[86]^enc_in[90]^enc_in[91];

assign enc_parity[2] = enc_in[1]^enc_in[5]^enc_in[8]^enc_in[9]^enc_in[13]^enc_in[15]^enc_in[16]^enc_in[17]^enc_in[19]^enc_in[21]^enc_in[22]^enc_in[24]^enc_in[25]^enc_in[31]^enc_in[32]^enc_in[35]^enc_in[36]^enc_in[38]^enc_in[40]^enc_in[43]^enc_in[44]^enc_in[45]^enc_in[48]^enc_in[49]^enc_in[50]^enc_in[51]^enc_in[53]^enc_in[54]^enc_in[56]^enc_in[61]^enc_in[63]^enc_in[65]^enc_in[67]^enc_in[68]^enc_in[69]^enc_in[70]^enc_in[71]^enc_in[73]^enc_in[76]^enc_in[78]^enc_in[82]^enc_in[83]^enc_in[85]^enc_in[86]^enc_in[87]^enc_in[91];

assign enc_parity[3] = enc_in[0]^enc_in[1]^enc_in[3]^enc_in[6]^enc_in[7]^enc_in[9]^enc_in[10]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[16]^enc_in[17]^enc_in[19]^enc_in[20]^enc_in[21]^enc_in[23]^enc_in[24]^enc_in[27]^enc_in[28]^enc_in[29]^enc_in[31]^enc_in[35]^enc_in[37]^enc_in[40]^enc_in[43]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[50]^enc_in[51]^enc_in[54]^enc_in[56]^enc_in[58]^enc_in[59]^enc_in[63]^enc_in[64]^enc_in[69]^enc_in[72]^enc_in[74]^enc_in[75]^enc_in[76]^enc_in[77]^enc_in[79]^enc_in[81]^enc_in[83]^enc_in[89]^enc_in[91];

assign enc_parity[4] = enc_in[0]^enc_in[3]^enc_in[4]^enc_in[8]^enc_in[10]^enc_in[11]^enc_in[12]^enc_in[14]^enc_in[16]^enc_in[17]^enc_in[19]^enc_in[20]^enc_in[26]^enc_in[27]^enc_in[30]^enc_in[31]^enc_in[33]^enc_in[35]^enc_in[38]^enc_in[39]^enc_in[40]^enc_in[43]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[48]^enc_in[49]^enc_in[51]^enc_in[56]^enc_in[58]^enc_in[60]^enc_in[62]^enc_in[63]^enc_in[64]^enc_in[65]^enc_in[66]^enc_in[68]^enc_in[71]^enc_in[73]^enc_in[77]^enc_in[78]^enc_in[80]^enc_in[81]^enc_in[82]^enc_in[86]^enc_in[87]^enc_in[88]^enc_in[89]^enc_in[90]^enc_in[91];

assign enc_parity[5] = enc_in[1]^enc_in[4]^enc_in[5]^enc_in[9]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[15]^enc_in[17]^enc_in[18]^enc_in[20]^enc_in[21]^enc_in[27]^enc_in[28]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[36]^enc_in[39]^enc_in[40]^enc_in[41]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[49]^enc_in[50]^enc_in[52]^enc_in[57]^enc_in[59]^enc_in[61]^enc_in[63]^enc_in[64]^enc_in[65]^enc_in[66]^enc_in[67]^enc_in[69]^enc_in[72]^enc_in[74]^enc_in[78]^enc_in[79]^enc_in[81]^enc_in[82]^enc_in[83]^enc_in[87]^enc_in[88]^enc_in[89]^enc_in[90]^enc_in[91];

assign enc_parity[6] = enc_in[2]^enc_in[5]^enc_in[6]^enc_in[10]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[16]^enc_in[18]^enc_in[19]^enc_in[21]^enc_in[22]^enc_in[28]^enc_in[29]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[37]^enc_in[40]^enc_in[41]^enc_in[42]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[48]^enc_in[50]^enc_in[51]^enc_in[53]^enc_in[58]^enc_in[60]^enc_in[62]^enc_in[64]^enc_in[65]^enc_in[66]^enc_in[67]^enc_in[68]^enc_in[70]^enc_in[73]^enc_in[75]^enc_in[79]^enc_in[80]^enc_in[82]^enc_in[83]^enc_in[84]^enc_in[88]^enc_in[89]^enc_in[90]^enc_in[91];

assign enc_parity[7] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[6]^enc_in[11]^enc_in[12]^enc_in[14]^enc_in[17]^enc_in[18]^enc_in[20]^enc_in[21]^enc_in[23]^enc_in[24]^enc_in[25]^enc_in[26]^enc_in[27]^enc_in[28]^enc_in[30]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[35]^enc_in[38]^enc_in[39]^enc_in[40]^enc_in[42]^enc_in[46]^enc_in[48]^enc_in[51]^enc_in[54]^enc_in[55]^enc_in[56]^enc_in[57]^enc_in[58]^enc_in[61]^enc_in[62]^enc_in[65]^enc_in[67]^enc_in[69]^enc_in[70]^enc_in[74]^enc_in[75]^enc_in[80]^enc_in[83]^enc_in[85]^enc_in[86]^enc_in[87]^enc_in[88]^enc_in[90];

assign enc_out = {enc_parity, enc_in};

//- ECC Decode Logic
wire  [7:0]   dec_parity;
assign dec_parity[0] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[3]^dec_in[7]^dec_in[12]^dec_in[13]^dec_in[15]^dec_in[18]^dec_in[19]^dec_in[21]^dec_in[22]^dec_in[24]^dec_in[25]^dec_in[26]^dec_in[27]^dec_in[28]^dec_in[29]^dec_in[31]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[36]^dec_in[39]^dec_in[40]^dec_in[41]^dec_in[43]^dec_in[47]^dec_in[49]^dec_in[52]^dec_in[55]^dec_in[56]^dec_in[57]^dec_in[58]^dec_in[59]^dec_in[62]^dec_in[63]^dec_in[66]^dec_in[68]^dec_in[70]^dec_in[71]^dec_in[75]^dec_in[76]^dec_in[81]^dec_in[84]^dec_in[86]^dec_in[87]^dec_in[88]^dec_in[89]^dec_in[91]^dec_in[92];

assign dec_parity[1] = dec_in[0]^dec_in[4]^dec_in[7]^dec_in[8]^dec_in[12]^dec_in[14]^dec_in[15]^dec_in[16]^dec_in[18]^dec_in[20]^dec_in[21]^dec_in[23]^dec_in[24]^dec_in[30]^dec_in[31]^dec_in[34]^dec_in[35]^dec_in[37]^dec_in[39]^dec_in[42]^dec_in[43]^dec_in[44]^dec_in[47]^dec_in[48]^dec_in[49]^dec_in[50]^dec_in[52]^dec_in[53]^dec_in[55]^dec_in[60]^dec_in[62]^dec_in[64]^dec_in[66]^dec_in[67]^dec_in[68]^dec_in[69]^dec_in[70]^dec_in[72]^dec_in[75]^dec_in[77]^dec_in[81]^dec_in[82]^dec_in[84]^dec_in[85]^dec_in[86]^dec_in[90]^dec_in[91]^dec_in[93];

assign dec_parity[2] = dec_in[1]^dec_in[5]^dec_in[8]^dec_in[9]^dec_in[13]^dec_in[15]^dec_in[16]^dec_in[17]^dec_in[19]^dec_in[21]^dec_in[22]^dec_in[24]^dec_in[25]^dec_in[31]^dec_in[32]^dec_in[35]^dec_in[36]^dec_in[38]^dec_in[40]^dec_in[43]^dec_in[44]^dec_in[45]^dec_in[48]^dec_in[49]^dec_in[50]^dec_in[51]^dec_in[53]^dec_in[54]^dec_in[56]^dec_in[61]^dec_in[63]^dec_in[65]^dec_in[67]^dec_in[68]^dec_in[69]^dec_in[70]^dec_in[71]^dec_in[73]^dec_in[76]^dec_in[78]^dec_in[82]^dec_in[83]^dec_in[85]^dec_in[86]^dec_in[87]^dec_in[91]^dec_in[94];

assign dec_parity[3] = dec_in[0]^dec_in[1]^dec_in[3]^dec_in[6]^dec_in[7]^dec_in[9]^dec_in[10]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[16]^dec_in[17]^dec_in[19]^dec_in[20]^dec_in[21]^dec_in[23]^dec_in[24]^dec_in[27]^dec_in[28]^dec_in[29]^dec_in[31]^dec_in[35]^dec_in[37]^dec_in[40]^dec_in[43]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[50]^dec_in[51]^dec_in[54]^dec_in[56]^dec_in[58]^dec_in[59]^dec_in[63]^dec_in[64]^dec_in[69]^dec_in[72]^dec_in[74]^dec_in[75]^dec_in[76]^dec_in[77]^dec_in[79]^dec_in[81]^dec_in[83]^dec_in[89]^dec_in[91]^dec_in[95];

assign dec_parity[4] = dec_in[0]^dec_in[3]^dec_in[4]^dec_in[8]^dec_in[10]^dec_in[11]^dec_in[12]^dec_in[14]^dec_in[16]^dec_in[17]^dec_in[19]^dec_in[20]^dec_in[26]^dec_in[27]^dec_in[30]^dec_in[31]^dec_in[33]^dec_in[35]^dec_in[38]^dec_in[39]^dec_in[40]^dec_in[43]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[48]^dec_in[49]^dec_in[51]^dec_in[56]^dec_in[58]^dec_in[60]^dec_in[62]^dec_in[63]^dec_in[64]^dec_in[65]^dec_in[66]^dec_in[68]^dec_in[71]^dec_in[73]^dec_in[77]^dec_in[78]^dec_in[80]^dec_in[81]^dec_in[82]^dec_in[86]^dec_in[87]^dec_in[88]^dec_in[89]^dec_in[90]^dec_in[91]^dec_in[96];

assign dec_parity[5] = dec_in[1]^dec_in[4]^dec_in[5]^dec_in[9]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[15]^dec_in[17]^dec_in[18]^dec_in[20]^dec_in[21]^dec_in[27]^dec_in[28]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[36]^dec_in[39]^dec_in[40]^dec_in[41]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[49]^dec_in[50]^dec_in[52]^dec_in[57]^dec_in[59]^dec_in[61]^dec_in[63]^dec_in[64]^dec_in[65]^dec_in[66]^dec_in[67]^dec_in[69]^dec_in[72]^dec_in[74]^dec_in[78]^dec_in[79]^dec_in[81]^dec_in[82]^dec_in[83]^dec_in[87]^dec_in[88]^dec_in[89]^dec_in[90]^dec_in[91]^dec_in[97];

assign dec_parity[6] = dec_in[2]^dec_in[5]^dec_in[6]^dec_in[10]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[16]^dec_in[18]^dec_in[19]^dec_in[21]^dec_in[22]^dec_in[28]^dec_in[29]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[37]^dec_in[40]^dec_in[41]^dec_in[42]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[48]^dec_in[50]^dec_in[51]^dec_in[53]^dec_in[58]^dec_in[60]^dec_in[62]^dec_in[64]^dec_in[65]^dec_in[66]^dec_in[67]^dec_in[68]^dec_in[70]^dec_in[73]^dec_in[75]^dec_in[79]^dec_in[80]^dec_in[82]^dec_in[83]^dec_in[84]^dec_in[88]^dec_in[89]^dec_in[90]^dec_in[91]^dec_in[98];

assign dec_parity[7] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[6]^dec_in[11]^dec_in[12]^dec_in[14]^dec_in[17]^dec_in[18]^dec_in[20]^dec_in[21]^dec_in[23]^dec_in[24]^dec_in[25]^dec_in[26]^dec_in[27]^dec_in[28]^dec_in[30]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[35]^dec_in[38]^dec_in[39]^dec_in[40]^dec_in[42]^dec_in[46]^dec_in[48]^dec_in[51]^dec_in[54]^dec_in[55]^dec_in[56]^dec_in[57]^dec_in[58]^dec_in[61]^dec_in[62]^dec_in[65]^dec_in[67]^dec_in[69]^dec_in[70]^dec_in[74]^dec_in[75]^dec_in[80]^dec_in[83]^dec_in[85]^dec_in[86]^dec_in[87]^dec_in[88]^dec_in[90]^dec_in[99];

always @(*) begin
  case(dec_parity)
    8'b00000001: err_location = 8'd92;
    8'b00000010: err_location = 8'd93;
    8'b00000100: err_location = 8'd94;
    8'b00001000: err_location = 8'd95;
    8'b00010000: err_location = 8'd96;
    8'b00100000: err_location = 8'd97;
    8'b01000000: err_location = 8'd98;
    8'b10000000: err_location = 8'd99;
    8'b10011011: err_location = 8'd0;
    8'b10101101: err_location = 8'd1;
    8'b11000001: err_location = 8'd2;
    8'b00011001: err_location = 8'd3;
    8'b00110010: err_location = 8'd4;
    8'b01100100: err_location = 8'd5;
    8'b11001000: err_location = 8'd6;
    8'b00001011: err_location = 8'd7;
    8'b00010110: err_location = 8'd8;
    8'b00101100: err_location = 8'd9;
    8'b01011000: err_location = 8'd10;
    8'b10110000: err_location = 8'd11;
    8'b11111011: err_location = 8'd12;
    8'b01101101: err_location = 8'd13;
    8'b11011010: err_location = 8'd14;
    8'b00101111: err_location = 8'd15;
    8'b01011110: err_location = 8'd16;
    8'b10111100: err_location = 8'd17;
    8'b11100011: err_location = 8'd18;
    8'b01011101: err_location = 8'd19;
    8'b10111010: err_location = 8'd20;
    8'b11101111: err_location = 8'd21;
    8'b01000101: err_location = 8'd22;
    8'b10001010: err_location = 8'd23;
    8'b10001111: err_location = 8'd24;
    8'b10000101: err_location = 8'd25;
    8'b10010001: err_location = 8'd26;
    8'b10111001: err_location = 8'd27;
    8'b11101001: err_location = 8'd28;
    8'b01001001: err_location = 8'd29;
    8'b10010010: err_location = 8'd30;
    8'b10111111: err_location = 8'd31;
    8'b11100101: err_location = 8'd32;
    8'b01010001: err_location = 8'd33;
    8'b10100010: err_location = 8'd34;
    8'b11011111: err_location = 8'd35;
    8'b00100101: err_location = 8'd36;
    8'b01001010: err_location = 8'd37;
    8'b10010100: err_location = 8'd38;
    8'b10110011: err_location = 8'd39;
    8'b11111101: err_location = 8'd40;
    8'b01100001: err_location = 8'd41;
    8'b11000010: err_location = 8'd42;
    8'b00011111: err_location = 8'd43;
    8'b00111110: err_location = 8'd44;
    8'b01111100: err_location = 8'd45;
    8'b11111000: err_location = 8'd46;
    8'b01101011: err_location = 8'd47;
    8'b11010110: err_location = 8'd48;
    8'b00110111: err_location = 8'd49;
    8'b01101110: err_location = 8'd50;
    8'b11011100: err_location = 8'd51;
    8'b00100011: err_location = 8'd52;
    8'b01000110: err_location = 8'd53;
    8'b10001100: err_location = 8'd54;
    8'b10000011: err_location = 8'd55;
    8'b10011101: err_location = 8'd56;
    8'b10100001: err_location = 8'd57;
    8'b11011001: err_location = 8'd58;
    8'b00101001: err_location = 8'd59;
    8'b01010010: err_location = 8'd60;
    8'b10100100: err_location = 8'd61;
    8'b11010011: err_location = 8'd62;
    8'b00111101: err_location = 8'd63;
    8'b01111010: err_location = 8'd64;
    8'b11110100: err_location = 8'd65;
    8'b01110011: err_location = 8'd66;
    8'b11100110: err_location = 8'd67;
    8'b01010111: err_location = 8'd68;
    8'b10101110: err_location = 8'd69;
    8'b11000111: err_location = 8'd70;
    8'b00010101: err_location = 8'd71;
    8'b00101010: err_location = 8'd72;
    8'b01010100: err_location = 8'd73;
    8'b10101000: err_location = 8'd74;
    8'b11001011: err_location = 8'd75;
    8'b00001101: err_location = 8'd76;
    8'b00011010: err_location = 8'd77;
    8'b00110100: err_location = 8'd78;
    8'b01101000: err_location = 8'd79;
    8'b11010000: err_location = 8'd80;
    8'b00111011: err_location = 8'd81;
    8'b01110110: err_location = 8'd82;
    8'b11101100: err_location = 8'd83;
    8'b01000011: err_location = 8'd84;
    8'b10000110: err_location = 8'd85;
    8'b10010111: err_location = 8'd86;
    8'b10110101: err_location = 8'd87;
    8'b11110001: err_location = 8'd88;
    8'b01111001: err_location = 8'd89;
    8'b11110010: err_location = 8'd90;
    8'b01111111: err_location = 8'd91;
    default: err_location = 8'd0;
  endcase
end
wire  [91:0]   err_bit;
assign err_bit[0] = (dec_parity == 8'b10011011) ? 1'b1 : 1'b0;
assign err_bit[1] = (dec_parity == 8'b10101101) ? 1'b1 : 1'b0;
assign err_bit[2] = (dec_parity == 8'b11000001) ? 1'b1 : 1'b0;
assign err_bit[3] = (dec_parity == 8'b00011001) ? 1'b1 : 1'b0;
assign err_bit[4] = (dec_parity == 8'b00110010) ? 1'b1 : 1'b0;
assign err_bit[5] = (dec_parity == 8'b01100100) ? 1'b1 : 1'b0;
assign err_bit[6] = (dec_parity == 8'b11001000) ? 1'b1 : 1'b0;
assign err_bit[7] = (dec_parity == 8'b00001011) ? 1'b1 : 1'b0;
assign err_bit[8] = (dec_parity == 8'b00010110) ? 1'b1 : 1'b0;
assign err_bit[9] = (dec_parity == 8'b00101100) ? 1'b1 : 1'b0;
assign err_bit[10] = (dec_parity == 8'b01011000) ? 1'b1 : 1'b0;
assign err_bit[11] = (dec_parity == 8'b10110000) ? 1'b1 : 1'b0;
assign err_bit[12] = (dec_parity == 8'b11111011) ? 1'b1 : 1'b0;
assign err_bit[13] = (dec_parity == 8'b01101101) ? 1'b1 : 1'b0;
assign err_bit[14] = (dec_parity == 8'b11011010) ? 1'b1 : 1'b0;
assign err_bit[15] = (dec_parity == 8'b00101111) ? 1'b1 : 1'b0;
assign err_bit[16] = (dec_parity == 8'b01011110) ? 1'b1 : 1'b0;
assign err_bit[17] = (dec_parity == 8'b10111100) ? 1'b1 : 1'b0;
assign err_bit[18] = (dec_parity == 8'b11100011) ? 1'b1 : 1'b0;
assign err_bit[19] = (dec_parity == 8'b01011101) ? 1'b1 : 1'b0;
assign err_bit[20] = (dec_parity == 8'b10111010) ? 1'b1 : 1'b0;
assign err_bit[21] = (dec_parity == 8'b11101111) ? 1'b1 : 1'b0;
assign err_bit[22] = (dec_parity == 8'b01000101) ? 1'b1 : 1'b0;
assign err_bit[23] = (dec_parity == 8'b10001010) ? 1'b1 : 1'b0;
assign err_bit[24] = (dec_parity == 8'b10001111) ? 1'b1 : 1'b0;
assign err_bit[25] = (dec_parity == 8'b10000101) ? 1'b1 : 1'b0;
assign err_bit[26] = (dec_parity == 8'b10010001) ? 1'b1 : 1'b0;
assign err_bit[27] = (dec_parity == 8'b10111001) ? 1'b1 : 1'b0;
assign err_bit[28] = (dec_parity == 8'b11101001) ? 1'b1 : 1'b0;
assign err_bit[29] = (dec_parity == 8'b01001001) ? 1'b1 : 1'b0;
assign err_bit[30] = (dec_parity == 8'b10010010) ? 1'b1 : 1'b0;
assign err_bit[31] = (dec_parity == 8'b10111111) ? 1'b1 : 1'b0;
assign err_bit[32] = (dec_parity == 8'b11100101) ? 1'b1 : 1'b0;
assign err_bit[33] = (dec_parity == 8'b01010001) ? 1'b1 : 1'b0;
assign err_bit[34] = (dec_parity == 8'b10100010) ? 1'b1 : 1'b0;
assign err_bit[35] = (dec_parity == 8'b11011111) ? 1'b1 : 1'b0;
assign err_bit[36] = (dec_parity == 8'b00100101) ? 1'b1 : 1'b0;
assign err_bit[37] = (dec_parity == 8'b01001010) ? 1'b1 : 1'b0;
assign err_bit[38] = (dec_parity == 8'b10010100) ? 1'b1 : 1'b0;
assign err_bit[39] = (dec_parity == 8'b10110011) ? 1'b1 : 1'b0;
assign err_bit[40] = (dec_parity == 8'b11111101) ? 1'b1 : 1'b0;
assign err_bit[41] = (dec_parity == 8'b01100001) ? 1'b1 : 1'b0;
assign err_bit[42] = (dec_parity == 8'b11000010) ? 1'b1 : 1'b0;
assign err_bit[43] = (dec_parity == 8'b00011111) ? 1'b1 : 1'b0;
assign err_bit[44] = (dec_parity == 8'b00111110) ? 1'b1 : 1'b0;
assign err_bit[45] = (dec_parity == 8'b01111100) ? 1'b1 : 1'b0;
assign err_bit[46] = (dec_parity == 8'b11111000) ? 1'b1 : 1'b0;
assign err_bit[47] = (dec_parity == 8'b01101011) ? 1'b1 : 1'b0;
assign err_bit[48] = (dec_parity == 8'b11010110) ? 1'b1 : 1'b0;
assign err_bit[49] = (dec_parity == 8'b00110111) ? 1'b1 : 1'b0;
assign err_bit[50] = (dec_parity == 8'b01101110) ? 1'b1 : 1'b0;
assign err_bit[51] = (dec_parity == 8'b11011100) ? 1'b1 : 1'b0;
assign err_bit[52] = (dec_parity == 8'b00100011) ? 1'b1 : 1'b0;
assign err_bit[53] = (dec_parity == 8'b01000110) ? 1'b1 : 1'b0;
assign err_bit[54] = (dec_parity == 8'b10001100) ? 1'b1 : 1'b0;
assign err_bit[55] = (dec_parity == 8'b10000011) ? 1'b1 : 1'b0;
assign err_bit[56] = (dec_parity == 8'b10011101) ? 1'b1 : 1'b0;
assign err_bit[57] = (dec_parity == 8'b10100001) ? 1'b1 : 1'b0;
assign err_bit[58] = (dec_parity == 8'b11011001) ? 1'b1 : 1'b0;
assign err_bit[59] = (dec_parity == 8'b00101001) ? 1'b1 : 1'b0;
assign err_bit[60] = (dec_parity == 8'b01010010) ? 1'b1 : 1'b0;
assign err_bit[61] = (dec_parity == 8'b10100100) ? 1'b1 : 1'b0;
assign err_bit[62] = (dec_parity == 8'b11010011) ? 1'b1 : 1'b0;
assign err_bit[63] = (dec_parity == 8'b00111101) ? 1'b1 : 1'b0;
assign err_bit[64] = (dec_parity == 8'b01111010) ? 1'b1 : 1'b0;
assign err_bit[65] = (dec_parity == 8'b11110100) ? 1'b1 : 1'b0;
assign err_bit[66] = (dec_parity == 8'b01110011) ? 1'b1 : 1'b0;
assign err_bit[67] = (dec_parity == 8'b11100110) ? 1'b1 : 1'b0;
assign err_bit[68] = (dec_parity == 8'b01010111) ? 1'b1 : 1'b0;
assign err_bit[69] = (dec_parity == 8'b10101110) ? 1'b1 : 1'b0;
assign err_bit[70] = (dec_parity == 8'b11000111) ? 1'b1 : 1'b0;
assign err_bit[71] = (dec_parity == 8'b00010101) ? 1'b1 : 1'b0;
assign err_bit[72] = (dec_parity == 8'b00101010) ? 1'b1 : 1'b0;
assign err_bit[73] = (dec_parity == 8'b01010100) ? 1'b1 : 1'b0;
assign err_bit[74] = (dec_parity == 8'b10101000) ? 1'b1 : 1'b0;
assign err_bit[75] = (dec_parity == 8'b11001011) ? 1'b1 : 1'b0;
assign err_bit[76] = (dec_parity == 8'b00001101) ? 1'b1 : 1'b0;
assign err_bit[77] = (dec_parity == 8'b00011010) ? 1'b1 : 1'b0;
assign err_bit[78] = (dec_parity == 8'b00110100) ? 1'b1 : 1'b0;
assign err_bit[79] = (dec_parity == 8'b01101000) ? 1'b1 : 1'b0;
assign err_bit[80] = (dec_parity == 8'b11010000) ? 1'b1 : 1'b0;
assign err_bit[81] = (dec_parity == 8'b00111011) ? 1'b1 : 1'b0;
assign err_bit[82] = (dec_parity == 8'b01110110) ? 1'b1 : 1'b0;
assign err_bit[83] = (dec_parity == 8'b11101100) ? 1'b1 : 1'b0;
assign err_bit[84] = (dec_parity == 8'b01000011) ? 1'b1 : 1'b0;
assign err_bit[85] = (dec_parity == 8'b10000110) ? 1'b1 : 1'b0;
assign err_bit[86] = (dec_parity == 8'b10010111) ? 1'b1 : 1'b0;
assign err_bit[87] = (dec_parity == 8'b10110101) ? 1'b1 : 1'b0;
assign err_bit[88] = (dec_parity == 8'b11110001) ? 1'b1 : 1'b0;
assign err_bit[89] = (dec_parity == 8'b01111001) ? 1'b1 : 1'b0;
assign err_bit[90] = (dec_parity == 8'b11110010) ? 1'b1 : 1'b0;
assign err_bit[91] = (dec_parity == 8'b01111111) ? 1'b1 : 1'b0;

assign dec_out = dec_in[91:0] ^ err_bit;
assign err_correct = ^dec_parity;
assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);

endmodule
