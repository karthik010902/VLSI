module ex_module;
  reg a=0;
  initial
    a<=1;
endmodule

module tb;
  initial
    $display("[%0t] a=%0b",$time,ex_module.a);
endmodule

program pb;
  initial
    $display("[%0t] a=%0b",$time,ex_module.a);
endprogram
