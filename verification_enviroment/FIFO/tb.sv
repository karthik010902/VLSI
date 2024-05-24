// Code your testbench here
// or browse Examples
`include "enviroment.sv"
`include "interface.sv"

module tb;
  environment env;

intf inf();
fifo dut(inf.clk, inf.rst, inf.wr, inf.rd, inf.data_in, inf.data_out, inf.empty, inf.full);

initial
	inf.clk <= 0;

always #10 inf.clk <= ~inf.clk;

initial begin
	env = new(inf);
	env.gnt.count = 30;
	env.run();
end

initial begin
	$dumpfile("fifo.vcd");
	$dumpvars(0,tb);
  #2000
  $finish;
end

endmodule
