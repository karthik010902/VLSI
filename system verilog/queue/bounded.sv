module queue;
  // bounded queue
  shortint numbers [$:4];
  
  initial begin
    
    numbers={55,88,22,99,50};
    
    $display("*********************************************************************");
    $display("\n\t queue size              : %0d",numbers.size());
    $display("\n\t queue items             : %0p",numbers);
    $display("\n\t queue last item         : %0d",numbers.pop_back());
    $display("\n\t queue first item        : %0d",numbers.pop_front());
    
    numbers.push_front(31);
    $display("\n\t queue push item in front: %0p",numbers);
    
    numbers.push_back(11);
    $display("\n\t queue push item in back : %0p",numbers);
    $display("\n\t queue silicing 1:4      : %0p",numbers[1:4]);
    
    numbers.delete(); 
    $display("\n\t queue items             : %0p",numbers);
    $display("*********************************************************************");
    
  end
  
endmodule
