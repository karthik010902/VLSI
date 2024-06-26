// casting used for convert one datatype to another datatype
module casting;
  integer integer_data;
  int int_data;
  shortint shortint_data;
  longint longint_data;
  bit bit_data;
  byte byte_data;
  real real_data;
  logic logic_data;
  
  task convert_2_int;
    integer_data='hDEADBEEF;
    $display("integer_data :  %0b",integer_data);
    int_data=int'(integer_data);
    $display("integer 2 int : %0b",int_data);
    
    shortint_data='hABCD;
    $display("shortint_data : %0b",shortint_data);
    int_data=int'(shortint_data);
    $display("shortint 2 int: %0b",int_data);
    
    longint_data='hABCDCAFEDEEDBEEF;
    $display("longint_data :  %0b",longint_data);
    int_data=int'(longint_data);
    $display("longint 2 int : %0b",int_data);
    
    bit_data=1;
    $display("bit_data :      %0b",bit_data);
    int_data=int'(bit_data);
    $display("bit 2 int :     %0b",int_data);
    
    byte_data='hAB;
    $display("byte_data :     %0b",byte_data);
    int_data=int'(byte_data);
    $display("byte 2 int :    %0b",int_data);
    
    real_data=10;
    $display("real_data :     %0f",real_data);
    int_data=int'(real_data);
    $display("real 2 int :    %0b",int_data);
    
    logic_data=1;
    $display("logic_data :    %0b",logic_data);
    int_data=int'(logic_data);
    $display("logic 2 int :   %0b",int_data);
  endtask
  
  initial begin
    $display("=====================================");
    convert_2_int;
    $display("-------------------------------------");
  end
  
endmodule
