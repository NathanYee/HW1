`include "hw1.v"


module demorgan_test3 (); // n(A or B)

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AorB, npAorB;       // Test outputs

  demorgan3 dut(A, B, AorB, npAorB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B | A+B | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |   %b |      %b  ", A, B, AorB, npAorB);
    A=0;B=1; #1                                // Set A and B, wait for new update
    $display("%b %b |   %b |      %b  ", A, B, AorB, npAorB);
    A=1;B=0; #1
    $display("%b %b |   %b |      %b  ", A, B, AorB, npAorB);
    A=1;B=1; #1
    $display("%b %b |   %b |      %b  ", A, B, AorB, npAorB);
  end
endmodule    // End demorgan_test

module demorgan_test4 (); // nA and nB

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB;    // Test outputs

  demorgan4 dut(A, B, nA, nB, nAandnB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | ~A~B ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
  end
endmodule    // End demorgan_test
