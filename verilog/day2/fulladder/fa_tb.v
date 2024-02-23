
module testbench;

  initial begin
    $dumpfile("full_adder.vcd");
  $dumpvars(0,testbench);
  end
  
reg a, b, cin;
wire sum, cout;

full_adder uut (
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);
  
  
initial begin
  
  a = 1'b0; b = 1'b0; cin = 1'b0;
  #10;
  a = 1'b0; b = 1'b0; cin = 1'b1;
  #10;
  a = 1'b0; b = 1'b1; cin = 1'b0;
  #10;
  a = 1'b0; b = 1'b1; cin = 1'b1;
  #10;
  a = 1'b1; b = 1'b0; cin = 1'b0;
  #10;
  a = 1'b1; b = 1'b0; cin = 1'b1;
  #10;
  a = 1'b1; b = 1'b1; cin = 1'b0;
  #10;
  a = 1'b1; b = 1'b1; cin = 1'b1;
  #10;
   
   $finish;
end

  initial begin

  $monitor("a=%0b, b=%0b, cin=%0b, sum=%0b, cout=%0b", a, b, cin, sum, cout);

end
  

endmodule
