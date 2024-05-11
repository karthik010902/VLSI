class genrate;
  trans pkt;
  mailbox box;
  
  function new(mailbox box);
    this.box=box;
  endfunction
  
  task gen;
    pkt=new();
    repeat(190)
      begin
        pkt.randomize();
        box.put(pkt);
        #5;
      end
 
  endtask
  
endclass
