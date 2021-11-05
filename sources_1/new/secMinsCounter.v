module secMinsCounter(
input clk, reset,
output  [2:0] m1, s1,
output  [3:0] m2, s2
    );
    
    
/*module modNum #(parameter n=10)(
    input clk, reset, enable,
    output reg [31:0] count
        );
*/

modNum #(10, 4) modS2(clk, reset, 1, s2);

modNum #(6, 3) modS1(clk, reset, s2==9, s1);

modNum #(10,4) modM2(clk, reset, s2==9 && s1==5,m2);

modNum #(6, 3) modM1(clk, reset, s2==9 && s1==5 && m2==9,m1);
    
endmodule
