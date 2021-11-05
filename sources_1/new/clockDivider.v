module clockDivider #(parameter n=50000000)(
input clk, reset,
output reg clk_out
    );

reg [31:0] count;

always @ (posedge clk, posedge reset) begin
    if(reset == 1'b1)
        count<= 32'b0;
    else if(count == n-1)
        count<= 32'b0;
    else
        count<=count+1;
end

always @ (posedge clk, posedge reset) begin
    if(reset == 1'b1)
       clk_out<= 1'b0;
   else if(count == n-1)
       clk_out<= ~clk_out;
   else
       clk_out<=clk_out;

end
endmodule
