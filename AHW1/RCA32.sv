////////////////////////////////////////////////////////
// RCA32.sv  This design will add two 32-bit vectors //
// plus a carry in to produce a sum and a carry out //
/////////////////////////////////////////////////////
module RCA32(
  input 	[31:0]	A,B,	// two 32-bit vectors to be added
  input 			Cin,	// An optional carry in bit
  output 	[31:0]	S,		// 32-bit Sum
  output 			Cout  	// and carry out
);

	/////////////////////////////////////////////////
	// Declare any internal signals as type logic //
	///////////////////////////////////////////////
	logic [31:0] Carries;	// this is driven by .Cout of FA and will
							// in a "promoted" form drive .Cin of FA's
	assign Carries[0] = Cin;
	/////////////////////////////////////////////////
	// Implement Full Adder as structural verilog //
	///////////////////////////////////////////////
	
	FA FA32[30:0] (.S(S[30:0]),.Cout(Carries[31:1]),.A(A[30:0]),.B(B[30:0]),.Cin(Carries[30:0]));
    FA FAf(.S(S[31]),.Cout(Cout),.A(A[31]),.B(B[31]),.Cin(Carries[31]));
	
endmodule