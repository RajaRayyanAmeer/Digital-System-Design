`timescale 1ns / 1ps
module ClockDivider(
    input  Clk_In,
    input  Rest_In,
    output reg Clk_Out
);
    parameter MaxCount = 6'd49;
    reg [5:0] Count;
    always @ (posedge Clk_In) begin
        if (!Rest_In) begin
            Count   <= 6'd0;
            Clk_Out <= 1'b0;          
        end
        else if (Count == MaxCount) begin
            Count   <= 6'd0;
            Clk_Out <= ~Clk_Out;      
        end
        else begin
            Count <= Count + 1'b1;
        end
    end
endmodule