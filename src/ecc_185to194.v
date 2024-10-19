
//---
//- Author       : W.A                                     
//- Date         : Friday Oct-18-2024
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
//-  [1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1]
//-  [0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0]
//-  [0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1]
//-  [0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1]
//-  [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 1]
//-  [0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0]
//-  [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0]
//-  [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 0]
//-  [0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1]
//---

module ecc_185to194(
  input   wire   [184:0]  enc_in,
  output  wire   [193:0]  enc_out,
  input   wire   [193:0]  dec_in,
  output  wire   [184:0]  dec_out,
  output  wire            err_correct,
  output  wire            err_uncorrect,
  output  reg    [7:0]  err_location
);

//- ECC Encode Logic
wire  [8:0]   enc_parity;
assign enc_parity[0] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[3]^enc_in[5]^enc_in[10]^enc_in[11]^enc_in[12]^enc_in[15]^enc_in[17]^enc_in[18]^enc_in[19]^enc_in[20]^enc_in[21]^enc_in[22]^enc_in[23]^enc_in[25]^enc_in[26]^enc_in[27]^enc_in[31]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[36]^enc_in[38]^enc_in[42]^enc_in[43]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[50]^enc_in[51]^enc_in[53]^enc_in[54]^enc_in[56]^enc_in[57]^enc_in[60]^enc_in[64]^enc_in[65]^enc_in[67]^enc_in[68]^enc_in[69]^enc_in[70]^enc_in[71]^enc_in[73]^enc_in[75]^enc_in[78]^enc_in[81]^enc_in[83]^enc_in[86]^enc_in[87]^enc_in[89]^enc_in[92]^enc_in[93]^enc_in[94]^enc_in[95]^enc_in[101]^enc_in[104]^enc_in[109]^enc_in[111]^enc_in[115]^enc_in[117]^enc_in[118]^enc_in[119]^enc_in[121]^enc_in[122]^enc_in[123]^enc_in[124]^enc_in[127]^enc_in[130]^enc_in[131]^enc_in[132]^enc_in[137]^enc_in[138]^enc_in[142]^enc_in[143]^enc_in[146]^enc_in[147]^enc_in[148]^enc_in[150]^enc_in[153]^enc_in[155]^enc_in[156]^enc_in[158]^enc_in[159]^enc_in[160]^enc_in[162]^enc_in[164]^enc_in[165]^enc_in[167]^enc_in[169]^enc_in[171]^enc_in[172]^enc_in[176]^enc_in[180]^enc_in[183]^enc_in[184];

assign enc_parity[1] = enc_in[0]^enc_in[4]^enc_in[5]^enc_in[6]^enc_in[10]^enc_in[13]^enc_in[15]^enc_in[16]^enc_in[17]^enc_in[24]^enc_in[25]^enc_in[28]^enc_in[31]^enc_in[34]^enc_in[35]^enc_in[37]^enc_in[38]^enc_in[39]^enc_in[42]^enc_in[48]^enc_in[50]^enc_in[52]^enc_in[53]^enc_in[55]^enc_in[56]^enc_in[58]^enc_in[60]^enc_in[61]^enc_in[64]^enc_in[66]^enc_in[67]^enc_in[72]^enc_in[73]^enc_in[74]^enc_in[75]^enc_in[76]^enc_in[78]^enc_in[79]^enc_in[81]^enc_in[82]^enc_in[83]^enc_in[84]^enc_in[86]^enc_in[88]^enc_in[89]^enc_in[90]^enc_in[92]^enc_in[96]^enc_in[101]^enc_in[102]^enc_in[104]^enc_in[105]^enc_in[109]^enc_in[110]^enc_in[111]^enc_in[112]^enc_in[115]^enc_in[116]^enc_in[117]^enc_in[120]^enc_in[121]^enc_in[125]^enc_in[127]^enc_in[128]^enc_in[130]^enc_in[133]^enc_in[137]^enc_in[139]^enc_in[142]^enc_in[144]^enc_in[146]^enc_in[149]^enc_in[150]^enc_in[151]^enc_in[153]^enc_in[154]^enc_in[155]^enc_in[157]^enc_in[158]^enc_in[161]^enc_in[162]^enc_in[163]^enc_in[164]^enc_in[166]^enc_in[167]^enc_in[168]^enc_in[169]^enc_in[170]^enc_in[171]^enc_in[173]^enc_in[176]^enc_in[177]^enc_in[180]^enc_in[181]^enc_in[183];

assign enc_parity[2] = enc_in[0]^enc_in[2]^enc_in[3]^enc_in[6]^enc_in[7]^enc_in[10]^enc_in[12]^enc_in[14]^enc_in[15]^enc_in[16]^enc_in[19]^enc_in[20]^enc_in[21]^enc_in[22]^enc_in[23]^enc_in[27]^enc_in[29]^enc_in[31]^enc_in[33]^enc_in[39]^enc_in[40]^enc_in[42]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[49]^enc_in[50]^enc_in[59]^enc_in[60]^enc_in[61]^enc_in[62]^enc_in[64]^enc_in[69]^enc_in[70]^enc_in[71]^enc_in[74]^enc_in[76]^enc_in[77]^enc_in[78]^enc_in[79]^enc_in[80]^enc_in[81]^enc_in[82]^enc_in[84]^enc_in[85]^enc_in[86]^enc_in[90]^enc_in[91]^enc_in[92]^enc_in[94]^enc_in[95]^enc_in[97]^enc_in[101]^enc_in[102]^enc_in[103]^enc_in[104]^enc_in[105]^enc_in[106]^enc_in[109]^enc_in[110]^enc_in[112]^enc_in[113]^enc_in[115]^enc_in[116]^enc_in[119]^enc_in[123]^enc_in[124]^enc_in[126]^enc_in[127]^enc_in[128]^enc_in[129]^enc_in[130]^enc_in[132]^enc_in[134]^enc_in[137]^enc_in[140]^enc_in[142]^enc_in[145]^enc_in[146]^enc_in[148]^enc_in[151]^enc_in[152]^enc_in[153]^enc_in[154]^enc_in[160]^enc_in[163]^enc_in[168]^enc_in[170]^enc_in[174]^enc_in[176]^enc_in[177]^enc_in[178]^enc_in[180]^enc_in[181]^enc_in[182]^enc_in[183];

assign enc_parity[3] = enc_in[1]^enc_in[3]^enc_in[4]^enc_in[7]^enc_in[8]^enc_in[11]^enc_in[13]^enc_in[15]^enc_in[16]^enc_in[17]^enc_in[20]^enc_in[21]^enc_in[22]^enc_in[23]^enc_in[24]^enc_in[28]^enc_in[30]^enc_in[32]^enc_in[34]^enc_in[40]^enc_in[41]^enc_in[43]^enc_in[45]^enc_in[46]^enc_in[47]^enc_in[48]^enc_in[50]^enc_in[51]^enc_in[60]^enc_in[61]^enc_in[62]^enc_in[63]^enc_in[65]^enc_in[70]^enc_in[71]^enc_in[72]^enc_in[75]^enc_in[77]^enc_in[78]^enc_in[79]^enc_in[80]^enc_in[81]^enc_in[82]^enc_in[83]^enc_in[85]^enc_in[86]^enc_in[87]^enc_in[91]^enc_in[92]^enc_in[93]^enc_in[95]^enc_in[96]^enc_in[98]^enc_in[102]^enc_in[103]^enc_in[104]^enc_in[105]^enc_in[106]^enc_in[107]^enc_in[110]^enc_in[111]^enc_in[113]^enc_in[114]^enc_in[116]^enc_in[117]^enc_in[120]^enc_in[124]^enc_in[125]^enc_in[127]^enc_in[128]^enc_in[129]^enc_in[130]^enc_in[131]^enc_in[133]^enc_in[135]^enc_in[138]^enc_in[141]^enc_in[143]^enc_in[146]^enc_in[147]^enc_in[149]^enc_in[152]^enc_in[153]^enc_in[154]^enc_in[155]^enc_in[161]^enc_in[164]^enc_in[169]^enc_in[171]^enc_in[175]^enc_in[177]^enc_in[178]^enc_in[179]^enc_in[181]^enc_in[182]^enc_in[183]^enc_in[184];

