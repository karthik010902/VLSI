// include test file in testbench (connecting testbech with test file)
`include "test.sv"

// testbench module name
module DFF_tb;
  
  tester t;                                                          // next 2 line handle creating
  mailbox box;
  intface intf();                                                    // interface calling
  
  // instante for dut and interface
  dff dut(.clk(intf.clk), .rst(intf.rst), .D(intf.D), .Q(intf.Q));
  
  //clock generate
  initial
    begin
      intf.clk=0;
      forever #5 intf.clk=~intf.clk;
    end

  // object creating
  initial
    begin
      box=new();
      t=new(intf,box);
      fork                                                           // fork and join used for concurrent execution        
        t.mem();
        t.run();
      join
    end
      
  initial
    begin
      intf.rst=0;
      #100
      intf.rst=1;
      #100
      $finish;
    end
  
  initial
    begin
      $dumpfile("dff.vcd");
      $dumpvars(0,DFF_tb);
      $monitor("time=%0t, clk=%0b, rst=%0b, D=%0b, Q=%0b",$time,intf.clk,intf.rst,intf.D,intf.Q);
    end
  
endmodule
