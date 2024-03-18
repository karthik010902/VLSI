module logical_operators_tb;
  reg [3:0]a,b,c,d;
  wire x;
  logical_operators logical_operators
  (.a(a),.b(b),.c(c),.d(d),.x(x));
  initial begin
    $dumpfile("logical_operators.vcd");
    $dumpvars(1,logical_operators_tb);
    $monitor("t=%d a=%b b=%b b=%b d=%b x=%b",$time,a,b,c,d,x);
  end
  initial begin
    a=0001;
    b=0010;
    c=1100;
    d=1010;
    #10
    #10
    $finish;
  end
endmodule
