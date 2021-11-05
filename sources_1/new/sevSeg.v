module sevSeg(input en, [3:0] in, output reg [6:0] out);
    always @(*) begin
        if(en)
            case(in)
                4'b0000: out = 7'b0000001; // "0"  
                 4'b0001: out = 7'b1001111; // "1" 
                 4'b0010: out = 7'b0010010; // "2" 
                 4'b0011: out = 7'b0000110; // "3" 
                 4'b0100: out = 7'b1001100; // "4" 
                 4'b0101: out = 7'b0100100; // "5" 
                 4'b0110: out = 7'b0100000; // "6" 
                 4'b0111: out = 7'b0001111; // "7" 
                 4'b1000: out = 7'b0000000; // "8"  
                 4'b1001: out = 7'b0000100; // "9"
                4'ha: out=7'b0001_000;
                4'hb: out=7'b1100_000;
                4'hc: out=7'b0110_001;
                4'hd: out=7'b1000_010;
                4'he: out=7'b0110_000;
                default: out=7'b0111_000;
            endcase
        else 
          out=7'b1111_111;
     end       
endmodule
