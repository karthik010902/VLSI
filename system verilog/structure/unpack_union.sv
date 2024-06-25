module upack_union;
  // union share the max size memory to all members
  // MSV ---> maximum size variable
  // msv ---> minimum size variable
  union {bit[7:0] MSV; bit[3:0] msv;} U1;
  
  initial
    begin
      U1.MSV='hAB;
      $display("--------------------------------");
      $display("UNION name : U1");
      $display("MSV=%0h, msv=%0h",U1.MSV,U1.msv);
      $display("----------------------------");
      U1.msv='hF;
      $display("UNION name : U1");
      $display("MSV=%0d, msv=%0d",U1.MSV,U1.msv);
      $display("----------------------------");
      
    end
endmodule
