module cnt(clk,rst,out);

input clk;
input rst;
output reg [3:0]out;

always@(posedge clk)
begin
	if(rst) out<=0;
	else out<=out+1;
end

endmodule
