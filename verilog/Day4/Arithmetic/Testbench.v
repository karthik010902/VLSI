module arithmetic_tb;
  reg [7:0]a,b;
  wire [7:0]y1,y2,y3,y4,y5;
  arithmetic arithmetic(.a(a),.b(b),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5));
  initial begin
    $dumpfile("arithmetic.vcd");
    $dumpvars(1,arithmetic_tb);
    $monitor("t=%d a=%b b=%b y1=%d,y2=%d,y3=%d,y4=%d,y5=%d",$time,a,b,y1,y2,y3,y4,y5);
  end
  initial begin
    a=8;
    b=4;
    #10 $finish;
  end
endmodule
  