assign enc_parity[4] = enc_in[2]^enc_in[4]^enc_in[5]^enc_in[8]^enc_in[9]^enc_in[12]^enc_in[14]^enc_in[16]^enc_in[17]^enc_in[18]^enc_in[21]^enc_in[22]^enc_in[23]^enc_in[24]^enc_in[25]^enc_in[29]^enc_in[31]^enc_in[33]^enc_in[35]^enc_in[41]^enc_in[42]^enc_in[44]^enc_in[46]^enc_in[47]^enc_in[48]^enc_in[49]^enc_in[51]^enc_in[52]^enc_in[61]^enc_in[62]^enc_in[63]^enc_in[64]^enc_in[66]^enc_in[71]^enc_in[72]^enc_in[73]^enc_in[76]^enc_in[78]^enc_in[79]^enc_in[80]^enc_in[81]^enc_in[82]^enc_in[83]^enc_in[84]^enc_in[86]^enc_in[87]^enc_in[88]^enc_in[92]^enc_in[93]^enc_in[94]^enc_in[96]^enc_in[97]^enc_in[99]^enc_in[103]^enc_in[104]^enc_in[105]^enc_in[106]^enc_in[107]^enc_in[108]^enc_in[111]^enc_in[112]^enc_in[114]^enc_in[115]^enc_in[117]^enc_in[118]^enc_in[121]^enc_in[125]^enc_in[126]^enc_in[128]^enc_in[129]^enc_in[130]^enc_in[131]^enc_in[132]^enc_in[134]^enc_in[136]^enc_in[139]^enc_in[142]^enc_in[144]^enc_in[147]^enc_in[148]^enc_in[150]^enc_in[153]^enc_in[154]^enc_in[155]^enc_in[156]^enc_in[162]^enc_in[165]^enc_in[170]^enc_in[172]^enc_in[176]^enc_in[178]^enc_in[179]^enc_in[180]^enc_in[182]^enc_in[183]^enc_in[184];

assign enc_parity[5] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[6]^enc_in[9]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[20]^enc_in[21]^enc_in[24]^enc_in[27]^enc_in[30]^enc_in[31]^enc_in[33]^enc_in[34]^enc_in[35]^enc_in[38]^enc_in[44]^enc_in[46]^enc_in[48]^enc_in[49]^enc_in[51]^enc_in[52]^enc_in[54]^enc_in[56]^enc_in[57]^enc_in[60]^enc_in[62]^enc_in[63]^enc_in[68]^enc_in[69]^enc_in[70]^enc_in[71]^enc_in[72]^enc_in[74]^enc_in[75]^enc_in[77]^enc_in[78]^enc_in[79]^enc_in[80]^enc_in[82]^enc_in[84]^enc_in[85]^enc_in[86]^enc_in[88]^enc_in[92]^enc_in[97]^enc_in[98]^enc_in[100]^enc_in[101]^enc_in[105]^enc_in[106]^enc_in[107]^enc_in[108]^enc_in[111]^enc_in[112]^enc_in[113]^enc_in[116]^enc_in[117]^enc_in[121]^enc_in[123]^enc_in[124]^enc_in[126]^enc_in[129]^enc_in[133]^enc_in[135]^enc_in[138]^enc_in[140]^enc_in[142]^enc_in[145]^enc_in[146]^enc_in[147]^enc_in[149]^enc_in[150]^enc_in[151]^enc_in[153]^enc_in[154]^enc_in[157]^enc_in[158]^enc_in[159]^enc_in[160]^enc_in[162]^enc_in[163]^enc_in[164]^enc_in[165]^enc_in[166]^enc_in[167]^enc_in[169]^enc_in[172]^enc_in[173]^enc_in[176]^enc_in[177]^enc_in[179]^enc_in[181];

assign enc_parity[6] = enc_in[1]^enc_in[2]^enc_in[3]^enc_in[7]^enc_in[10]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[21]^enc_in[22]^enc_in[25]^enc_in[28]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[35]^enc_in[36]^enc_in[39]^enc_in[45]^enc_in[47]^enc_in[49]^enc_in[50]^enc_in[52]^enc_in[53]^enc_in[55]^enc_in[57]^enc_in[58]^enc_in[61]^enc_in[63]^enc_in[64]^enc_in[69]^enc_in[70]^enc_in[71]^enc_in[72]^enc_in[73]^enc_in[75]^enc_in[76]^enc_in[78]^enc_in[79]^enc_in[80]^enc_in[81]^enc_in[83]^enc_in[85]^enc_in[86]^enc_in[87]^enc_in[89]^enc_in[93]^enc_in[98]^enc_in[99]^enc_in[101]^enc_in[102]^enc_in[106]^enc_in[107]^enc_in[108]^enc_in[109]^enc_in[112]^enc_in[113]^enc_in[114]^enc_in[117]^enc_in[118]^enc_in[122]^enc_in[124]^enc_in[125]^enc_in[127]^enc_in[130]^enc_in[134]^enc_in[136]^enc_in[139]^enc_in[141]^enc_in[143]^enc_in[146]^enc_in[147]^enc_in[148]^enc_in[150]^enc_in[151]^enc_in[152]^enc_in[154]^enc_in[155]^enc_in[158]^enc_in[159]^enc_in[160]^enc_in[161]^enc_in[163]^enc_in[164]^enc_in[165]^enc_in[166]^enc_in[167]^enc_in[168]^enc_in[170]^enc_in[173]^enc_in[174]^enc_in[177]^enc_in[178]^enc_in[180]^enc_in[182];

assign enc_parity[7] = enc_in[2]^enc_in[3]^enc_in[4]^enc_in[8]^enc_in[11]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[22]^enc_in[23]^enc_in[26]^enc_in[29]^enc_in[32]^enc_in[33]^enc_in[35]^enc_in[36]^enc_in[37]^enc_in[40]^enc_in[46]^enc_in[48]^enc_in[50]^enc_in[51]^enc_in[53]^enc_in[54]^enc_in[56]^enc_in[58]^enc_in[59]^enc_in[62]^enc_in[64]^enc_in[65]^enc_in[70]^enc_in[71]^enc_in[72]^enc_in[73]^enc_in[74]^enc_in[76]^enc_in[77]^enc_in[79]^enc_in[80]^enc_in[81]^enc_in[82]^enc_in[84]^enc_in[86]^enc_in[87]^enc_in[88]^enc_in[90]^enc_in[94]^enc_in[99]^enc_in[100]^enc_in[102]^enc_in[103]^enc_in[107]^enc_in[108]^enc_in[109]^enc_in[110]^enc_in[113]^enc_in[114]^enc_in[115]^enc_in[118]^enc_in[119]^enc_in[123]^enc_in[125]^enc_in[126]^enc_in[128]^enc_in[131]^enc_in[135]^enc_in[137]^enc_in[140]^enc_in[142]^enc_in[144]^enc_in[147]^enc_in[148]^enc_in[149]^enc_in[151]^enc_in[152]^enc_in[153]^enc_in[155]^enc_in[156]^enc_in[159]^enc_in[160]^enc_in[161]^enc_in[162]^enc_in[164]^enc_in[165]^enc_in[166]^enc_in[167]^enc_in[168]^enc_in[169]^enc_in[171]^enc_in[174]^enc_in[175]^enc_in[178]^enc_in[179]^enc_in[181]^enc_in[183];

