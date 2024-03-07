//code for grey_to_binary
module grey_to_binary_tb;
  reg g1,g2,g3,g4;
  wire b1,b2,b3,b4;
  grey_to_binary gtb(.g1(g1),.g2(g2),.g3(g3),.g4(g4),.b1(b1),.b2(b2),.b3(b3),.b4(b4));
 initial begin  //monitor and dump instructions
   $monitor("g1=%0d g2=%0d g3=%0d g4=%0d b1=%0d b2=%0d b3=%0d b4=%0d",g1,g2,g3,g4,b1,b2,b3,b4);
    $dumpfile("grey_to_binary.vcd");
    $dumpvars(1,grey_to_binary_tb);
  end
  initial begin  //input values
    g1=0; g2=0; g3=0; g4=0;
    #10
    g1=0; g2=0; g3=0; g4=1;
    #10
    g1=0; g2=0; g3=1; g4=1;
    #10
    g1=0; g2=0; g3=1; g4=0;
    #10
    g1=0; g2=1; g3=1; g4=0;
    #10
    g1=0; g2=1; g3=1; g4=1;
    #10
    g1=0; g2=1; g3=0; g4=1;
    #10
    g1=0; g2=1; g3=0; g4=0;
    #10
    g1=1; g2=1; g3=0; g4=0;
    #10
    g1=1; g2=1; g3=0; g4=1;
    #10
    g1=1; g2=1; g3=1; g4=1;
    #10
    g1=1; g2=1; g3=1; g4=0;
    #10
    g1=1; g2=0; g3=1; g4=0;
    #10
    g1=1; g2=0; g3=1; g4=1;
    #10
    g1=1; g2=0; g3=0; g4=1;
    #10
    g1=1; g2=0; g3=0; g4=0;
    #10
    $finish;
  end
endmodule
