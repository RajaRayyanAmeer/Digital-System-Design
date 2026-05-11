`timescale 1ns / 1ps
module Up_Counter_4Bits_tb;
    reg Clk, Reset;
    wire [3:0]Count;
    Up_Counter_4Bits ucb (Clk, Reset, Count);
    initial
        begin
            $dumpfile("file.vcd");
            $dumpvars(1, Up_Counter_4Bits_tb);
        end
    initial
        begin
            Clk = 0;
            forever #1 Clk = ~Clk;
        end
    initial
        begin
            Reset = 1;
            #2 Reset = 0;
            #6
            $finish();
        end
endmodule