assign enc_parity[8] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[4]^enc_in[9]^enc_in[10]^enc_in[11]^enc_in[14]^enc_in[16]^enc_in[17]^enc_in[18]^enc_in[19]^enc_in[20]^enc_in[21]^enc_in[22]^enc_in[24]^enc_in[25]^enc_in[26]^enc_in[30]^enc_in[31]^enc_in[32]^enc_in[34]^enc_in[35]^enc_in[37]^enc_in[41]^enc_in[42]^enc_in[43]^enc_in[44]^enc_in[45]^enc_in[46]^enc_in[49]^enc_in[50]^enc_in[52]^enc_in[53]^enc_in[55]^enc_in[56]^enc_in[59]^enc_in[63]^enc_in[64]^enc_in[66]^enc_in[67]^enc_in[68]^enc_in[69]^enc_in[70]^enc_in[72]^enc_in[74]^enc_in[77]^enc_in[80]^enc_in[82]^enc_in[85]^enc_in[86]^enc_in[88]^enc_in[91]^enc_in[92]^enc_in[93]^enc_in[94]^enc_in[100]^enc_in[103]^enc_in[108]^enc_in[110]^enc_in[114]^enc_in[116]^enc_in[117]^enc_in[118]^enc_in[120]^enc_in[121]^enc_in[122]^enc_in[123]^enc_in[126]^enc_in[129]^enc_in[130]^enc_in[131]^enc_in[136]^enc_in[137]^enc_in[141]^enc_in[142]^enc_in[145]^enc_in[146]^enc_in[147]^enc_in[149]^enc_in[152]^enc_in[154]^enc_in[155]^enc_in[157]^enc_in[158]^enc_in[159]^enc_in[161]^enc_in[163]^enc_in[164]^enc_in[166]^enc_in[168]^enc_in[170]^enc_in[171]^enc_in[175]^enc_in[179]^enc_in[182]^enc_in[183];

assign enc_out = {enc_parity, enc_in};

//- ECC Decode Logic
wire  [8:0]   dec_parity;
assign dec_parity[0] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[3]^dec_in[5]^dec_in[10]^dec_in[11]^dec_in[12]^dec_in[15]^dec_in[17]^dec_in[18]^dec_in[19]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[23]^dec_in[25]^dec_in[26]^dec_in[27]^dec_in[31]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[36]^dec_in[38]^dec_in[42]^dec_in[43]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[50]^dec_in[51]^dec_in[53]^dec_in[54]^dec_in[56]^dec_in[57]^dec_in[60]^dec_in[64]^dec_in[65]^dec_in[67]^dec_in[68]^dec_in[69]^dec_in[70]^dec_in[71]^dec_in[73]^dec_in[75]^dec_in[78]^dec_in[81]^dec_in[83]^dec_in[86]^dec_in[87]^dec_in[89]^dec_in[92]^dec_in[93]^dec_in[94]^dec_in[95]^dec_in[101]^dec_in[104]^dec_in[109]^dec_in[111]^dec_in[115]^dec_in[117]^dec_in[118]^dec_in[119]^dec_in[121]^dec_in[122]^dec_in[123]^dec_in[124]^dec_in[127]^dec_in[130]^dec_in[131]^dec_in[132]^dec_in[137]^dec_in[138]^dec_in[142]^dec_in[143]^dec_in[146]^dec_in[147]^dec_in[148]^dec_in[150]^dec_in[153]^dec_in[155]^dec_in[156]^dec_in[158]^dec_in[159]^dec_in[160]^dec_in[162]^dec_in[164]^dec_in[165]^dec_in[167]^dec_in[169]^dec_in[171]^dec_in[172]^dec_in[176]^dec_in[180]^dec_in[183]^dec_in[184]^dec_in[185];

assign dec_parity[1] = dec_in[0]^dec_in[4]^dec_in[5]^dec_in[6]^dec_in[10]^dec_in[13]^dec_in[15]^dec_in[16]^dec_in[17]^dec_in[24]^dec_in[25]^dec_in[28]^dec_in[31]^dec_in[34]^dec_in[35]^dec_in[37]^dec_in[38]^dec_in[39]^dec_in[42]^dec_in[48]^dec_in[50]^dec_in[52]^dec_in[53]^dec_in[55]^dec_in[56]^dec_in[58]^dec_in[60]^dec_in[61]^dec_in[64]^dec_in[66]^dec_in[67]^dec_in[72]^dec_in[73]^dec_in[74]^dec_in[75]^dec_in[76]^dec_in[78]^dec_in[79]^dec_in[81]^dec_in[82]^dec_in[83]^dec_in[84]^dec_in[86]^dec_in[88]^dec_in[89]^dec_in[90]^dec_in[92]^dec_in[96]^dec_in[101]^dec_in[102]^dec_in[104]^dec_in[105]^dec_in[109]^dec_in[110]^dec_in[111]^dec_in[112]^dec_in[115]^dec_in[116]^dec_in[117]^dec_in[120]^dec_in[121]^dec_in[125]^dec_in[127]^dec_in[128]^dec_in[130]^dec_in[133]^dec_in[137]^dec_in[139]^dec_in[142]^dec_in[144]^dec_in[146]^dec_in[149]^dec_in[150]^dec_in[151]^dec_in[153]^dec_in[154]^dec_in[155]^dec_in[157]^dec_in[158]^dec_in[161]^dec_in[162]^dec_in[163]^dec_in[164]^dec_in[166]^dec_in[167]^dec_in[168]^dec_in[169]^dec_in[170]^dec_in[171]^dec_in[173]^dec_in[176]^dec_in[177]^dec_in[180]^dec_in[181]^dec_in[183]^dec_in[186];

assign dec_parity[2] = dec_in[0]^dec_in[2]^dec_in[3]^dec_in[6]^dec_in[7]^dec_in[10]^dec_in[12]^dec_in[14]^dec_in[15]^dec_in[16]^dec_in[19]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[23]^dec_in[27]^dec_in[29]^dec_in[31]^dec_in[33]^dec_in[39]^dec_in[40]^dec_in[42]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[49]^dec_in[50]^dec_in[59]^dec_in[60]^dec_in[61]^dec_in[62]^dec_in[64]^dec_in[69]^dec_in[70]^dec_in[71]^dec_in[74]^dec_in[76]^dec_in[77]^dec_in[78]^dec_in[79]^dec_in[80]^dec_in[81]^dec_in[82]^dec_in[84]^dec_in[85]^dec_in[86]^dec_in[90]^dec_in[91]^dec_in[92]^dec_in[94]^dec_in[95]^dec_in[97]^dec_in[101]^dec_in[102]^dec_in[103]^dec_in[104]^dec_in[105]^dec_in[106]^dec_in[109]^dec_in[110]^dec_in[112]^dec_in[113]^dec_in[115]^dec_in[116]^dec_in[119]^dec_in[123]^dec_in[124]^dec_in[126]^dec_in[127]^dec_in[128]^dec_in[129]^dec_in[130]^dec_in[132]^dec_in[134]^dec_in[137]^dec_in[140]^dec_in[142]^dec_in[145]^dec_in[146]^dec_in[148]^dec_in[151]^dec_in[152]^dec_in[153]^dec_in[154]^dec_in[160]^dec_in[163]^dec_in[168]^dec_in[170]^dec_in[174]^dec_in[176]^dec_in[177]^dec_in[178]^dec_in[180]^dec_in[181]^dec_in[182]^dec_in[183]^dec_in[187];

