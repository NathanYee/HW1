
module demorgan3    // nA and nB
(
  input  A,         // Single bit inputs
  input  B,
  output AorB,      // Output intermediate complemented inputs
  output npAorB     // Single bit output, ~(A+B)
);

  wire AorB;
  or orgate(AorB, A, B); // Top or gate takes signal A and B as inputs and produces signal AorB
  not npAorBinv(npAorB, AorB);  	
endmodule


module demorgan4     // nA and nB
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB     // Single bit output, (~A)*(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB

endmodule
