`include "enviroment.sv"

class tester;
  enviro ent;
  virtual intface vintf;
  mailbox box;
  
  function new(virtual intface vintf,mailbox box);
    this.vintf=vintf;
    this.box=box;
  endfunction
  
  task mem;
    box=new();
    ent=new(vintf,box);
  endtask
  
  task run;
    fork
      ent.obj;
      ent.run;
    join 
  endtask
  
endclass
