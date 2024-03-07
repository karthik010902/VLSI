module comparator_tb;
  reg [3:0] a,b;
  wire eq,lt,gt;
  
  comparator DUT(.a(a),.b(b),.eq(eq),.lt(lt),.gt(gt));
  
  initial begin
   a = 4'b1100;
   b = 4'b1100;
   #10;
 
   a = 4'b0100;
   b = 4'b1100;
   #10;
 
   a = 4'b1111;
   b = 4'b1100;
   #10;
 
   a = 4'b0000;
   b = 4'b0000;
   #10;
   $stop;
  end
initial begin
  $monitor("%t  a[0]=%d a[1]=%d a[2]=%d a[3]=%d  b[0]=%d b[1]=%d b[2]=%d b[3]=%d eq=%d lt=%d gt=%d",$time ,a[0],a[1],a[2],a[3],b[0],b[1],b[2],b[3],eq,lt,gt);
  $dumpfile("comparator.vcd");
  $dumpvars(1,comparator_tb);
            end
endmodule
