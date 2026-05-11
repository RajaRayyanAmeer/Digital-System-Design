`timescale 1ns / 1ps
module Up_Counter_4Bits(
    input Clk, Reset,
    output reg [3:0]Count);
    always @ (posedge Clk or posedge Reset)
        begin
            if (Reset)
                begin
                    Count <= 4'b0000;
                end
            else
                begin
                    Count <= Count + 1;
                end
        end
endmodule