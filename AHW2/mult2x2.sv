module mult2x2(
  input [1:0] X,
  input [1:0] W,
  output [1:0] prod
);

  //////////////////////////////////////////
  // Declare any needed internal signals //
  ////////////////////////////////////////
  logic OUT1,OUT2;
  
  //////////////////////////////////////////////////
  // Implement multiply using structural verilog //
  // (instantiation of gate primitives          //
  ///////////////////////////////////////////////
and AND1(OUT1,W[1],~X[1],X[0]);
and AND2(OUT2,X[1],~W[1],W[0]);
or P1(prod[1],OUT1,OUT2);

and P0(prod[0],W[0],X[0]);
  
endmodule