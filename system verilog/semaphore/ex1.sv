// semaphore blocks the process until you put the keys 
module semaphone;
  semaphore sema;
  initial begin
    sema=new(2);
    fork
      dis();
      dis();
    join
  end

  task dis();
    sema.get(2); // here keys are getting
    $display("\n\t %0t start time",$time);
    #50
    sema.put(2); // here keys are putting
    $display("\n\t %0t end time",$time);
  endtask
  
endmodule
  
