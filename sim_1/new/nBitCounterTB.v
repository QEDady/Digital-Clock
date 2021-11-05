`timescale 1ns / 1ps


module nBitCounterTB();
reg clk, reset, UpDown, Inc;
wire [2:0] count;

nBitCounter #(3) ins(clk, reset, UpDown, Inc, count);

initial begin
    clk=0;
    forever #10 clk=~clk;
   end 

initial begin
    reset=1; #10;
    reset=0;
    
    UpDown=0; Inc=0; #80;
    
    UpDown=0;Inc=1;#80;
    
     UpDown=1; Inc=0; #80;
       
     UpDown=1;Inc=1;#80;
       

end




endmodule
