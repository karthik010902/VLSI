  class A;
    int a = 5;
    function void disp();
      $display("1.Value of a = %0d",a);
    endfunction:disp
 
  endclass:A
 
  class B extends A;
   int a = 6;
   function void display();
      $display("2.Value of a = %0d",a);
   endfunction:display
 
  endclass:B
 
  module inh_sam();
     B b1;
     initial begin
      b1 = new;
      b1.a = 10;
      b1.disp();
      b1.display();
 
     end
  endmodule:inh_sam 
