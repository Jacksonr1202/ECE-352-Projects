module segGdec
(
	input [3:0] D,
	output reg segG
);

 always @ (*) begin
    case(D)
    4'h0,4'h1,4'h7: segG = 1'b1;
    4'h2,4'h3,4'h4,4'h5,4'h6,4'h8,4'h9,4'hA,4'hB,4'hC,4'hD,4'hE,4'hF: segG = 1'b0;
    default : segG = 1'bx;
    endcase
 end
  
endmodule
