module add3(
  input [2:0] A,
  input [2:0] B,
  output [2:0] S
);

  //////////////////////////////////////////
  // Declare any needed internal signals //
  ////////////////////////////////////////
  logic [3:0] C;
  assign C[0] = 4'h0;

  //////////////////////////////////////////////////////
  // Implement adder using instances of FA from AHW1 //
  // --- Use a vectored instantiation !! ---        //
  ///////////////////////////////////////////////////
  FA FA3[1:0](.S(S[1:0]),.Cout(C[2:1]),.A(A[1:0]),.B(B[1:0]),.Cin(C[1:0]));
  FA FAf(.S(S[2]),.Cout(C[3]),.A(A[2]),.B(B[2]),.Cin(C[2]));
  
endmodule