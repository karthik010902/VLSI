// inline constraint with conflict
class randclass;
  randc bit[3:0]a;
  
  constraint cons{a>5;}
  
endclass

module inline;
  randclass c=new;
  bit check;
  
  initial begin
     // conflict constrait
    check=c.randomize() with{a==3;};
    if(check) $display("\n\t randomize run successful --> a=%0d",c.a);
    else $display("\n\t randomize failed due to conflict --> a=%0d",c.a);
    
  end
endmodule
                  
      
