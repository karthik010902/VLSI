// generating odd numbers using constraint
class rclass;
  randc shortint a[100];

  constraint cons{
    foreach(a[j])
      a[j]==j;
  }
  
endclass 

module test;
  rclass c=new;
  initial begin
    c.randomize();
    foreach(c.a[j])begin
      if(c.a[j]%2!=0)begin
        c.a[j]=j;
      $display("\n\t %0d",c.a[j]);
      end
    end
  end
endmodule
