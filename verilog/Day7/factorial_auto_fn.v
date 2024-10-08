module function_auto ();

 function automatic [7:0] factorial;
  input [7:0] i_num; 
  begin
   if (i_num == 1)
    factorial = 1; 
   else
    factorial = i_num * factorial(i_num-1);
  end
 endfunction
 
 initial
   begin
    $display("Factorial of 1 = %d", factorial(1));
    $display("Factorial of 2 = %d", factorial(2));
    $display("Factorial of 3 = %d", factorial(3));
    $display("Factorial of 4 = %d", factorial(4));
    $display("Factorial of 5 = %d", factorial(5));
  end
endmodule
