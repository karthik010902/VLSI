// declare multiple expression in constraint
class rando;
  rand bit[3:0] data;
  randc bit[3:0] addr;
  constraint c_rand{data>5;data<10;data!=8;}
  constraint c_randc{addr<15;addr>10;addr==12;};
  
  function void dis;
    $display("---------------------------------------------");
    $display("\t data=%0d \t addr=%0d",data,addr);
    $display("---------------------------------------------");
  endfunction
endclass

module test;
  initial
    begin
      rando r1=new();
      repeat(5)
        begin
          r1.randomize();
          r1.dis();
        end
    end
endmodule
