module segment7_tb;
    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;
    // Instantiate the Unit Under Test (UUT)
    segment7 uut (.bcd(bcd),.seg(seg));
  initial begin
    $monitor("%t bcd[0]=%d bcd[1]=%d bcd[2]=%d bcd[3]=%d seg[0]=%d seg[1]=%d seg[2]=%d seg[3]=%d seg[4]=%d seg[5]=%d seg[6]=%d",$time,bcd[0],bcd[1],bcd[2],bcd[3],seg[0],seg[1],seg[2],seg[3],seg[4],seg[5],seg[6],seg[7]);
    $dumpfile("segment7.vcd");
    $dumpvars(1,segment7_tb);
  end
//Apply inputs
    initial begin
       for(i = 0;i < 16;i = i+1) //run loop for 0 to 15.
        begin
            bcd = i;
            #10; //wait for 10 ns
        end    
      $finish;
    end
endmodule
