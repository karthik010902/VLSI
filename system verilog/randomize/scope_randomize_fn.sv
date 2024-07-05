
module scope_randomize;
  bit[3:0]a;
  bit[3:0]b;
  bit[3:0]c;
  bit[3:0]d;
  // we can randomize "normal variable using scope ranomize function[std::randomize(v_name)]"  
  initial begin
    repeat(5)begin
      void'(std::randomize(a,b) with {a>5;b<15;});
      $display("\n\t a=%0d , b=%0d",a,b);
      void'(std::randomize(c) with{c inside{[11:12]};});
      void'(std::randomize(d) with{d>8;});
      $display("\n\t c=%0d , d=%0d",c,d);
    end
  end
  
endmodule
  
