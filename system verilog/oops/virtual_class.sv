/* virtual class
     1. we can't access virtual class in normal handle method.
     2. but we can access virtual class through extended class.
*/
// crate virtual class
virtual class usr_profile;
  
  string u_name="karthikeyan";                                     // next 2 lines are virtual class properties
  int       age=21;
  
endclass

// create extended class for access the virtual class
class ext_class extends usr_profile;
  
  function void dis;                                               // extended class method                                            
    $display("------------------------------------------------");
    $display("              u_name = %0s              ",u_name);
    $display("                 age = %0b              ",age);
    $display("------------------------------------------------");
  endfunction
  
endclass

// create module 
module test;
  
  initial
    begin
      ext_class p1=new();                                         // create handle and object
      p1.dis();                                                   // access extended class method
      p1.u_name="sivasaravanan";                                  // declare value for virtual class variable
      p1.age=21;
      p1.dis();                                                   // display the updated values
    end
  
endmodule
    
