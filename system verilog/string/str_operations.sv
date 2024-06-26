module string_operations;
  
  string f1="Siva";
  string f2="Abinash";
  string f3="Akash";
  string f4="Abinash";
  string f5;
  string f6="abinash";
  
  initial
    begin
      f5="Akash";
      $display("*****************************************");
      
      // string equality
      if(f4==f2)begin
        $display("string f4 & f2 : equal");
        
        if(f2==f6) $display("string f2 & f6 : equal");
        else $display("string f2 & f6 : unequal");
      end
      
      // string inequality
      if(f1!=f2)begin
        $display("string f1 & f2 : unequal");
        
        // string comparison
        if(f1>f2) $display("string f1 greater than f2");
        if(f2<f6) $display("string f2 lesser than f6");
        if(f3>=f5) $display("string f3 greater than or equal to f5");
        if(f2<=f3) $display("string f2 lesser than or equal f3");
      
      end
      
      // string indexing
      for(logic[2:0] i=0;i<$size(f1);i++)
        $display("\n f1[%0d] = %0s",i,f1[i]);
      
      // string replication
      $display("\n string replication f5 : %0s",{5{f5}});
      
      // string concatenation
      $display("\n string concatenation : %0s",{f5," Antony ",f2});
           
    end
  
endmodule
