`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*module clockDivider #(parameter n=10)(
input clk, reset,
output reg clk_out
    );
*/

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
