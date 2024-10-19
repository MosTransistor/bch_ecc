
//---
//- Author       : W.A                                     
//- Date         : Friday Oct-18-2024
//- Description  : auto generate by gen_bch_verilog.py
//- check matrix :
//-  [1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1]
//-  [0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 1]
//-  [0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0]
//-  [0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0]
//-  [0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1]
//---

module ecc_10to15(
  input   wire   [9:0]  enc_in,
  output  wire   [14:0]  enc_out,
  input   wire   [14:0]  dec_in,
  output  wire   [9:0]  dec_out,
  output  wire            err_correct,
  output  wire            err_uncorrect,
  output  reg    [3:0]  err_location
);

//- ECC Encode Logic
wire  [4:0]   enc_parity;
assign enc_parity[0] = enc_in[0]^enc_in[1]^enc_in[2]^enc_in[4]^enc_in[5]^enc_in[8];

assign enc_parity[1] = enc_in[1]^enc_in[2]^enc_in[3]^enc_in[5]^enc_in[6]^enc_in[9];

assign enc_parity[2] = enc_in[0]^enc_in[1]^enc_in[3]^enc_in[5]^enc_in[6]^enc_in[7]^enc_in[8];

assign enc_parity[3] = enc_in[1]^enc_in[2]^enc_in[4]^enc_in[6]^enc_in[7]^enc_in[8]^enc_in[9];

assign enc_parity[4] = enc_in[0]^enc_in[1]^enc_in[3]^enc_in[4]^enc_in[7]^enc_in[9];

assign enc_out = {enc_parity, enc_in};

//- ECC Decode Logic
wire  [4:0]   dec_parity;
assign dec_parity[0] = dec_in[0]^dec_in[1]^dec_in[2]^dec_in[4]^dec_in[5]^dec_in[8]^dec_in[10];

assign dec_parity[1] = dec_in[1]^dec_in[2]^dec_in[3]^dec_in[5]^dec_in[6]^dec_in[9]^dec_in[11];

assign dec_parity[2] = dec_in[0]^dec_in[1]^dec_in[3]^dec_in[5]^dec_in[6]^dec_in[7]^dec_in[8]^dec_in[12];

assign dec_parity[3] = dec_in[1]^dec_in[2]^dec_in[4]^dec_in[6]^dec_in[7]^dec_in[8]^dec_in[9]^dec_in[13];

assign dec_parity[4] = dec_in[0]^dec_in[1]^dec_in[3]^dec_in[4]^dec_in[7]^dec_in[9]^dec_in[14];

always @(*) begin
  case(dec_parity)
    5'b00001: err_location = 5'd10;
    5'b00010: err_location = 5'd11;
    5'b00100: err_location = 5'd12;
    5'b01000: err_location = 5'd13;
    5'b10000: err_location = 5'd14;
    5'b10101: err_location = 5'd0;
    5'b11111: err_location = 5'd1;
    5'b01011: err_location = 5'd2;
    5'b10110: err_location = 5'd3;
    5'b11001: err_location = 5'd4;
    5'b00111: err_location = 5'd5;
    5'b01110: err_location = 5'd6;
    5'b11100: err_location = 5'd7;
    5'b01101: err_location = 5'd8;
    5'b11010: err_location = 5'd9;
    default: err_location = 5'd0;
  endcase
end
wire  [9:0]   err_bit;
assign err_bit[0] = (dec_parity == 5'b10101) ? 1'b1 : 1'b0;
assign err_bit[1] = (dec_parity == 5'b11111) ? 1'b1 : 1'b0;
assign err_bit[2] = (dec_parity == 5'b01011) ? 1'b1 : 1'b0;
assign err_bit[3] = (dec_parity == 5'b10110) ? 1'b1 : 1'b0;
assign err_bit[4] = (dec_parity == 5'b11001) ? 1'b1 : 1'b0;
assign err_bit[5] = (dec_parity == 5'b00111) ? 1'b1 : 1'b0;
assign err_bit[6] = (dec_parity == 5'b01110) ? 1'b1 : 1'b0;
assign err_bit[7] = (dec_parity == 5'b11100) ? 1'b1 : 1'b0;
assign err_bit[8] = (dec_parity == 5'b01101) ? 1'b1 : 1'b0;
assign err_bit[9] = (dec_parity == 5'b11010) ? 1'b1 : 1'b0;

assign dec_out = dec_in[9:0] ^ err_bit;
assign err_correct = ^dec_parity;
assign err_uncorrect = (~(^dec_parity)) & (|dec_parity);

endmodule
