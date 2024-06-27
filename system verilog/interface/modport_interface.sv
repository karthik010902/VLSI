interface g_if;
  
  logic a;
  logic b;
  logic y;
  
  modport tb(input a,b, output y);
  modport dut(input y, output a,b);
  
endinterface
