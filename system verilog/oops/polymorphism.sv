/* polymorphism means "creating many form"
	1. polymorphism is a behavioral mechanism.
    2. inheritance is a structural mechanism. " both are different"
*/
// base class or parent class
class base_class;
  string b_name = " first base class";
  
  virtual function void dis;
    $display("===================================");
    $display("    The base class is executed     ");
  endfunction
endclass
// extended_1 class or child_2 class
class ext1 extends base_class;
  string e1_name = " extended class one ";
  
  function void dis();
    $display("-----------------------------------");
    $display("   The ext1 class is executed      ");
  endfunction
endclass
// extended_2 class or child_2 class
class ext2 extends base_class;
  string e2_name = " extended class two ";
  
  function void dis;
    $display("***********************************");
    $display("   The ext2 class is executed      ");
  endfunction
endclass

module polymorphism;
  
  base_class b1,b2;                              // 2 handle creatd for base class
  ext1 ec1=new();                                // next 2 lines declare handle and object creation for extended class
  ext2 ec2=new();
  
  initial
    begin
      b1=ec1;                                    // next 2 are class assignment
      b2=ec2;
      b1.dis();
      b2.dis();      
    end
endmodule
 
  
  
 
