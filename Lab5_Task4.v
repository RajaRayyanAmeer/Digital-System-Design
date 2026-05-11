`timescale 1ns / 1ps
module SISO_4Bits(
    input Clk,Serial_In,
    output reg Serial_Out);
    reg FFA, FFB, FFC;
    always @ (posedge Clk)
        begin
            FFA <= Serial_In;
            FFB <= FFA;
            FFC <= FFB;
            Serial_Out <= FFC;
        end
endmodule