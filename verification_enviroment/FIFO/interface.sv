interface intf;

	logic clk, rd, wr;       // clock, read, write signals
	logic full, empty;       // flags indicating fifo status
	logic [7:0]data_in;      // data input
	logic [7:0]data_out;     // data output
	logic rst;               // reset signal

endinterface
