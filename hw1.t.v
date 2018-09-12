`include "hw1.v"

module demorgan_test (); // nA and nB

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, AorB, npAorB, nAornB, AandB, npAandB;    // Test outputs

  demorgan dut(A, B, nA, nB, nAandnB, AorB, npAorB, nAornB, AandB, npAandB);  // Module to be tested

  // Run sequence of test stimuli
  initial begin
    $display("| A B | ~A ~B | ~A~B | A+B | AB | ~(A+B) | ~A+~B | ~(AB) |");            // Prints header for truth table
    $display("|_____|_______|______|_____|____|________|_______|_______|");            
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("| %b %b |  %b  %b |    %b |   %b |  %B |      %b |     %b |     %B |", A,B, nA, nB, nAandnB, AorB, AandB, npAorB, nAornB, npAandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("| %b %b |  %b  %b |    %b |   %b |  %B |      %b |     %b |     %B |", A,B, nA, nB, nAandnB, AorB, AandB, npAorB, nAornB, npAandB);
    A=1;B=0; #1
    $display("| %b %b |  %b  %b |    %b |   %b |  %B |      %b |     %b |     %B | ", A,B, nA, nB, nAandnB, AorB, AandB, npAorB, nAornB, npAandB);
    A=1;B=1; #1
    $display("| %b %b |  %b  %b |    %b |   %b |  %B |      %b |     %b |     %B |", A,B, nA, nB, nAandnB, AorB, AandB, npAorB, nAornB, npAandB);
  end

endmodule    // End demorgan_test