assign dec_parity[3] = dec_in[1]^dec_in[3]^dec_in[4]^dec_in[7]^dec_in[8]^dec_in[11]^dec_in[13]^dec_in[15]^dec_in[16]^dec_in[17]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[23]^dec_in[24]^dec_in[28]^dec_in[30]^dec_in[32]^dec_in[34]^dec_in[40]^dec_in[41]^dec_in[43]^dec_in[45]^dec_in[46]^dec_in[47]^dec_in[48]^dec_in[50]^dec_in[51]^dec_in[60]^dec_in[61]^dec_in[62]^dec_in[63]^dec_in[65]^dec_in[70]^dec_in[71]^dec_in[72]^dec_in[75]^dec_in[77]^dec_in[78]^dec_in[79]^dec_in[80]^dec_in[81]^dec_in[82]^dec_in[83]^dec_in[85]^dec_in[86]^dec_in[87]^dec_in[91]^dec_in[92]^dec_in[93]^dec_in[95]^dec_in[96]^dec_in[98]^dec_in[102]^dec_in[103]^dec_in[104]^dec_in[105]^dec_in[106]^dec_in[107]^dec_in[110]^dec_in[111]^dec_in[113]^dec_in[114]^dec_in[116]^dec_in[117]^dec_in[120]^dec_in[124]^dec_in[125]^dec_in[127]^dec_in[128]^dec_in[129]^dec_in[130]^dec_in[131]^dec_in[133]^dec_in[135]^dec_in[138]^dec_in[141]^dec_in[143]^dec_in[146]^dec_in[147]^dec_in[149]^dec_in[152]^dec_in[153]^dec_in[154]^dec_in[155]^dec_in[161]^dec_in[164]^dec_in[169]^dec_in[171]^dec_in[175]^dec_in[177]^dec_in[178]^dec_in[179]^dec_in[181]^dec_in[182]^dec_in[183]^dec_in[184]^dec_in[188];

assign dec_parity[4] = dec_in[2]^dec_in[4]^dec_in[5]^dec_in[8]^dec_in[9]^dec_in[12]^dec_in[14]^dec_in[16]^dec_in[17]^dec_in[18]^dec_in[21]^dec_in[22]^dec_in[23]^dec_in[24]^dec_in[25]^dec_in[29]^dec_in[31]^dec_in[33]^dec_in[35]^dec_in[41]^dec_in[42]^dec_in[44]^dec_in[46]^dec_in[47]^dec_in[48]^dec_in[49]^dec_in[51]^dec_in[52]^dec_in[61]^dec_in[62]^dec_in[63]^dec_in[64]^dec_in[66]^dec_in[71]^dec_in[72]^dec_in[73]^dec_in[76]^dec_in[78]^dec_in[79]^dec_in[80]^dec_in[81]^dec_in[82]^dec_in[83]^dec_in[84]^dec_in[86]^dec_in[87]^dec_in[88]^dec_in[92]^dec_in[93]^dec_in[94]^dec_in[96]^dec_in[97]^dec_in[99]^dec_in[103]^dec_in[104]^dec_in[105]^dec_in[106]^dec_in[107]^dec_in[108]^dec_in[111]^dec_in[112]^dec_in[114]^dec_in[115]^dec_in[117]^dec_in[118]^dec_in[121]^dec_in[125]^dec_in[126]^dec_in[128]^dec_in[129]^dec_in[130]^dec_in[131]^dec_in[132]^dec_in[134]^dec_in[136]^dec_in[139]^dec_in[142]^dec_in[144]^dec_in[147]^dec_in[148]^dec_in[150]^dec_in[153]^dec_in[154]^dec_in[155]^dec_in[156]^dec_in[162]^dec_in[165]^dec_in[170]^dec_in[172]^dec_in[176]^dec_in[178]^dec_in[179]^dec_in[180]^dec_in[182]^dec_in[183]^dec_in[184]^dec_in[189];

assign dec_parity[5] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[6]^dec_in[9]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[20]^dec_in[21]^dec_in[24]^dec_in[27]^dec_in[30]^dec_in[31]^dec_in[33]^dec_in[34]^dec_in[35]^dec_in[38]^dec_in[44]^dec_in[46]^dec_in[48]^dec_in[49]^dec_in[51]^dec_in[52]^dec_in[54]^dec_in[56]^dec_in[57]^dec_in[60]^dec_in[62]^dec_in[63]^dec_in[68]^dec_in[69]^dec_in[70]^dec_in[71]^dec_in[72]^dec_in[74]^dec_in[75]^dec_in[77]^dec_in[78]^dec_in[79]^dec_in[80]^dec_in[82]^dec_in[84]^dec_in[85]^dec_in[86]^dec_in[88]^dec_in[92]^dec_in[97]^dec_in[98]^dec_in[100]^dec_in[101]^dec_in[105]^dec_in[106]^dec_in[107]^dec_in[108]^dec_in[111]^dec_in[112]^dec_in[113]^dec_in[116]^dec_in[117]^dec_in[121]^dec_in[123]^dec_in[124]^dec_in[126]^dec_in[129]^dec_in[133]^dec_in[135]^dec_in[138]^dec_in[140]^dec_in[142]^dec_in[145]^dec_in[146]^dec_in[147]^dec_in[149]^dec_in[150]^dec_in[151]^dec_in[153]^dec_in[154]^dec_in[157]^dec_in[158]^dec_in[159]^dec_in[160]^dec_in[162]^dec_in[163]^dec_in[164]^dec_in[165]^dec_in[166]^dec_in[167]^dec_in[169]^dec_in[172]^dec_in[173]^dec_in[176]^dec_in[177]^dec_in[179]^dec_in[181]^dec_in[190];

assign dec_parity[6] = dec_in[1]^dec_in[2]^dec_in[3]^dec_in[7]^dec_in[10]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[21]^dec_in[22]^dec_in[25]^dec_in[28]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[35]^dec_in[36]^dec_in[39]^dec_in[45]^dec_in[47]^dec_in[49]^dec_in[50]^dec_in[52]^dec_in[53]^dec_in[55]^dec_in[57]^dec_in[58]^dec_in[61]^dec_in[63]^dec_in[64]^dec_in[69]^dec_in[70]^dec_in[71]^dec_in[72]^dec_in[73]^dec_in[75]^dec_in[76]^dec_in[78]^dec_in[79]^dec_in[80]^dec_in[81]^dec_in[83]^dec_in[85]^dec_in[86]^dec_in[87]^dec_in[89]^dec_in[93]^dec_in[98]^dec_in[99]^dec_in[101]^dec_in[102]^dec_in[106]^dec_in[107]^dec_in[108]^dec_in[109]^dec_in[112]^dec_in[113]^dec_in[114]^dec_in[117]^dec_in[118]^dec_in[122]^dec_in[124]^dec_in[125]^dec_in[127]^dec_in[130]^dec_in[134]^dec_in[136]^dec_in[139]^dec_in[141]^dec_in[143]^dec_in[146]^dec_in[147]^dec_in[148]^dec_in[150]^dec_in[151]^dec_in[152]^dec_in[154]^dec_in[155]^dec_in[158]^dec_in[159]^dec_in[160]^dec_in[161]^dec_in[163]^dec_in[164]^dec_in[165]^dec_in[166]^dec_in[167]^dec_in[168]^dec_in[170]^dec_in[173]^dec_in[174]^dec_in[177]^dec_in[178]^dec_in[180]^dec_in[182]^dec_in[191];

