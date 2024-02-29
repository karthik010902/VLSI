module t1;
  
  task add;            // declare task name
    input [7:0]a,b;    // " inputs
    output [7:0]c;     // " outputs
    
    begin
      c=a+b;           // task statement

    end
  endtask
  
  reg [7:0]sum;  
    initial begin
      add(7,7,sum);    // calling task with arguments in ip&op order
      $monitor("sum=%0d", sum);
    end
endmodule
    
