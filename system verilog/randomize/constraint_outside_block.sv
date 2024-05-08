// constraint outside the block
class rando;
  rand byte val1;
  randc bit[3:0] val2;
  constraint v_cnst1;
  constraint v_cnst2;
  
  function void dis;
     $display("--------------------------");
    $display("\t val1=%0d val2=%0d ",val1,val2);
     $display("--------------------------");
   endfunction
endclass

constraint rando::v_cnst1 {val1>-50;val1!=0;val1<5;};
constraint rando::v_cnst2 {val2<10;val2>6;};

module wob;
  rando a;
  initial
    begin
      a=new();
      
      repeat(15)
        begin
          a.randomize();
          a.dis();
        end
      
    end
endmodule
      
