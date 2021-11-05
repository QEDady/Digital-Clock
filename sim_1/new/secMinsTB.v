`timescale 1ns / 1ps
module secMinsTB();

reg clk, reset;
wire [2:0] m1, s1;
wire [3:0] m2, s2;

secMinsCounter ins(clk, reset,m1, s1, m2, s2);

initial begin
    clk=0;
    forever #10 clk=~clk;
   end 

initial begin
    reset=1; #10;
    reset=0;
end

endmodule
