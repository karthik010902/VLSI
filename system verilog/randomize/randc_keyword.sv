/* 1. randc randomize the variable values in cycle order.
   2. randc don't repeat the same value again.
*/
class rando;
  randc byte data;                                         
  randc bit[2:0] addr;
  
  function void dis;
    $display("\n data=%0d, addr=%0b",data,addr);
  endfunction
endclass

module randomize;
  rando r1=new();
  initial
    begin
      for(int i=0; i<10; i++)
        begin
          r1.randomize();
          r1.dis();
        end
    end
endmodule

    
