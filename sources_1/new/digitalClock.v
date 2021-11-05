module digitalClock(
input clk, reset,
output reg [3:0] digitSelect, 
output reg [6:0] out
);

/*module clockDivider #(parameter n=50000000)(
input clk, reset,
output reg clk_out
    );
    module secMinsCounter(
    input clk, reset,
    output reg [2:0] m1, s1,
    output reg [3:0] m2, s2
        );
    //nBitCounter #(3) b(
        module  nBitCounter #(parameter n=3)(
        input clk, 
        reset, 
        UpDown,
        Inc,
        output reg [n-1:0] count); 
        
    */
    
    
wire slowClock;
wire fastClock;
wire [2:0] m1, s1;
wire [3:0] m2, s2;
wire [1:0] twoCounter;

wire [6:0] outS2, outS1, outM2, outM1;

clockDivider #(200000) ins(clk, reset, fastClock);
clockDivider #(50000000) ins1(clk, reset, slowClock);
secMinsCounter ins2(slowClock, reset, m1, s1, m2, s2);
nBitCounter #(2) ins3(fastClock, reset, 0, 0, twoCounter);

sevSeg ins4(1, s2, outS2);
sevSeg ins5(1, s1, outS1);
sevSeg ins6(1, m1, outM1);

sevSeg ins7(1, m2, outM2);

//module sevSeg(input en, [3:0] in, output reg [6:0] out);
always@(twoCounter) begin
    case(twoCounter) 
     2'b00: begin 
        digitSelect=4'b1110; 
        out=outS2;
     end
     2'b01: begin
      digitSelect=4'b1101; 
      out=outS1;
     end
     2'b10: begin
     digitSelect=4'b1011;
     out=outM2;
     end
     default: begin 
     digitSelect=4'b0111; 
     out=outM1;
     end
    endcase
    
end


endmodule
