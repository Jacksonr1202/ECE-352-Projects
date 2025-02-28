module add4(
  input [3:0] A,
  input [3:0] B,
  output [3:0] S
);

  //////////////////////////////////////////
  // Declare any needed internal signals //
  ////////////////////////////////////////
  logic [4:0] C;
  assign C[0] = 4'h0;
  
  //////////////////////////////////////////////////////
  // Implement adder using instances of FA from AHW1 //
  // --- Use a vectored instantiation !! ---        //
  ///////////////////////////////////////////////////
  FA FA4[2:0](.S(S[2:0]),.Cout(C[3:1]),.A(A[2:0]),.B(B[2:0]),.Cin(C[2:0]));
  FA FAf(.S(S[3]),.Cout(C[4]),.A(A[3]),.B(B[3]),.Cin(C[3]));
  
endmodule