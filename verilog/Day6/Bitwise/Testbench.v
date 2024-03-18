module bitwise_tb;
  reg [3:0]x,y,z;
  wire [3:0]y1,y2,y3,y4,y5,y6;
  bitwise bitwise
  (.x(x),.y(y),.z(z),.y1(y1),.y2(y2),.y3(y3),.y4(y4),.y5(y5),.y6(y6));
  initial begin
    $dumpfile("bitwise.vcd");
    $dumpvars(1,bitwise_tb);
    $monitor("t=%d x=%b y=%b z=%b y1=%b,y2=%b,y3=%b,y4=%b,y5=%b y6=%b",$time,x,y,z,y1,y2,y3,y4,y5,y6);
  end
  initial begin
    x=1001;y=0101;z=0000;
    #10 $finish;
  end
endmodule
