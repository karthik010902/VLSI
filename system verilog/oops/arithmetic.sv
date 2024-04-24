// arithmetic operation using oops
class calculator;            // creating object
  
 int a,b,add,sub,mul,div;    // variables and properties
  
  function operate();       // 1st method
   
    add=a+b;
    sub=a-b;
    mul=a*b;
    div=a/b;
   
  endfunction
  
  function dis();          // 2nd method
    $display("//////////////////////////////////////");
    $display("//////////     %0d+%0d=%0d     /////////",a,b,add);
    $display("//////////     %0d-%0d=%0d     /////////",a,b,sub);
    $display("//////////     %0d*%0d=%0d     ///////",a,b,mul);
    $display("//////////     %0d/%0d=%0d     /////////",a,b,div);
    $display("////////////////////////////////////");
  endfunction
  
endclass

module test;
  
  calculator calc=new();     // create handle
  
  initial 
    begin
      calc.a=18;            // declare values for class 
  	  calc.b=12;            // declare values for class 
      calc.operate();       // callig 1st method
      calc.dis();           // caling 2nd method
    end
  
endmodule
