
module mux8by1_tb;
  reg s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8;
  wire y;
  mux8by1 mux(.s0(s0),.s1(s1),.s2(s2),.i1(i1),.i2(i2),.i3(i3),.i4(i4),.i5(i5),.i6(i6),.i7(i7),.i8(i8),.y(y));
//information of dump and monitor
initial begin
  $monitor("s0=%0b s1=%0b s2=%0b i1=%0b i2=%0b i3=%0b i4=%0b i5=%0b i6=%0b i7=%0b i8=%0b y=%0b", s0,s1,s2,i1,i2,i3,i4,i5,i6,i7,i8,y);
  $dumpfile("mux8by1.vcd");
  $dumpvars(1,mux8by1_tb);
end
//input possibilities
initial begin
  s0=0; s1=0; s2=0; i1=1; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0; i8=0;
  #100
  s0=0; s1=0; s2=1; i1=0; i2=1; i3=0; i4=0; i5=0; i6=0; i7=0; i8=0;
  #100
  s0=0; s1=1; s2=0; i1=0; i2=0; i3=1; i4=0; i5=0; i6=0; i7=0; i8=0;
  #100
  s0=0; s1=1; s2=1; i1=0; i2=0; i3=0; i4=1; i5=0; i6=0; i7=0; i8=0;
  #100
  s0=1; s1=0; s2=0; i1=0; i2=0; i3=0; i4=0; i5=1; i6=0; i7=0; i8=0;
  #100
  s0=1; s1=0; s2=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=1; i7=0; i8=0;
  #100
  s0=1; s1=1; s2=0; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=1; i8=0;
  #100
  s0=1; s1=1; s2=1; i1=0; i2=0; i3=0; i4=0; i5=0; i6=0; i7=0; i8=1;
  #100
 
  $finish;
end
endmodule
