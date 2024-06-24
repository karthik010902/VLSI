module structure;
  // in this code i'm using different method to assign values
  struct {string name="abinash";byte age=22;} friend1;
  struct {string name;bit[4:0] age;} friend2;
  struct {string name;reg[4:0]age;} friend3;
  
  initial begin
    friend2='{"antony",22};
    friend3='{name:"ram",age:25};
    
    $display("-----------------------------------");
    $display("friend1=%0p",friend1);
    $display("name=%0s, \n age=%0d", friend1.name, friend1.age);
    $display("--------------------------------");
    $display("friend2=%0p",friend2);
    $display("name=%0s, \n age=%0d",friend2.name,friend2.age);
    $display("--------------------------------");
    $display("friend3=%0p",friend3);
    $display("name=%0s, \n age=%0d",friend3.name,friend3.age);
    $display("--------------------------------");
  end
endmodule
