// interface block
interface fuladd;     
  logic a;
  logic b;
  logic ci;
  logic s;
  logic cry;
endinterface

// full adder module
module fa(
  input bit a,b,ci,
  output wire s,cry);
  
  wire sw,c1,c2;     
  
  ha h1(a,b,sw,c1);      // using half adder module
  ha h2(sw,ci,s,c2);     // using half adder module
  assign cry=c1|c2;      
  
endmodule

 // half adder module  
module ha(         
  input a,b,
  output su,car);
  
  assign su=a^b;       //half adder
  assign car=a&b;      //half adder
  
endmodule
