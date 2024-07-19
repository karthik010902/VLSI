// Bidirection constraint 
class randclass;
  randc bit[3:0] v1;
  
  // multiple constraints possible for single variable
  // but need to avoid conflict, otherwise it will return error.
  constraint const1{
    v1 dist{10:=1, [11:13]:=5, 3:=1};
  }
  
  constraint const2{
    v1>2; v1<14; v1!=4; v1!=6;
  }
  
endclass

module bidirection;
  randclass c=new;
  
  initial begin
    for(byte i=0; i<8; i++)begin
      void'(c.randomize());
      $display("\n\t randomize iteration[%0d] --> %0d",i,c.v1);
    end
  end
  
endmodule
