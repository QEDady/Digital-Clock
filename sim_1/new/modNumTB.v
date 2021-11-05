`timescale 1ns / 1ps
/*module modNum #(parameter n=10, bits=4)(
input clk, reset, enable,
output reg [bits-1:0] count
    )*/
module modNumTB();

reg clk, reset,enable;
wire [3:0] count;

modNum #(10, 4) ins(clk, reset, enable,count);

initial begin
    clk=0;
    forever #10 clk=~clk;
   end 

initial begin
    reset=1; #10;
    reset=0;
   
       

end




endmodule
