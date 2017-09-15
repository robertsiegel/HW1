`include "hw1.v"

module demorgan_test1 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB;    // Test outputs

  demorgan1 dut(A, B, nA, nB, nAandnB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("TEST1 A B | ~A ~B | ~A~B ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("TEST1 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("TEST1 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=0; #1
    $display("TEST1 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    A=1;B=1; #1
    $display("TEST1 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
  end
endmodule    // End demorgan_test1

/////////////////////////////////////////

module demorgan_test2 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AorB, nAorB;    // Test outputs

  demorgan2 dut(A, B, AorB, nAorB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("TEST2 A B | A+B | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("TEST2 %b %b |  %b |    %b  ", A,B, AorB, nAorB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("TEST2 %b %b |  %b |    %b  ", A,B, AorB, nAorB);
    A=1;B=0; #1
    $display("TEST2 %b %b |  %b |    %b  ", A,B, AorB, nAorB);
    A=1;B=1; #1
    $display("TEST2 %b %b |  %b |    %b  ", A,B, AorB, nAorB);
  end
endmodule    // End demorgan_test2


///////////////////////////////////////////

module demorgan_test3 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire nA, nB, nAandnB;    // Test outputs

  demorgan3 dut(A, B, nA, nB, nAornB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("TEST3 A B | ~A ~B | ~A+~B ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("TEST3 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("TEST3 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=0; #1
    $display("TEST3 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
    A=1;B=1; #1
    $display("TEST3 %b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB);
  end
endmodule    // End demorgan_test3

///////////////////////////////////////////

module demorgan_test4 ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  wire AorB, nAorB;    // Test outputs

  demorgan4 dut(A, B, AandB, nAandB);  // Module to be tested


  // Run sequence of test stimuli
  initial begin
    $display("TEST4 A B | A+B | ~(A+B) ");            // Prints header for truth table
    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("TEST4 %b %b |  %b |    %b  ", A,B, AandB, nAandB);
    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("TEST4 %b %b |  %b |    %b  ", A,B, AandB, nAandB);
    A=1;B=0; #1
    $display("TEST4 %b %b |  %b |    %b  ", A,B, AandB, nAandB);
    A=1;B=1; #1
    $display("TEST4 %b %b |  %b |    %b  ", A,B, AandB, nAandB);
  end
endmodule    // End demorgan_test4


