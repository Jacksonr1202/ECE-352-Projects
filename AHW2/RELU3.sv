module RELU3(
  input [2:0] Y,
  output [2:0] Yrect
);


  //////////////////////////////////////////////////////////
  // Implement in dataflow verilog (an assign statement) //
  ////////////////////////////////////////////////////////
  assign Yrect = (Y[3] > 1'b0) ? 3'b000:
                                Y;
  
endmodule
  