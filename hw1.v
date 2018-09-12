module demorgan       // nA and nB
(
  // Single bit inputs
  input  A,           
  input  B,
  
  // Output intermediate complemented inputs
  output nA,          // ~A
  output nB,          // ~B
  output AorB,        // A+B
  output AandB,       // AB
  output nAandnB,     // Single bit output, (~A)*(~B)
  output npAorB,      // ~(A+B)
  output nAornB,      // ~A+~B
  output npAandB      // ~(AB)
);

  // wire all intermediate gates
  wire nA;
  wire nB;
  wire AorB;
  wire AandB;

  // compute wires
  not Ainv(nA, A);  	       // ~A
  not Binv(nB, B);           // ~B
  or orgate(AorB, A, B);     // A+B
  and andgate(AandB, A, B);  // AB

  // compute demorgan outputs
  and andgate(nAandnB, nA, nB);  // ~A~B
  not AorBinv(npAorB, AorB);     // ~(A+B)
  or orgate(nAornB, nA, nB);     // ~A+~B
  not AandBinv(npAandB, AandB);  // ~(AB)

endmodule
