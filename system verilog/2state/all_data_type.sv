// Code your testbench here
// or browse Examples
module _2state;
  
  bit a;
  byte b;
  shortint c;
  int d;
  longint e;
  
  task value_assign;
    a=1;
    b=1;
    c=1566.1234;
    d=983648250.379552;
    e=9265965825.695592586;
  endtask
  
  task dis;
    $display("bit a=%0d",a);
    $display("byte b=%0d",b);
    $display("shortint c=%0d",c);
    $display("int d=%0d",d);
    $display("longint e=%0d",e);
  endtask
 
  initial begin
    $display("-------default value---------");
    $display(a);
    $display(b);
    $display(c);
    $display(d);
    $display(e);
    $display("-----------------------------");
    value_assign;
    dis; 
  end
endmodule
