// Encapsulation is hiding variable in class
// parent class
class parent;
  string p_name="nazeer";
  local shortint atm_pin=3301;
  // method 1
  task dis();
    $display("\n***************************************************");
    $display("\t \t \t \t parent class exicuted");
  endtask
  // method 2
  task atm_card();
    $display("\n \t atm card pin no : %0d",atm_pin);
  endtask
  
endclass

// child class
class child extends parent;
  string c_name="mobarak";
  
  task dis();
    $display("\n***************************************************");
    $display("\t \t \t \t child class exicuted");
  endtask
  
endclass

module encap;
  parent p1=new();
  child c1=new();
  
  initial begin
    
    p1.dis();
    $display("\n\t parent name : %0s",p1.p_name);

    // we can only access the local variable through the same class method
    p1.atm_card();
    
    // we can't directly access the local variable 
    //$display("\n \t atm card pin no : %0d",p1.atm_pin); // uncommand the line to check the error
    //$display("\n \t atm card pin no : %0d",c1.atm_pin);
    
    c1.dis();
    $display("\n\t parent name : %0s",c1.p_name);
    $display("\n\t child name  : %0s",c1.c_name);
    c1.atm_card();
    $display("______________________________________________________");
  end
  
endmodule
