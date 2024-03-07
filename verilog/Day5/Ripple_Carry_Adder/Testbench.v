// Code for ripple_carry_adder testbench 
module ripple_carry_adder_tb;
  reg [3:0] A,B;
  reg C_in;
  wire [3:0] S;
  wire C_out;
  ripple_carry_adder rca(.A(A),.B(B),.C_in(C_in),.S(S),.C_out(C_out));
initial begin  //input values
C_in = 0;
A = 4'b0110;
B = 4'b1100;
#10
A = 4'b1110;
B = 4'b1000;
#10
A = 4'b0111;
B = 4'b1110;
#10
A = 4'b0010;
B = 4'b1001;
#10
$finish();
end
initial begin //monitor and dump instructions
  $monitor("%t A[0]=%d  A[1]=%d  A[2]=%d  A[3]=%d B[0]=%d B[1]=%d B[2]=%d B[3]=%d  C_in=%d S[0]=%d S[1]=%d S[2]=%d S[3]=%d  C_out=%d",$time, A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3],C_in,S[0],S[1],S[2],S[3],C_out);
  $dumpfile("ripple_carry_adder.vcd");
  $dumpvars(1,ripple_carry_adder_tb);
end
endmodule
    
  
