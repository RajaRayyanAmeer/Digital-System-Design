`timescale 1ns / 1ps
module edge_d_flipflop_tb;
    reg D, Clk, Preset, Reset;
    wire Q, Qbar;
    edge_d_flipflop e1(D, Clk, Preset, Reset, Q, Qbar);
    initial
        begin
            $dumpfile("file.vcd");
            $dumpvars(1, edge_d_flipflop_tb);
        end
        initial
            begin
                Clk = 0;
                forever #1 Clk = ~Clk;
        end
        initial
        begin
            Preset = 0; Reset = 1; D = 1'bx;
            #2 Preset = 1; Reset = 0; D = 1'bx;
            #2 Preset = 0; Reset = 0; D = 1'bx;
            #2 Preset = 1; Reset = 1; D = 1;
            #2 Preset = 1; Reset = 1; D = 0;
            #2 Preset = 1; Reset = 1; D = 1'bx;
            #2
            $finish();
        end
endmodule