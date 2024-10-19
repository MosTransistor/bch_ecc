
//---
//- Author       : W.A                                     
//- Date         : Friday Oct-18-2024
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
//-  [1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1]
//-  [0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0]
//-  [0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1]
//-  [0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0]
//-  [0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0]
//-  [0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1]
//---

module ecc_23to29(
  input   wire   [22:0]  enc_in,
  output  wire   [28:0]  enc_out,
  input   wire   [28:0]  dec_in,
  output  wire   [22:0]  dec_out,
  output  wire            err_correct,
  output  wire            err_uncorrect,
  output  reg    [4:0]  err_location
);

//- ECC Encode Logic
wire  [5:0]   enc_parity;
assign enc_parity[0] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[5]^enc_in[9]^enc_in[11]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[16]^enc_in[18]^enc_in[19]^enc_in[21];

assign enc_parity[1] = enc_in[0]^enc_in[3]^enc_in[5]^enc_in[6]^enc_in[9]^enc_in[10]^enc_in[11]^enc_in[12]^enc_in[13]^enc_in[17]^enc_in[18]^enc_in[20]^enc_in[21]^enc_in[22];

assign enc_parity[2] = enc_in[0]^enc_in[2]^enc_in[4]^enc_in[5]^enc_in[6]^enc_in[7]^enc_in[9]^enc_in[10]^enc_in[12]^enc_in[15]^enc_in[16]^enc_in[22];

assign enc_parity[3] = enc_in[0]^enc_in[2]^enc_in[3]^enc_in[6]^enc_in[7]^enc_in[8]^enc_in[9]^enc_in[10]^enc_in[14]^enc_in[15]^enc_in[17]^enc_in[18]^enc_in[19]^enc_in[21];

assign enc_parity[4] = enc_in[1]^enc_in[3]^enc_in[4]^enc_in[7]^enc_in[8]^enc_in[9]^enc_in[10]^enc_in[11]^enc_in[15]^enc_in[16]^enc_in[18]^enc_in[19]^enc_in[20]^enc_in[22];

assign enc_parity[5] = enc_in[0]^enc_in[1]^enc_in[4]^enc_in[8]^enc_in[10]^enc_in[12]^enc_in[13]^enc_in[14]^enc_in[15]^enc_in[17]^enc_in[18]^enc_in[20];

assign enc_out = {enc_parity, enc_in};

//- ECC Decode Logic
wire  [5:0]   dec_parity;
assign dec_parity[0] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[5]^dec_in[9]^dec_in[11]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[16]^dec_in[18]^dec_in[19]^dec_in[21]^dec_in[23];

assign dec_parity[1] = dec_in[0]^dec_in[3]^dec_in[5]^dec_in[6]^dec_in[9]^dec_in[10]^dec_in[11]^dec_in[12]^dec_in[13]^dec_in[17]^dec_in[18]^dec_in[20]^dec_in[21]^dec_in[22]^dec_in[24];

assign dec_parity[2] = dec_in[0]^dec_in[2]^dec_in[4]^dec_in[5]^dec_in[6]^dec_in[7]^dec_in[9]^dec_in[10]^dec_in[12]^dec_in[15]^dec_in[16]^dec_in[22]^dec_in[25];

assign dec_parity[3] = dec_in[0]^dec_in[2]^dec_in[3]^dec_in[6]^dec_in[7]^dec_in[8]^dec_in[9]^dec_in[10]^dec_in[14]^dec_in[15]^dec_in[17]^dec_in[18]^dec_in[19]^dec_in[21]^dec_in[26];

assign dec_parity[4] = dec_in[1]^dec_in[3]^dec_in[4]^dec_in[7]^dec_in[8]^dec_in[9]^dec_in[10]^dec_in[11]^dec_in[15]^dec_in[16]^dec_in[18]^dec_in[19]^dec_in[20]^dec_in[22]^dec_in[27];

assign dec_parity[5] = dec_in[0]^dec_in[1]^dec_in[4]^dec_in[8]^dec_in[10]^dec_in[12]^dec_in[13]^dec_in[14]^dec_in[15]^dec_in[17]^dec_in[18]^dec_in[20]^dec_in[28];

