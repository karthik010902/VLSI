module Bcd_excess3_tb;
// Inputs
  reg [3:0] BCD;
// Outputs
  wire [3:0] EXC;
// Instantiate the Unit Under Test (UUT)
  Bcd_excess3 uut (.BCD(BCD),.EXC(EXC));
initial begin
// Initialize Inputs
BCD=3'b0000;
#10;
BCD=4'b0001;
#10;
BCD=4'b0010;
#10;
BCD=4'b0011;
#10;
BCD=4'b0100;
#10;
BCD=4'b0101;
#10;
BCD=4'b0110;
#10;
BCD=4'b0111;
#10;
BCD=4'b1000;
#10;
BCD=4'b1001;
#10
  $finish();
end
initial begin
  $monitor("%t BCD[0]=%d BCD[1]=%d BCD[2]=%d BCD[3]=%d EXC[3]=%d EXC[2]=%d EXC[1]=%d EXC[0]=%d",$time,BCD[0],BCD[1],BCD[2],BCD[3],EXC[3],EXC[2],EXC[1],EXC[0]);
  $dumpfile("Bcd_excess3.vcd");
  $dumpvars(1,Bcd_excess3_tb);         
end
endmodule
