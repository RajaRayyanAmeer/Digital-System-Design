`timescale 1ns / 1ps
module ALU_32_Bits_tb;
    reg [31:0]A,B;
    reg Cin;
    reg [1:0]Opcode;
    wire [63:0]F;
    ALU_32_Bits alu(.A(A), .B(B), .Cin(Cin), .Opcode(Opcode), .F(F));
    initial
        begin
            $dumpfile("file.vcd");
            $dumpvars(1,ALU_32_Bits_tb);
                A = 10; B = 10; Cin = 1; Opcode = 2'b00;
                #2 A = 9; B = 1; Opcode = 2'b01;
                #2 A = 7; B = 4; Opcode = 2'b10;
                #2 A = 10; B = 2; Opcode = 2'b11;
                #2 A = 15; B = 0; Opcode = 2'b11;
                #2
            $finish();
        end
endmodule