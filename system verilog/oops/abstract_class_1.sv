
virtual class fruit;
  string f_name="mango";
  byte f_price=50;
  
  function void dis();
    $display("********************* virtual class **********************************");
    $display("\t\ fruit name : %0s \t fruit price : %0d",f_name,f_price);
  endfunction
  
endclass

class menu extends fruit;
  string f_name="orange";
  byte f_price=40;
  
  function void display();
    $display("******************** extend class ************************************");
    $display("\t\ fruit name : %0s \t fruit price : %0d",f_name,f_price);
  endfunction
  
endclass

module abstract;
  
  menu c1=new();
  
  initial
    begin
      c1.f_price=60;
      c1.dis();
      c1.display();
    end
  
endmodule
  
  
  
