// Code your testbench here
module fulladder_tb;
reg A, B, Cin;
wire S, Cout;

fulladder FA (.A(A),.B(B) ,.Cin(Cin), .S(S), .Cout(Cout));
 
initial begin //input values
    A=0;B=0;Cin=0;
    #10
    A=0;B=0;Cin=1;
    #10
    A=0;B=1;Cin=0;
    #10
    A=0;B=1;Cin=1;
    #10
    A=1;B=0;Cin=0;
    #10
    A=1;B=0;Cin=1;
    #10
    A=1;B=1;Cin=0;
    #10
    A=1;B=1;Cin=1;
    #10 
$finish();
end
initial begin 
//monitor and dump instructions
  $monitor("%t A=%d B=%d Cin=%d S=%d cout=%d",$time ,A,B,Cin,S,Cout);
  $dumpfile("fulladder.vcd");
  $dumpvars(1,fulladder_tb);
end
            
endmodule
