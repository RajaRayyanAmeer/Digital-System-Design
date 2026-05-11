`timescale 1ns / 1ps
module SISO_4Bits_tb;
    reg Clk, Serial_In;
    wire Serial_Out;
    SISO_4Bits siso(Clk, Serial_In, Serial_Out);
    initial
        begin
            $dumpfile("file.vcd");
            $dumpvars(1, SISO_4Bits_tb);
        end
    initial
        begin
            Clk = 0;
            forever #1 Clk = ~Clk;
        end
    initial
        begin
            Serial_In = 0;
            #2 Serial_In = 1;
            #2 Serial_In = 0;
            #2 Serial_In = 1;
            #6
            $finish();
        end
endmodule