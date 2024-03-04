module less_greater(input int a,b);                // input and datatype
  
  initial
    begin
    assign a=10;                                  // assign input value
  assign b=12;                                    // assign input value
  
      if(a<b)                                     // cond1
    $display("========= a lesser than b =======");
      else if (a>b)                               // cond2
    $display("========= a greater than b ======");
  else                                            // cond3
    $display("========= a is equal to b =======");
  end
endmodule
