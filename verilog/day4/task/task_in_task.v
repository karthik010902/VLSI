

module t1;

  reg [7:0]sum;  
    initial 
      begin
      msg();
        add(4,4,sum);
      end
  
  task msg();         // 1st task
    begin 
      $display("==================welcome====================");
      $display("=========this message from 1st task==========");
      add(8,8,sum);   // calling 2nd task in 1st task
    end
  endtask
  
  task add;            // declare task name // 2nd task
    input [7:0]a,b;    // " inputs
    output [7:0]c;     // " outputs
    
    begin
      $display("============now you are 2nd task=============");
      c=a+b;           // task statement
      $display("sum=%0d",c);
		
    end
  endtask
endmodule

