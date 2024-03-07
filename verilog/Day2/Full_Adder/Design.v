// Code for full adder
module fulladder
( input A,
input B,
input Cin,
output S, 
output Cout );
    wire p,r,s;
    xor (p,A,B);
    xor (S,p,Cin);
    and(r,p,Cin);
    and(s,A,B);
    or(Cout,r,s);
endmodule
