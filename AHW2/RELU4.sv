module RELU4(
  input [3:0] Y,
  output [3:0] Yrect
);


  //////////////////////////////////////////////////////////
  // Implement in dataflow verilog (an assign statement) //
  ////////////////////////////////////////////////////////
  assign Yrect = (Y[3] > 1'b0) ? 4'b0000:
                                Y;
  
endmodule
  