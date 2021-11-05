`timescale 1ns / 1ps

//nBitCounter #(3) b(
module  nBitCounter #(parameter n=3)(
input clk, 
reset, 
UpDown,
Inc,
output reg [n-1:0] count);

always @(posedge clk, posedge reset) begin
    if (reset ==1)
        count<=0;
    else
        if(UpDown ==0)
            if(Inc==1)
                count <= count+2;
            else
                count<=count+1;
        else
            if(Inc==1)
              count <= count-2;
           else
              count<=count-1;
        
end

endmodule
