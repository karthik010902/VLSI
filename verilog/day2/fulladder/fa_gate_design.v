module half_adder(
    input a, b,
    output sum, carry
);

  xor (sum,a,b);
  and (carry,a,b);

endmodule

module full_adder(
    input a, b, cin,
    output sum, cout
);

wire s1, c1, c2;

half_adder HA1(.a(a), .b(b), .sum(s1), .carry(c1));
half_adder HA2(.a(s1), .b(cin), .sum(sum), .carry(c2));

  or (cout,c1,c2);

endmodule
