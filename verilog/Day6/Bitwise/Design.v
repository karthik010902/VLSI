module bitwise(
  input [3:0]x,y,z,
  output reg [3:0]y1,y2,y3,y4,y5,y6);
  always @(*) begin
 
 y1=~x;
 y2=x&y;
 y3=x|y;
 y4=x~^y;
 y5=x&z;
 y6=x^z;
 end
 endmodule
