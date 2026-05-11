`timescale 1ns / 1ps
module ClockDivider_tb;
    reg Clk_In, Rest_In;
    wire Clk_Out;
    ClockDivider cd(Clk_In, Rest_In, Clk_Out);
    initial Clk_In = 1'b0;
    always #2 Clk_In = ~Clk_In;
    initial
        begin
            $dumpfile("file.vcd");
            $dumpvars(1, ClockDivider_tb);
            Rest_In = 1'b0;
            #10;
            Rest_In = 1'b1;
            #1000;
            Rest_In = 1'b0;
            #10;
            Rest_In = 1'b1;
            #1000;
            $finish();
    end
endmodule