module dynamic_casting;
  
  typedef enum{DUKE=390,NINJA=300}bike;
  
  initial
    begin
      bike b1;
      $display("---------------------");
      $cast(b1,390);
      $display("\t b1 : %0s",b1.name());
      $cast(b1,400+1);                   // expression invalid | command the line to avoid error
      $display("\t b1 : %0s",b1.name());

    end
  
endmodule
