module d_array;
  byte d[];
  
  initial begin
    
    d=new[10];
    d='{20,50,80,10,30,60,70,90,100,40};
    $display("*****************************************************");
    $display("\n\t array           : %0p",d);
    
    // without array method
    for(byte i=1;i<$size(d);i++)begin
      
      foreach(d[j])begin
        automatic byte t=d[i];
        
        if(d[i]<d[j])begin
          d[i]=d[j];
          d[j]=t;
        end
      
      end
      
    end
    $display("\n\t without sort()  : %0p",d);
    $display("******************************************************");
         
  end
  
endmodule
