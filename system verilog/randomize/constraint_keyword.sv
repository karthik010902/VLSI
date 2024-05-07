class cntrnt;
  randc byte data;
  rand byte addr;
  
  constraint data_val{data>100;}                                        // constraint randomize value b/w the range
  constraint addr_val{addr<100;}
endclass

module test;
  cntrnt c1=new();
  initial
    begin
      repeat(10)
        begin
          c1.randomize();
          $display("\n data_val=%0d,\t addr_val=%0d",c1.data,c1.addr);
          $display("\n -----------------------------------------------");
        end
    end
endmodule
