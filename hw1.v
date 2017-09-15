module demorgan1
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

module demorgan2
(
  input  A,          // Single bit inputs
  input  B,
  output AorB,         // Output intermediate A+B
  output nAorB     // Single bit output, ~(A+B)
);

  wire A;
  wire B;
  or orgate(AorB, A, B);   // OR gate
  not AorBinv(nAorB, AorB);    // 
endmodule

module demorgan3
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAornB     // Single bit output, (~A)+(~B)
);

  wire nA;
  wire nB;
  not Ainv(nA, A);    // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  or orgate(nAornB, nA, nB);   // OR gate produces nAornB from nA and nB

endmodule

module demorgan4
(
  input  A,          // Single bit inputs
  input  B,
  output AandB,         // Output intermediate A+B
  output nAandB     // Single bit output, ~(A+B)
);

  wire A;
  wire B;
  and andgate(AandB, A, B);   // OR gate
  not AandBinv(nAandB, AandB); 
endmodule