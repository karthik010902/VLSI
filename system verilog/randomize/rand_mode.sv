// disable randomize
// rand_mode(0) "OFF"
// rand_mode(1) "ON"
class randclass;
  randc bit[3:0] a;
endclass

module dis_rand;
  randclass c=new;
  
  initial begin
    for(byte i=0;i<10;i++)begin
      
      if(i<5)begin
        c.rand_mode(0);
        c.randomize();
        $display("\n\t [%0d] randomize OFF --> a=%0d",i,c.a);
      end
      
      else begin
        c.rand_mode(1);
        c.randomize();
        $display("\n\t [%0d] randomize ON -->  a=%0d",i,c.a);
      end
      
    end
  end
  
endmodule
        