assign dec_parity[7] = dec_in[2]^dec_in[3]^dec_in[4]^dec_in[8]^dec_in[11]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[22]^dec_in[23]^dec_in[26]^dec_in[29]^dec_in[32]^dec_in[33]^dec_in[35]^dec_in[36]^dec_in[37]^dec_in[40]^dec_in[46]^dec_in[48]^dec_in[50]^dec_in[51]^dec_in[53]^dec_in[54]^dec_in[56]^dec_in[58]^dec_in[59]^dec_in[62]^dec_in[64]^dec_in[65]^dec_in[70]^dec_in[71]^dec_in[72]^dec_in[73]^dec_in[74]^dec_in[76]^dec_in[77]^dec_in[79]^dec_in[80]^dec_in[81]^dec_in[82]^dec_in[84]^dec_in[86]^dec_in[87]^dec_in[88]^dec_in[90]^dec_in[94]^dec_in[99]^dec_in[100]^dec_in[102]^dec_in[103]^dec_in[107]^dec_in[108]^dec_in[109]^dec_in[110]^dec_in[113]^dec_in[114]^dec_in[115]^dec_in[118]^dec_in[119]^dec_in[123]^dec_in[125]^dec_in[126]^dec_in[128]^dec_in[131]^dec_in[135]^dec_in[137]^dec_in[140]^dec_in[142]^dec_in[144]^dec_in[147]^dec_in[148]^dec_in[149]^dec_in[151]^dec_in[152]^dec_in[153]^dec_in[155]^dec_in[156]^dec_in[159]^dec_in[160]^dec_in[161]^dec_in[162]^dec_in[164]^dec_in[165]^dec_in[166]^dec_in[167]^dec_in[168]^dec_in[169]^dec_in[171]^dec_in[174]^dec_in[175]^dec_in[178]^dec_in[179]^dec_in[181]^dec_in[183]^dec_in[192];

assign dec_parity[8] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[4]^dec_in[9]^dec_in[10]^dec_in[11]^dec_in[14]^dec_in[16]^dec_in[17]^dec_in[18]^dec_in[19]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[24]^dec_in[25]^dec_in[26]^dec_in[30]^dec_in[31]^dec_in[32]^dec_in[34]^dec_in[35]^dec_in[37]^dec_in[41]^dec_in[42]^dec_in[43]^dec_in[44]^dec_in[45]^dec_in[46]^dec_in[49]^dec_in[50]^dec_in[52]^dec_in[53]^dec_in[55]^dec_in[56]^dec_in[59]^dec_in[63]^dec_in[64]^dec_in[66]^dec_in[67]^dec_in[68]^dec_in[69]^dec_in[70]^dec_in[72]^dec_in[74]^dec_in[77]^dec_in[80]^dec_in[82]^dec_in[85]^dec_in[86]^dec_in[88]^dec_in[91]^dec_in[92]^dec_in[93]^dec_in[94]^dec_in[100]^dec_in[103]^dec_in[108]^dec_in[110]^dec_in[114]^dec_in[116]^dec_in[117]^dec_in[118]^dec_in[120]^dec_in[121]^dec_in[122]^dec_in[123]^dec_in[126]^dec_in[129]^dec_in[130]^dec_in[131]^dec_in[136]^dec_in[137]^dec_in[141]^dec_in[142]^dec_in[145]^dec_in[146]^dec_in[147]^dec_in[149]^dec_in[152]^dec_in[154]^dec_in[155]^dec_in[157]^dec_in[158]^dec_in[159]^dec_in[161]^dec_in[163]^dec_in[164]^dec_in[166]^dec_in[168]^dec_in[170]^dec_in[171]^dec_in[175]^dec_in[179]^dec_in[182]^dec_in[183]^dec_in[193];

always @(*) begin
  case(dec_parity)
    9'b000000001: err_location = 9'd185;
    9'b000000010: err_location = 9'd186;
    9'b000000100: err_location = 9'd187;
    9'b000001000: err_location = 9'd188;
    9'b000010000: err_location = 9'd189;
    9'b000100000: err_location = 9'd190;
    9'b001000000: err_location = 9'd191;
    9'b010000000: err_location = 9'd192;
    9'b100000000: err_location = 9'd193;
    9'b100100111: err_location = 9'd0;
    9'b101101001: err_location = 9'd1;
    9'b111110101: err_location = 9'd2;
    9'b011001101: err_location = 9'd3;
    9'b110011010: err_location = 9'd4;
    9'b000010011: err_location = 9'd5;
    9'b000100110: err_location = 9'd6;
    9'b001001100: err_location = 9'd7;
    9'b010011000: err_location = 9'd8;
    9'b100110000: err_location = 9'd9;
    9'b101000111: err_location = 9'd10;
    9'b110101001: err_location = 9'd11;
    9'b001110101: err_location = 9'd12;
    9'b011101010: err_location = 9'd13;
    9'b111010100: err_location = 9'd14;
    9'b010001111: err_location = 9'd15;
    9'b100011110: err_location = 9'd16;
    9'b100011011: err_location = 9'd17;
    9'b100010001: err_location = 9'd18;
    9'b100000101: err_location = 9'd19;
    9'b100101101: err_location = 9'd20;
    9'b101111101: err_location = 9'd21;
    9'b111011101: err_location = 9'd22;
    9'b010011101: err_location = 9'd23;
    9'b100111010: err_location = 9'd24;
    9'b101010011: err_location = 9'd25;
    9'b110000001: err_location = 9'd26;
    9'b000100101: err_location = 9'd27;
    9'b001001010: err_location = 9'd28;
    9'b010010100: err_location = 9'd29;
    9'b100101000: err_location = 9'd30;
    9'b101110111: err_location = 9'd31;
    9'b111001001: err_location = 9'd32;
    9'b010110101: err_location = 9'd33;
    9'b101101010: err_location = 9'd34;
    9'b111110011: err_location = 9'd35;
    9'b011000001: err_location = 9'd36;
    9'b110000010: err_location = 9'd37;
    9'b000100011: err_location = 9'd38;
    9'b001000110: err_location = 9'd39;
    9'b010001100: err_location = 9'd40;
    9'b100011000: err_location = 9'd41;
    9'b100010111: err_location = 9'd42;
    9'b100001001: err_location = 9'd43;
    9'b100110101: err_location = 9'd44;
    9'b101001101: err_location = 9'd45;
    9'b110111101: err_location = 9'd46;
    9'b001011101: err_location = 9'd47;
    9'b010111010: err_location = 9'd48;
    9'b101110100: err_location = 9'd49;
    9'b111001111: err_location = 9'd50;
    9'b010111001: err_location = 9'd51;
    9'b101110010: err_location = 9'd52;
    9'b111000011: err_location = 9'd53;
    9'b010100001: err_location = 9'd54;
    9'b101000010: err_location = 9'd55;
    9'b110100011: err_location = 9'd56;
    9'b001100001: err_location = 9'd57;
    9'b011000010: err_location = 9'd58;
    9'b110000100: err_location = 9'd59;
    9'b000101111: err_location = 9'd60;
    9'b001011110: err_location = 9'd61;
    9'b010111100: err_location = 9'd62;
    9'b101111000: err_location = 9'd63;
    9'b111010111: err_location = 9'd64;
    9'b010001001: err_location = 9'd65;
    9'b100010010: err_location = 9'd66;
    9'b100000011: err_location = 9'd67;
    9'b100100001: err_location = 9'd68;
    9'b101100101: err_location = 9'd69;
    9'b111101101: err_location = 9'd70;
    9'b011111101: err_location = 9'd71;
    9'b111111010: err_location = 9'd72;
    9'b011010011: err_location = 9'd73;
    9'b110100110: err_location = 9'd74;
    9'b001101011: err_location = 9'd75;
    9'b011010110: err_location = 9'd76;
    9'b110101100: err_location = 9'd77;
    9'b001111111: err_location = 9'd78;
    9'b011111110: err_location = 9'd79;
    9'b111111100: err_location = 9'd80;
    9'b011011111: err_location = 9'd81;
    9'b110111110: err_location = 9'd82;
    9'b001011011: err_location = 9'd83;
    9'b010110110: err_location = 9'd84;
    9'b101101100: err_location = 9'd85;
    9'b111111111: err_location = 9'd86;
    9'b011011001: err_location = 9'd87;
    9'b110110010: err_location = 9'd88;
    9'b001000011: err_location = 9'd89;
    9'b010000110: err_location = 9'd90;
    9'b100001100: err_location = 9'd91;
    9'b100111111: err_location = 9'd92;
    9'b101011001: err_location = 9'd93;
    9'b110010101: err_location = 9'd94;
    9'b000001101: err_location = 9'd95;
    9'b000011010: err_location = 9'd96;
    9'b000110100: err_location = 9'd97;
    9'b001101000: err_location = 9'd98;
    9'b011010000: err_location = 9'd99;
    9'b110100000: err_location = 9'd100;
    9'b001100111: err_location = 9'd101;
    9'b011001110: err_location = 9'd102;
    9'b110011100: err_location = 9'd103;
    9'b000011111: err_location = 9'd104;
    9'b000111110: err_location = 9'd105;
    9'b001111100: err_location = 9'd106;
    9'b011111000: err_location = 9'd107;
    9'b111110000: err_location = 9'd108;
    9'b011000111: err_location = 9'd109;
    9'b110001110: err_location = 9'd110;
    9'b000111011: err_location = 9'd111;
    9'b001110110: err_location = 9'd112;
    9'b011101100: err_location = 9'd113;
    9'b111011000: err_location = 9'd114;
    9'b010010111: err_location = 9'd115;
    9'b100101110: err_location = 9'd116;
    9'b101111011: err_location = 9'd117;
    9'b111010001: err_location = 9'd118;
    9'b010000101: err_location = 9'd119;
    9'b100001010: err_location = 9'd120;
    9'b100110011: err_location = 9'd121;
    9'b101000001: err_location = 9'd122;
    9'b110100101: err_location = 9'd123;
    9'b001101101: err_location = 9'd124;
    9'b011011010: err_location = 9'd125;
    9'b110110100: err_location = 9'd126;
    9'b001001111: err_location = 9'd127;
    9'b010011110: err_location = 9'd128;
    9'b100111100: err_location = 9'd129;
    9'b101011111: err_location = 9'd130;
    9'b110011001: err_location = 9'd131;
    9'b000010101: err_location = 9'd132;
    9'b000101010: err_location = 9'd133;
    9'b001010100: err_location = 9'd134;
    9'b010101000: err_location = 9'd135;
    9'b101010000: err_location = 9'd136;
    9'b110000111: err_location = 9'd137;
    9'b000101001: err_location = 9'd138;
    9'b001010010: err_location = 9'd139;
    9'b010100100: err_location = 9'd140;
    9'b101001000: err_location = 9'd141;
    9'b110110111: err_location = 9'd142;
    9'b001001001: err_location = 9'd143;
    9'b010010010: err_location = 9'd144;
    9'b100100100: err_location = 9'd145;
    9'b101101111: err_location = 9'd146;
    9'b111111001: err_location = 9'd147;
    9'b011010101: err_location = 9'd148;
    9'b110101010: err_location = 9'd149;
    9'b001110011: err_location = 9'd150;
    9'b011100110: err_location = 9'd151;
    9'b111001100: err_location = 9'd152;
    9'b010111111: err_location = 9'd153;
    9'b101111110: err_location = 9'd154;
    9'b111011011: err_location = 9'd155;
    9'b010010001: err_location = 9'd156;
    9'b100100010: err_location = 9'd157;
    9'b101100011: err_location = 9'd158;
    9'b111100001: err_location = 9'd159;
    9'b011100101: err_location = 9'd160;
    9'b111001010: err_location = 9'd161;
    9'b010110011: err_location = 9'd162;
    9'b101100110: err_location = 9'd163;
    9'b111101011: err_location = 9'd164;
    9'b011110001: err_location = 9'd165;
    9'b111100010: err_location = 9'd166;
    9'b011100011: err_location = 9'd167;
    9'b111000110: err_location = 9'd168;
    9'b010101011: err_location = 9'd169;
    9'b101010110: err_location = 9'd170;
    9'b110001011: err_location = 9'd171;
    9'b000110001: err_location = 9'd172;
    9'b001100010: err_location = 9'd173;
    9'b011000100: err_location = 9'd174;
    9'b110001000: err_location = 9'd175;
    9'b000110111: err_location = 9'd176;
    9'b001101110: err_location = 9'd177;
    9'b011011100: err_location = 9'd178;
    9'b110111000: err_location = 9'd179;
    9'b001010111: err_location = 9'd180;
    9'b010101110: err_location = 9'd181;
    9'b101011100: err_location = 9'd182;
    9'b110011111: err_location = 9'd183;
    9'b000011001: err_location = 9'd184;
    default: err_location = 9'd0;
  endcase
