`timescale 1ns / 1ps
module edge_d_flipflop(
    input D, Clk, Preset, Reset,
    output reg Q,
    output Qbar);
    assign Qbar = ~Q;
    always @ (negedge Clk or negedge Preset or negedge Reset)
        begin
            if (!Reset)
                begin
                    Q <= 1'b0;
                end
            else if (!Preset)
                begin
                    Q <= 1'b1;
                end
            else
                begin
                    Q <= D;
                end 
        end
endmodule