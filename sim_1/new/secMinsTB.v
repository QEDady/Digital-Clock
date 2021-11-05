`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2021 12:24:10 PM
// Design Name: 
// Module Name: secMinsTB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// module secMinsCounter(
/*input clk, reset,
output  [2:0] m1, s1,
output  [3:0] m2, s2
    );*/
    
//////////////////////////////////////////////////////////////////////////////////


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
