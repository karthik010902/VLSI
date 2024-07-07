
class randome;
  rand logic[3:0]a;
  randc logic[3:0]b;
  
  extern constraint for_a;
  constraint for_b{b>5;b<9;}
  
endclass

constraint randome::for_a{a<3;a>1;}

module extern_class;
  randome r=new();
  
  initial begin
    repeat(5)begin
      if(r.randomize())
        $display("\n\t a=%0d b=%0d",r.a,r.b);
    end
  end
endmodule
