module queue;
  
  string bike_brand [$];
  
  initial begin
    
    bike_brand={"ktm","kawasaki","bmw","triumph","ducati","beneli"};
    
    $display("*********************************************************************");
    $display("\n\t queue size              : %0d",bike_brand.size());
    $display("\n\t queue items             : %0p",bike_brand);
    $display("\n\t queue last item         : %0s",bike_brand.pop_back());
    $display("\n\t queue first item        : %0s",bike_brand.pop_front());
   
    bike_brand.push_front("harley");
    $display("\n\t queue push item in front: %0p",bike_brand);
    
    bike_brand.push_back("yamaha");
    $display("\n\t queue push item in back : %0p",bike_brand);
    $display("\n\t queue silicing 2:5      : %0p",bike_brand[2:5]);
    $display("\n\t queue silicing 3 to end : %0p",bike_brand[3:$]); 
    
    bike_brand.insert(3,"honda");
    $display("\n\t insert using index      : %0p",bike_brand);
    
    bike_brand.delete(); 
    $display("\n\t queue items             : %0p",bike_brand);
    $display("*********************************************************************");
    
  end
  
endmodule
