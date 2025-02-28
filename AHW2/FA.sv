///////////////////////////////////////////////////
// FA.sv  This design will take in 3 bits       //
// and add them to produce a sum and carry out //
////////////////////////////////////////////////
module FA(
  input 	A,B,Cin,	// three input bits to be added
  output	S,Cout		// Sum and carry out
);

	/////////////////////////////////////////////////
	// Declare any internal signals as type logic //
	///////////////////////////////////////////////
	logic N1, N2, N4;
	
	/////////////////////////////////////////////////
	// Implement Full Adder as structural verilog //
	///////////////////////////////////////////////
	xor xor1 (N1,A,B);
	and AND1 (N2,A,B);
	
    xor xor2 (S,N1,Cin);
	and AND2 (N4,N1,Cin);

    or OR1 (Cout,N4,N2);
	
endmodule