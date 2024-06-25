module _4state;
  // 4 state data type default values
  // we can't assign values for wire
  reg a;
  wire b;
  logic c;
  time d;
  integer e;
  real f;
  
  task defaul;
    $display(a);
      $display(b);
      $display(c);
      $display(d);
      $display(e);
      $display(f);
  endtask
  
  task setvalue;
    a=10;
    c=15;
    d=7.5;
    e=25.5;
    f=16;
  endtask
  
  task display;
    $display(" reg a=%0b",a);
    $display(" logic c=%0b",c);
    $display(" time d=%0t",d);
    $display(" integer e=%0d",e);
    $display(" real f=%0f",f);
  endtask
  
  initial
    begin
      $display("---------------------------------");
      defaul;
      #10
      $display("---------------------------------");
      setvalue;
      display;
    end
  
endmodule
