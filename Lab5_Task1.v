`timescale 1ns / 1ps
module ALU_32_Bits(
    input [31:0]A,B,
    input Cin,
    input [1:0]Opcode,
    output reg [63:0]F);
    always @ *
        begin
            case (Opcode)
                2'b00: F <= A + B + Cin;
                2'b01: F <= A - B;
                2'b10: F <= A * B;
                2'b11: F <= (B != 0)? (A / B):(64'hFFFFFFFFFFFFF);
            endcase
        end
endmodule