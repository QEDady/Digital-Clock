`timescale 1ns / 1ps

module clockDividerTB();
reg clk, reset;
wire clk_out;

clockDivider ins(clk, reset, clk_out);

initial begin
    clk=0;
    forever #10 clk=~clk;
end

initial begin
    reset=1; #20
    reset=0;
end

endmodule
