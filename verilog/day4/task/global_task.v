task add;            // declare task name
    input [7:0]a,b;    // " inputs
    output [7:0]c;     // " outputs
    
    begin
      c=a+b;           // task statement

    end
  endtask

module t1;

  reg [7:0]sum;  
    initial begin
      add(7,7,sum);    // calling task with arguments in ip&op order
      $monitor("sum=%0d", sum);
    end
endmodule

module t2;
  initial begin
  reg [7:0]sum1;
    add(9,9,sum1);
    $monitor("sum1=%0d",sum1);
  end
endmodule
    
