`include "hw1.v"

module demorgan_test (); // nA and nB

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB, AorB, npAorB, nAornB;    // Test outputs

  demorgan dut(A, B, nA, nB, nAandnB, AorB, npAorB, nAornB);  // Module to be tested

  // Run sequence of test stimuli
  initial begin
    $display("| A B | ~A ~B | ~A~B  |  A+B  | ~(A+B) | ~A+~B |");            // Prints header for truth table
    $display("|_____|_______|_______|_______|________|_______|");            
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("| %b %b |  %b  %b |    %b  |    %b  |      %b |     %b |", A,B, nA, nB, nAandnB, AorB, npAorB, nAornB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("| %b %b |  %b  %b |    %b  |    %b  |      %b |     %b |", A,B, nA, nB, nAandnB, AorB, npAorB, nAornB);
    A=1;B=0; #1
    $display("| %b %b |  %b  %b |    %b  |    %b  |      %b |     %b |", A,B, nA, nB, nAandnB, AorB, npAorB, nAornB);
    A=1;B=1; #1
    $display("| %b %b |  %b  %b |    %b  |    %b  |      %b |     %b |", A,B, nA, nB, nAandnB, AorB, npAorB, nAornB);
  end

endmodule    // End demorgan_test
