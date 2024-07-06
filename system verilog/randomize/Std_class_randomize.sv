
class std_const;
  bit[3:0]a;
  rand bit[3:0]b;
  
  function void display;
    bit[3:0]c;
    //void'(std::randomize(a) with {a>11;b=5;);
    if(std::randomize(this))
      $display("\n\t [%0t] a=%0d b=%0d c=%0d",$time,a,b,c); 
    if(randomize(a))
      $display("\n\t [%0t] a=%0d b=%0d c=%0d",$time,a,b,c);
    if(std::randomize(b) with{a<=5;a>=1;b>=11;b<=15;})
      $display("\n\t [%0t] a=%0d b=%0d c=%0d",$time,a,b,c);
    if(this.randomize())
      $display("\n\t [%0t]a=%0d b=%0d c=%0d",$time,a,b,c);
    
  endfunction
  
endclass

module std_class;
  std_const z=new();
  
  initial begin
    repeat(5)
      
    z.display();
  end
  
endmodule
