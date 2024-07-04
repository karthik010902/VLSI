
class weighted_class;
  rand logic[3:0]no1;
  rand logic[3:0]no2;
  // dist operators := , :/
  constraint n1{no1 dist{4:=2,7:=2,[11:15]:=4};}
  constraint n2{no2 dist{4:/2,6:/2,8:/2,14:/2,13:/2};}
  
endclass

module weighted_constraint;
  weighted_class c=new();
  
  initial begin
    for(reg[3:0]i=0;i<15;i++)begin
      void'(c.randomize());
      $display("\n\t [%0d] no1=%0d,  no2=%0d",i,c.no1,c.no2);
    end
  end
  
endmodule
    
