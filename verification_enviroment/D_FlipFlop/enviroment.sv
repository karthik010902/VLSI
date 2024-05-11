`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"

class enviro;
  
  virtual intface vintf;
  mailbox box;
  genrate genrt;
  drive dri;
  
  function new(virtual intface vintf,mailbox box);
    this.vintf=vintf;
    this.box=box;
  endfunction
  
  task obj;
    box=new();
    genrt=new(box);
    dri=new(vintf,box);
  endtask
  
  task run;
    fork
      genrt.gen;
      dri.dro;
    join
  endtask
  
endclass
