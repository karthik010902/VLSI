// Code your testbench here
// or browse Examples
module ha_tb;  // declar module name
  
  reg a,b;     // store input
  wire s,c;    // store output
  
  halfadder ha(a,b,s,c);  // declare design module name
  
  initial begin  // input initial the statements
    
    a=1'b0;  // input signal
    b=1'b0;
    #10;  // time delay in nano sec
    
    a=1'b0;
    b=1'b1;
    #10;
    
    a=1'b1;
    b=1'b0;
    #10;
    
    a=1'b1;
    b=1'b1;
    #10;
     $finish; // finish the process
  end   // ends the initial statement 
  
  initial begin

    $monitor(" time=%0t , a=%0b , b=%0b , s=%0b , c=%0b", $time, a, b, s, c);
    $dumpfile("halfadder.vcd");
    $dumpvars(0,ha_tb);
        
  end
  
endmodule
  
  
