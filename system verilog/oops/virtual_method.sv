/* extended class with virtual funtion
	1. both base class and extended class have same named function "dis()".
    2. the base class dis() function is virtual and extended class dis() is non-virtual function.
    3. if calling dis() fuction the non-virtual function will execute.
*/
// base class
class base_class;
  
  string f_name = "abinash";                                          // base class properties
  string last_n = "sandiya";
  
  virtual function dis;                                               // To see the different just remove the virtual keyword
    $display("---------------------------------------------------");
    $display("                f_name = %0s                ",f_name);
    $display("                last_n = %0s                ",last_n);
    $display("---------------------------------------------------");
  endfunction
  
endclass
// extended class
class ext_class extends base_class;
  
  function dis;
    $display("---------------------------------------------------");
    $display("     string concatenation = %0s             ",{f_name,last_n});
    $display("---------------------------------------------------");
  endfunction
 
endclass

module test;
  
  initial
    begin
      
      ext_class c1=new();                                              // declare handle for extended class
      base_class b=new();                                              // declare handle for base class
      b=c1;                                                            // declare class assignment
      c1.dis();
      b.dis();
      
    end
  
endmodule