end
wire  [184:0]   err_bit;
assign err_bit[0] = (dec_parity == 9'b100100111) ? 1'b1 : 1'b0;
assign err_bit[1] = (dec_parity == 9'b101101001) ? 1'b1 : 1'b0;
assign err_bit[2] = (dec_parity == 9'b111110101) ? 1'b1 : 1'b0;
assign err_bit[3] = (dec_parity == 9'b011001101) ? 1'b1 : 1'b0;
assign err_bit[4] = (dec_parity == 9'b110011010) ? 1'b1 : 1'b0;
assign err_bit[5] = (dec_parity == 9'b000010011) ? 1'b1 : 1'b0;
assign err_bit[6] = (dec_parity == 9'b000100110) ? 1'b1 : 1'b0;
assign err_bit[7] = (dec_parity == 9'b001001100) ? 1'b1 : 1'b0;
assign err_bit[8] = (dec_parity == 9'b010011000) ? 1'b1 : 1'b0;
assign err_bit[9] = (dec_parity == 9'b100110000) ? 1'b1 : 1'b0;
assign err_bit[10] = (dec_parity == 9'b101000111) ? 1'b1 : 1'b0;
assign err_bit[11] = (dec_parity == 9'b110101001) ? 1'b1 : 1'b0;
assign err_bit[12] = (dec_parity == 9'b001110101) ? 1'b1 : 1'b0;
assign err_bit[13] = (dec_parity == 9'b011101010) ? 1'b1 : 1'b0;
assign err_bit[14] = (dec_parity == 9'b111010100) ? 1'b1 : 1'b0;
assign err_bit[15] = (dec_parity == 9'b010001111) ? 1'b1 : 1'b0;
assign err_bit[16] = (dec_parity == 9'b100011110) ? 1'b1 : 1'b0;
assign err_bit[17] = (dec_parity == 9'b100011011) ? 1'b1 : 1'b0;
assign err_bit[18] = (dec_parity == 9'b100010001) ? 1'b1 : 1'b0;
assign err_bit[19] = (dec_parity == 9'b100000101) ? 1'b1 : 1'b0;
assign err_bit[20] = (dec_parity == 9'b100101101) ? 1'b1 : 1'b0;
assign err_bit[21] = (dec_parity == 9'b101111101) ? 1'b1 : 1'b0;
assign err_bit[22] = (dec_parity == 9'b111011101) ? 1'b1 : 1'b0;
assign err_bit[23] = (dec_parity == 9'b010011101) ? 1'b1 : 1'b0;
assign err_bit[24] = (dec_parity == 9'b100111010) ? 1'b1 : 1'b0;
assign err_bit[25] = (dec_parity == 9'b101010011) ? 1'b1 : 1'b0;
assign err_bit[26] = (dec_parity == 9'b110000001) ? 1'b1 : 1'b0;
assign err_bit[27] = (dec_parity == 9'b000100101) ? 1'b1 : 1'b0;
assign err_bit[28] = (dec_parity == 9'b001001010) ? 1'b1 : 1'b0;
assign err_bit[29] = (dec_parity == 9'b010010100) ? 1'b1 : 1'b0;
assign err_bit[30] = (dec_parity == 9'b100101000) ? 1'b1 : 1'b0;
assign err_bit[31] = (dec_parity == 9'b101110111) ? 1'b1 : 1'b0;
assign err_bit[32] = (dec_parity == 9'b111001001) ? 1'b1 : 1'b0;
assign err_bit[33] = (dec_parity == 9'b010110101) ? 1'b1 : 1'b0;
assign err_bit[34] = (dec_parity == 9'b101101010) ? 1'b1 : 1'b0;
assign err_bit[35] = (dec_parity == 9'b111110011) ? 1'b1 : 1'b0;
assign err_bit[36] = (dec_parity == 9'b011000001) ? 1'b1 : 1'b0;
assign err_bit[37] = (dec_parity == 9'b110000010) ? 1'b1 : 1'b0;
assign err_bit[38] = (dec_parity == 9'b000100011) ? 1'b1 : 1'b0;
assign err_bit[39] = (dec_parity == 9'b001000110) ? 1'b1 : 1'b0;
assign err_bit[40] = (dec_parity == 9'b010001100) ? 1'b1 : 1'b0;
assign err_bit[41] = (dec_parity == 9'b100011000) ? 1'b1 : 1'b0;
assign err_bit[42] = (dec_parity == 9'b100010111) ? 1'b1 : 1'b0;
assign err_bit[43] = (dec_parity == 9'b100001001) ? 1'b1 : 1'b0;
assign err_bit[44] = (dec_parity == 9'b100110101) ? 1'b1 : 1'b0;
assign err_bit[45] = (dec_parity == 9'b101001101) ? 1'b1 : 1'b0;
assign err_bit[46] = (dec_parity == 9'b110111101) ? 1'b1 : 1'b0;
assign err_bit[47] = (dec_parity == 9'b001011101) ? 1'b1 : 1'b0;
assign err_bit[48] = (dec_parity == 9'b010111010) ? 1'b1 : 1'b0;
assign err_bit[49] = (dec_parity == 9'b101110100) ? 1'b1 : 1'b0;
assign err_bit[50] = (dec_parity == 9'b111001111) ? 1'b1 : 1'b0;
assign err_bit[51] = (dec_parity == 9'b010111001) ? 1'b1 : 1'b0;
assign err_bit[52] = (dec_parity == 9'b101110010) ? 1'b1 : 1'b0;
assign err_bit[53] = (dec_parity == 9'b111000011) ? 1'b1 : 1'b0;
assign err_bit[54] = (dec_parity == 9'b010100001) ? 1'b1 : 1'b0;
assign err_bit[55] = (dec_parity == 9'b101000010) ? 1'b1 : 1'b0;
assign err_bit[56] = (dec_parity == 9'b110100011) ? 1'b1 : 1'b0;
assign err_bit[57] = (dec_parity == 9'b001100001) ? 1'b1 : 1'b0;
assign err_bit[58] = (dec_parity == 9'b011000010) ? 1'b1 : 1'b0;
assign err_bit[59] = (dec_parity == 9'b110000100) ? 1'b1 : 1'b0;
assign err_bit[60] = (dec_parity == 9'b000101111) ? 1'b1 : 1'b0;
assign err_bit[61] = (dec_parity == 9'b001011110) ? 1'b1 : 1'b0;
assign err_bit[62] = (dec_parity == 9'b010111100) ? 1'b1 : 1'b0;
assign err_bit[63] = (dec_parity == 9'b101111000) ? 1'b1 : 1'b0;
assign err_bit[64] = (dec_parity == 9'b111010111) ? 1'b1 : 1'b0;
assign err_bit[65] = (dec_parity == 9'b010001001) ? 1'b1 : 1'b0;
assign err_bit[66] = (dec_parity == 9'b100010010) ? 1'b1 : 1'b0;
assign err_bit[67] = (dec_parity == 9'b100000011) ? 1'b1 : 1'b0;
assign err_bit[68] = (dec_parity == 9'b100100001) ? 1'b1 : 1'b0;
assign err_bit[69] = (dec_parity == 9'b101100101) ? 1'b1 : 1'b0;
assign err_bit[70] = (dec_parity == 9'b111101101) ? 1'b1 : 1'b0;
assign err_bit[71] = (dec_parity == 9'b011111101) ? 1'b1 : 1'b0;
assign err_bit[72] = (dec_parity == 9'b111111010) ? 1'b1 : 1'b0;
assign err_bit[73] = (dec_parity == 9'b011010011) ? 1'b1 : 1'b0;
assign err_bit[74] = (dec_parity == 9'b110100110) ? 1'b1 : 1'b0;
assign err_bit[75] = (dec_parity == 9'b001101011) ? 1'b1 : 1'b0;
assign err_bit[76] = (dec_parity == 9'b011010110) ? 1'b1 : 1'b0;
assign err_bit[77] = (dec_parity == 9'b110101100) ? 1'b1 : 1'b0;
assign err_bit[78] = (dec_parity == 9'b001111111) ? 1'b1 : 1'b0;
assign err_bit[79] = (dec_parity == 9'b011111110) ? 1'b1 : 1'b0;
assign err_bit[80] = (dec_parity == 9'b111111100) ? 1'b1 : 1'b0;
assign err_bit[81] = (dec_parity == 9'b011011111) ? 1'b1 : 1'b0;
assign err_bit[82] = (dec_parity == 9'b110111110) ? 1'b1 : 1'b0;
assign err_bit[83] = (dec_parity == 9'b001011011) ? 1'b1 : 1'b0;
assign err_bit[84] = (dec_parity == 9'b010110110) ? 1'b1 : 1'b0;
assign err_bit[85] = (dec_parity == 9'b101101100) ? 1'b1 : 1'b0;
assign err_bit[86] = (dec_parity == 9'b111111111) ? 1'b1 : 1'b0;
assign err_bit[87] = (dec_parity == 9'b011011001) ? 1'b1 : 1'b0;
assign err_bit[88] = (dec_parity == 9'b110110010) ? 1'b1 : 1'b0;
assign err_bit[89] = (dec_parity == 9'b001000011) ? 1'b1 : 1'b0;
assign err_bit[90] = (dec_parity == 9'b010000110) ? 1'b1 : 1'b0;
assign err_bit[91] = (dec_parity == 9'b100001100) ? 1'b1 : 1'b0;
assign err_bit[92] = (dec_parity == 9'b100111111) ? 1'b1 : 1'b0;
assign err_bit[93] = (dec_parity == 9'b101011001) ? 1'b1 : 1'b0;
assign err_bit[94] = (dec_parity == 9'b110010101) ? 1'b1 : 1'b0;
assign err_bit[95] = (dec_parity == 9'b000001101) ? 1'b1 : 1'b0;
assign err_bit[96] = (dec_parity == 9'b000011010) ? 1'b1 : 1'b0;
assign err_bit[97] = (dec_parity == 9'b000110100) ? 1'b1 : 1'b0;
assign err_bit[98] = (dec_parity == 9'b001101000) ? 1'b1 : 1'b0;
assign err_bit[99] = (dec_parity == 9'b011010000) ? 1'b1 : 1'b0;
assign err_bit[100] = (dec_parity == 9'b110100000) ? 1'b1 : 1'b0;
assign err_bit[101] = (dec_parity == 9'b001100111) ? 1'b1 : 1'b0;
assign err_bit[102] = (dec_parity == 9'b011001110) ? 1'b1 : 1'b0;
assign err_bit[103] = (dec_parity == 9'b110011100) ? 1'b1 : 1'b0;
assign err_bit[104] = (dec_parity == 9'b000011111) ? 1'b1 : 1'b0;
assign err_bit[105] = (dec_parity == 9'b000111110) ? 1'b1 : 1'b0;
assign err_bit[106] = (dec_parity == 9'b001111100) ? 1'b1 : 1'b0;
assign err_bit[107] = (dec_parity == 9'b011111000) ? 1'b1 : 1'b0;
assign err_bit[108] = (dec_parity == 9'b111110000) ? 1'b1 : 1'b0;
assign err_bit[109] = (dec_parity == 9'b011000111) ? 1'b1 : 1'b0;
assign err_bit[110] = (dec_parity == 9'b110001110) ? 1'b1 : 1'b0;
assign err_bit[111] = (dec_parity == 9'b000111011) ? 1'b1 : 1'b0;
assign err_bit[112] = (dec_parity == 9'b001110110) ? 1'b1 : 1'b0;
assign err_bit[113] = (dec_parity == 9'b011101100) ? 1'b1 : 1'b0;
assign err_bit[114] = (dec_parity == 9'b111011000) ? 1'b1 : 1'b0;
assign err_bit[115] = (dec_parity == 9'b010010111) ? 1'b1 : 1'b0;
assign err_bit[116] = (dec_parity == 9'b100101110) ? 1'b1 : 1'b0;
assign err_bit[117] = (dec_parity == 9'b101111011) ? 1'b1 : 1'b0;
assign err_bit[118] = (dec_parity == 9'b111010001) ? 1'b1 : 1'b0;
assign err_bit[119] = (dec_parity == 9'b010000101) ? 1'b1 : 1'b0;
assign err_bit[120] = (dec_parity == 9'b100001010) ? 1'b1 : 1'b0;
assign err_bit[121] = (dec_parity == 9'b100110011) ? 1'b1 : 1'b0;
assign err_bit[122] = (dec_parity == 9'b101000001) ? 1'b1 : 1'b0;
assign err_bit[123] = (dec_parity == 9'b110100101) ? 1'b1 : 1'b0;
assign err_bit[124] = (dec_parity == 9'b001101101) ? 1'b1 : 1'b0;
assign err_bit[125] = (dec_parity == 9'b011011010) ? 1'b1 : 1'b0;
assign err_bit[126] = (dec_parity == 9'b110110100) ? 1'b1 : 1'b0;
assign err_bit[127] = (dec_parity == 9'b001001111) ? 1'b1 : 1'b0;
assign err_bit[128] = (dec_parity == 9'b010011110) ? 1'b1 : 1'b0;
assign err_bit[129] = (dec_parity == 9'b100111100) ? 1'b1 : 1'b0;
assign err_bit[130] = (dec_parity == 9'b101011111) ? 1'b1 : 1'b0;
assign err_bit[131] = (dec_parity == 9'b110011001) ? 1'b1 : 1'b0;
assign err_bit[132] = (dec_parity == 9'b000010101) ? 1'b1 : 1'b0;
assign err_bit[133] = (dec_parity == 9'b000101010) ? 1'b1 : 1'b0;
assign err_bit[134] = (dec_parity == 9'b001010100) ? 1'b1 : 1'b0;
assign err_bit[135] = (dec_parity == 9'b010101000) ? 1'b1 : 1'b0;
assign err_bit[136] = (dec_parity == 9'b101010000) ? 1'b1 : 1'b0;
assign err_bit[137] = (dec_parity == 9'b110000111) ? 1'b1 : 1'b0;
assign err_bit[138] = (dec_parity == 9'b000101001) ? 1'b1 : 1'b0;
assign err_bit[139] = (dec_parity == 9'b001010010) ? 1'b1 : 1'b0;
assign err_bit[140] = (dec_parity == 9'b010100100) ? 1'b1 : 1'b0;
assign err_bit[141] = (dec_parity == 9'b101001000) ? 1'b1 : 1'b0;
assign err_bit[142] = (dec_parity == 9'b110110111) ? 1'b1 : 1'b0;
assign err_bit[143] = (dec_parity == 9'b001001001) ? 1'b1 : 1'b0;
assign err_bit[144] = (dec_parity == 9'b010010010) ? 1'b1 : 1'b0;
assign err_bit[145] = (dec_parity == 9'b100100100) ? 1'b1 : 1'b0;
assign err_bit[146] = (dec_parity == 9'b101101111) ? 1'b1 : 1'b0;
assign err_bit[147] = (dec_parity == 9'b111111001) ? 1'b1 : 1'b0;
assign err_bit[148] = (dec_parity == 9'b011010101) ? 1'b1 : 1'b0;
assign err_bit[149] = (dec_parity == 9'b110101010) ? 1'b1 : 1'b0;
assign err_bit[150] = (dec_parity == 9'b001110011) ? 1'b1 : 1'b0;
assign err_bit[151] = (dec_parity == 9'b011100110) ? 1'b1 : 1'b0;
assign err_bit[152] = (dec_parity == 9'b111001100) ? 1'b1 : 1'b0;
assign err_bit[153] = (dec_parity == 9'b010111111) ? 1'b1 : 1'b0;
assign err_bit[154] = (dec_parity == 9'b101111110) ? 1'b1 : 1'b0;
assign err_bit[155] = (dec_parity == 9'b111011011) ? 1'b1 : 1'b0;
assign err_bit[156] = (dec_parity == 9'b010010001) ? 1'b1 : 1'b0;
assign err_bit[157] = (dec_parity == 9'b100100010) ? 1'b1 : 1'b0;
assign err_bit[158] = (dec_parity == 9'b101100011) ? 1'b1 : 1'b0;
assign err_bit[159] = (dec_parity == 9'b111100001) ? 1'b1 : 1'b0;
assign err_bit[160] = (dec_parity == 9'b011100101) ? 1'b1 : 1'b0;
assign err_bit[161] = (dec_parity == 9'b111001010) ? 1'b1 : 1'b0;
assign err_bit[162] = (dec_parity == 9'b010110011) ? 1'b1 : 1'b0;
assign err_bit[163] = (dec_parity == 9'b101100110) ? 1'b1 : 1'b0;
assign err_bit[164] = (dec_parity == 9'b111101011) ? 1'b1 : 1'b0;
assign err_bit[165] = (dec_parity == 9'b011110001) ? 1'b1 : 1'b0;
assign err_bit[166] = (dec_parity == 9'b111100010) ? 1'b1 : 1'b0;
assign err_bit[167] = (dec_parity == 9'b011100011) ? 1'b1 : 1'b0;
assign err_bit[168] = (dec_parity == 9'b111000110) ? 1'b1 : 1'b0;
assign err_bit[169] = (dec_parity == 9'b010101011) ? 1'b1 : 1'b0;
assign err_bit[170] = (dec_parity == 9'b101010110) ? 1'b1 : 1'b0;
assign err_bit[171] = (dec_parity == 9'b110001011) ? 1'b1 : 1'b0;
assign err_bit[172] = (dec_parity == 9'b000110001) ? 1'b1 : 1'b0;
assign err_bit[173] = (dec_parity == 9'b001100010) ? 1'b1 : 1'b0;
assign err_bit[174] = (dec_parity == 9'b011000100) ? 1'b1 : 1'b0;
assign err_bit[175] = (dec_parity == 9'b110001000) ? 1'b1 : 1'b0;
assign err_bit[176] = (dec_parity == 9'b000110111) ? 1'b1 : 1'b0;
assign err_bit[177] = (dec_parity == 9'b001101110) ? 1'b1 : 1'b0;
assign err_bit[178] = (dec_parity == 9'b011011100) ? 1'b1 : 1'b0;
assign err_bit[179] = (dec_parity == 9'b110111000) ? 1'b1 : 1'b0;
assign err_bit[180] = (dec_parity == 9'b001010111) ? 1'b1 : 1'b0;
assign err_bit[181] = (dec_parity == 9'b010101110) ? 1'b1 : 1'b0;
assign err_bit[182] = (dec_parity == 9'b101011100) ? 1'b1 : 1'b0;
assign err_bit[183] = (dec_parity == 9'b110011111) ? 1'b1 : 1'b0;
assign err_bit[184] = (dec_parity == 9'b000011001) ? 1'b1 : 1'b0;

assign dec_out = dec_in[184:0] ^ err_bit;
assign err_correct = ^dec_parity;
assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);

endmodule
