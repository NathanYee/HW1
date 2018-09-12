module demorgan       // nA and nB
(
  input  A,           // Single bit inputs
  input  B,
  output nA,          // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AorB,
  output npAorB,      // ~(A+B)
  output nAornB,      // ~A+~B
  output AandB,       // AB
  output npAandB      // ~(AB)
);

  wire nA;
  wire nB;
  wire AorB;
  wire AandB;
  not Ainv(nA, A);  	// Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB); 	// AND gate produces nAandnB from nA and nB
  or orgate(AorB, A, B);
  not AorBinv(npAorB, AorB);
  or orgate(nAornB, nA, nB);
  and andgate(AandB, A, B);
  not AandBinv(npAandB, AandB);

endmodule
