// Code your design here
module fifo(
	input clk, rst, wr, rd,
	input [7:0]din,
	output reg [7:0]dout,
	output empty, full);

reg [3:0]wptr=0, rptr=0;                    // pointer for write & read
reg [4:0]cnt=0;                             // counter for tracking no.of element in fifo

reg [7:0] mem [15:0];                       // memory array to store data

always @(posedge clk)
begin
	if(rst)                             // when rst is asserted reset wptr, rptr, cnt.
	begin
		wptr <= 0;
		rptr <= 0;
		cnt  <= 0;
	end

	else if(wr && !full)                // write data from fifo if it's not full
	begin
		mem[wptr] <= din;
		wptr      <= wptr + 1;
		cnt       <= cnt + 1;
	end

	else if(rd && !empty)               // read data from fifo if it's not empty
	begin
		dout <= mem[rptr];
		rptr <= rptr + 1;
		cnt  <= cnt - 1;
	end

end

assign empty = (cnt == 0) ? 1'b1 : 1'b0;    // determine if fifo is empty
assign full  = (cnt == 16) ? 1'b1 : 1'b0;

endmodule
