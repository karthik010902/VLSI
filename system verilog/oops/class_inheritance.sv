/*create extended and access the base class method
	1. base class name is "parent_class".
    2. extended class name is "child_1","child_2".
*/
// create parent class
class parent_class;
  
  string p_name = "abi";                      // create parent name
  
  function void dis;
    $display("-------------------------");
    $display("  parent class executed  ");
  endfunction
  
endclass
// 1st child class
class child_1 extends parent_class;
  
  string chld1_name = "alex";                 // 1st child name
  
  function void dis;
    $display("-------------------------");
    $display("  child_1 class executed ");
  endfunction
  
endclass
// 2nd child class
class child_2 extends parent_class;
  
  string chld2_name = "mac";                 // 2nd child name
  
  function void dis;
    $display("-------------------------");
    $display(" child_2 class executed  ");
  endfunction
  
endclass
// testbench module 
module inheritance;
  
  parent_class p=new();                      // create handle and object for parent class
  child_1     c1=new();                      // next 2 lines are create handle and object for 2 child classes
  child_2     c2=new();
  
  initial 
    begin
      p.dis();                               // next 3 lines display the class methods
      c1.dis();
      c2.dis();
      c1.p_name     = "akash";               // change parent name using child 1 class
      c2.chld2_name = "antony";              // change child2 name 
      $display("************************");
      $display("     p_name = %0s  ",p.p_name); 
      $display("  c1.p_name = %0s  ",c1.p_name); // parent name update only reflected in child 1 class
      $display(" chld2_name = %0s  ",c2.chld2_name);
    end
 
endmodule
