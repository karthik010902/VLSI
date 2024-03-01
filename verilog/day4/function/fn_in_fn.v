

module t1;

  task msg();         // 1st task
    begin 
      $display("==================this message from task====================");
      fun1(4,8);
      fun1(9,3);
      fun1(5,5);

    end
  endtask
  
  function fun1;
    input [7:0]a,b;
    if(a>b)
      $display("=========== a is greater than b ==========");
    else if(a<b)
      $display("=========== a is lesser than b ===========");
    else
      $display("=========== a is equal to b ==============");
  endfunction
    
  initial 
    msg();
endmodule