always @(*) begin
  case(dec_parity)
    6'b000001: err_location = 6'd23;
    6'b000010: err_location = 6'd24;
    6'b000100: err_location = 6'd25;
    6'b001000: err_location = 6'd26;
    6'b010000: err_location = 6'd27;
    6'b100000: err_location = 6'd28;
    6'b101111: err_location = 6'd0;
    6'b110001: err_location = 6'd1;
    6'b001101: err_location = 6'd2;
    6'b011010: err_location = 6'd3;
    6'b110100: err_location = 6'd4;
    6'b000111: err_location = 6'd5;
    6'b001110: err_location = 6'd6;
    6'b011100: err_location = 6'd7;
    6'b111000: err_location = 6'd8;
    6'b011111: err_location = 6'd9;
    6'b111110: err_location = 6'd10;
    6'b010011: err_location = 6'd11;
    6'b100110: err_location = 6'd12;
    6'b100011: err_location = 6'd13;
    6'b101001: err_location = 6'd14;
    6'b111101: err_location = 6'd15;
    6'b010101: err_location = 6'd16;
    6'b101010: err_location = 6'd17;
    6'b111011: err_location = 6'd18;
    6'b011001: err_location = 6'd19;
    6'b110010: err_location = 6'd20;
    6'b001011: err_location = 6'd21;
    6'b010110: err_location = 6'd22;
    default: err_location = 6'd0;
  endcase
end
wire  [22:0]   err_bit;
assign err_bit[0] = (dec_parity == 6'b101111) ? 1'b1 : 1'b0;
assign err_bit[1] = (dec_parity == 6'b110001) ? 1'b1 : 1'b0;
assign err_bit[2] = (dec_parity == 6'b001101) ? 1'b1 : 1'b0;
assign err_bit[3] = (dec_parity == 6'b011010) ? 1'b1 : 1'b0;
assign err_bit[4] = (dec_parity == 6'b110100) ? 1'b1 : 1'b0;
assign err_bit[5] = (dec_parity == 6'b000111) ? 1'b1 : 1'b0;
assign err_bit[6] = (dec_parity == 6'b001110) ? 1'b1 : 1'b0;
assign err_bit[7] = (dec_parity == 6'b011100) ? 1'b1 : 1'b0;
assign err_bit[8] = (dec_parity == 6'b111000) ? 1'b1 : 1'b0;
assign err_bit[9] = (dec_parity == 6'b011111) ? 1'b1 : 1'b0;
assign err_bit[10] = (dec_parity == 6'b111110) ? 1'b1 : 1'b0;
assign err_bit[11] = (dec_parity == 6'b010011) ? 1'b1 : 1'b0;
assign err_bit[12] = (dec_parity == 6'b100110) ? 1'b1 : 1'b0;
assign err_bit[13] = (dec_parity == 6'b100011) ? 1'b1 : 1'b0;
assign err_bit[14] = (dec_parity == 6'b101001) ? 1'b1 : 1'b0;
assign err_bit[15] = (dec_parity == 6'b111101) ? 1'b1 : 1'b0;
assign err_bit[16] = (dec_parity == 6'b010101) ? 1'b1 : 1'b0;
assign err_bit[17] = (dec_parity == 6'b101010) ? 1'b1 : 1'b0;
assign err_bit[18] = (dec_parity == 6'b111011) ? 1'b1 : 1'b0;
assign err_bit[19] = (dec_parity == 6'b011001) ? 1'b1 : 1'b0;
assign err_bit[20] = (dec_parity == 6'b110010) ? 1'b1 : 1'b0;
assign err_bit[21] = (dec_parity == 6'b001011) ? 1'b1 : 1'b0;
assign err_bit[22] = (dec_parity == 6'b010110) ? 1'b1 : 1'b0;

assign dec_out = dec_in[22:0] ^ err_bit;
assign err_correct = ^dec_parity;
assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);

endmodule
