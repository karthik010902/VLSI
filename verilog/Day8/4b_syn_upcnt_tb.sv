module tb;
	reg clk;
	reg rst;
	wire [3:0]out;

cnt dut(.clk(clk), .rst(rst), .out(out));

initial
begin
	clk=0;
	forever #5 clk=~clk;
end

initial
begin
	$monitor("time=%0t, clk=%0b, rst=%0b, out=%0d",$time,clk,rst,out);
	rst=1;
	#11
	rst=0;
	#150
	$finish;
end

initial
begin
	$dumpfile("cnt.vcd");
	$dumpvars(0,tb);
end

endmodule
