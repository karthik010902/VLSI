
class parent;
  rand bit[3:0]v1;
  randc bit[3:0]v2;
  
  constraint cons{v1==10;v2==5;}
  
endclass

class child extends parent;
  constraint cons{v1==15;v2==11;}
endclass

module overiding;
  child c=new;
  
  initial begin
    for(bit[2:0]i=0;i<5;i++)begin
      if(c.randomize())
        $display("\n\t [%0d] a=%0d b=%0d",i,c.v1,c.v2);
      else 
        $display("\n\t randomize failed");
    end
  end
  
endmodule
