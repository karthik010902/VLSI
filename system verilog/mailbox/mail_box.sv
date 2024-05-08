// mailbox 
module mb;
  mailbox box=new(4);                              // declare mailbox
  bit[3:0] info;
  
  initial
    begin
      for(int i=0; i<4; i++)
        begin
          #1
          info=$random;
          box.put(info);                           // .put() used for store data in mailbox
          $display("%0tns put_item%0d store_msg%0d",$time,info,box.num()); // .num() function return no.of stored messages
        end
      $display("----------------------------------------------------");
    end
  
  initial
    begin
      for(int j=0; j<4; j++)
        begin
          #10
          box.get(info);                          // .get() used for retrieve data
          $display("%0tns get_item%0d stored_msg%0d",$time,j,box.num());
        end
      $display("----------------------------------------------------");
    end
endmodule
          
      
