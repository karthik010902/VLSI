// interface connect design with testbench
interface intface;
  logic clk;
  logic rst;
  logic D;
  bit Q;
endinterface
// design
module dff(clk,rst,D,Q);
  input clk;
  input rst;
  input D;
  output reg Q;
  
  always@(posedge clk or posedge rst)
    begin
      if(rst)
        Q<=0;
      else
        Q<=D;
    end
  
endmodule
