`timescale 1ns/1ps
`define n 194
`define k 185 

module tb_ecc();

    initial begin
        $dumpfile("ecc.vcd");
        $dumpvars(0, tb_ecc);
    end
    
    logic t_clk=0;
    always #5 t_clk = ~t_clk;

    logic [`k-1:0] e_in;
    logic [`n-1:0] mid;
    logic [`n-1:0] mid_xor;
    logic [`k-1:0] d_out;
    integer        ecc_flag=0;
    logic [`n-1:0] err_position=0;
    logic [`n-1:0] ext_position=0;
    logic [31:0]    position;
    logic          correct;
    logic          uncorrect;

    integer fh, seed;

    initial begin
        fh = $fopen("random.txt", "r");
        $fscanf(fh, "%d", seed);
        $fclose(fh);
        void'($urandom(seed));

        $display("\033[30;42m --- simulation begin \033[0m");
        repeat (5000) begin
            repeat (1) @(posedge t_clk);
            ecc_flag = $urandom(seed) % 3;
            err_position = $urandom(seed) % `n;
            ext_position = $urandom(seed) % `n;
            e_in = {$urandom(seed),$urandom(seed),$urandom(seed),$urandom(seed),$urandom(seed),$urandom(seed),$urandom(seed),$urandom(seed)};
        end
        repeat (2) @(posedge t_clk);
        $display("\033[30;42m [PASS] simulation pass!!! \033[0m");
        $finish;
    end   

    always begin
        #1ps;
        if (err_position === ext_position) begin
            ext_position = $urandom(seed) % `n;
        end
    end
    
    always @(*) begin
        case(ecc_flag)
            0: mid_xor = mid; 
            1: mid_xor = mid ^ (1'b1 << err_position);
            2: mid_xor = mid ^ (1'b1 << err_position) ^ (1'b1 << ext_position);
        endcase
    end

    // monitor
    always @(negedge t_clk) begin
        case(ecc_flag)
            0: begin
                if ((e_in !== d_out) || (correct === 1) || (uncorrect === 1)) begin
                    $display("\033[30;41m [Error] no error inject mode, enc_in = %h, dec_out = %h, err_correct = %h, err_uncorrect = %h \033[0m", e_in,d_out,correct,uncorrect);
                    $finish;
                end
            end
            1: begin
                if ((e_in !== d_out) || (correct !== 1) || (uncorrect === 1) || (position !== err_position)) begin
                    $display("\033[30;41m [Error] error inject 1-bit mode, enc_in = %h, dec_out = %h, err_correct = %h, err_uncorrect = %h \033[0m", e_in,d_out,correct,uncorrect);
                    $display("\033[30;41m [Error] error inject 1-bit mode, err_location == %h, inj_location == %h \033[0m", position, err_position);
                    $finish;
                end
            end
            2: begin
                if ((correct === 1) || (uncorrect !== 1)) begin
                    $display("\033[30;41m [Error] error inject 2-bit mode, err_correct = %h, err_uncorrect = %h \033[0m",correct,uncorrect);
                    $finish;
                end
            end
        endcase
    end

    //ecc_10to15    i_ecc_test(.enc_in(e_in), .enc_out(mid), .dec_in(mid_xor), .dec_out(d_out), .err_correct(correct), .err_uncorrect(uncorrect), .err_location(position));
    //ecc_23to29    i_ecc_test(.enc_in(e_in), .enc_out(mid), .dec_in(mid_xor), .dec_out(d_out), .err_correct(correct), .err_uncorrect(uncorrect), .err_location(position));
    //ecc_38to45    i_ecc_test(.enc_in(e_in), .enc_out(mid), .dec_in(mid_xor), .dec_out(d_out), .err_correct(correct), .err_uncorrect(uncorrect), .err_location(position));
    //ecc_92to100   i_ecc_test(.enc_in(e_in), .enc_out(mid), .dec_in(mid_xor), .dec_out(d_out), .err_correct(correct), .err_uncorrect(uncorrect), .err_location(position));
    ecc_185to194  i_ecc_test(.enc_in(e_in), .enc_out(mid), .dec_in(mid_xor), .dec_out(d_out), .err_correct(correct), .err_uncorrect(uncorrect), .err_location(position));

endmodule