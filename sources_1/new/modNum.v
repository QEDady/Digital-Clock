
module modNum #(parameter n=10, bits=4)(
input clk, reset, enable,
output reg [bits-1:0] count
    );


always @(posedge clk, posedge reset) begin
   if (reset ==1)
        count<=0;
    else begin
    if(enable ==1)begin
        if(count == n-1)
            count<=0;
        else
            count<=count+1;
        end
    else
        count<=count;
    end
end
 
endmodule
