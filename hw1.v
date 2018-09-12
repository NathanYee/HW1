module demorgan       // nA and nB
(
  input  A,           // Single bit inputs
  input  B,
  output nA,          // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AorB,
  output npAorB       // parentheses
);

  wire nA;
  wire nB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  wire AorB;
  or orgate(AorB, A, B);
  not AorBinv(npAorB, AorB);

endmodule
