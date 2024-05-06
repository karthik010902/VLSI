class rando;
  rand byte count;                                            // rand keyword randomize the varible value
  rand bit[3:0] data;                                         // rand keyword randomize the varible value
  
  function void dis;
    $display("*************************************");
    $display("\t count=%0d,    \t data=%0h    ",count,data);
    $display("-------------------------------------");
  endfunction
endclass

module randomization;
  rando r1=new();
  initial
    begin
      for(int i=0; i<10; i++)
        begin
          r1.randomize();                                   // calling randomize function | randomize function randomize the rand varibles value
          r1.dis();
        end
    end
endmodule
          
