module function_example;
  function integer sum_ (input integer x,
                 	   				   y
 					               	   ); 
    begin
     sum_ = x+ y ; 
    end
  endfunction
  initial
    $display("sum ", sum_(3,2));
endmodule
