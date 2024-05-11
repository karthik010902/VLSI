class drive;
  trans pkt;
  mailbox box;
  virtual intface vintf;  
  
  function new(virtual intface vintf,mailbox box);
    this.box=box;
    this.vintf=vintf;
  endfunction
  
  task dro;
    pkt=new();
    repeat(190)
      begin
        box.get(pkt);
        vintf.D=pkt.D;
        pkt.Q=vintf.Q;
        #5;
      end
  endtask
endclass
