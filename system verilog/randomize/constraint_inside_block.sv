// constraint inside block example code
class rando;
  rand int d1;
  randc int d2;
  constraint d1_cont{d1>10;d1<100;}
  constraint d2_cont{d2<500;d2>250;}
  
  function void dis;
    $display("-----------------------------");
    $display("\t d1=%0d, \t d2=%0d ",d1,d2);
    $display("-----------------------------");
  endfunction
endclass

module wb;
  
  initial
    begin
      rando r=new();
      
      repeat(5)
        begin
          r.randomize();
          r.dis();
        end
      
    end
endmodule
