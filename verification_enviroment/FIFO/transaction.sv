class transaction;
	
	rand bit oper;          // randomize bit for operation control (1 or 0)
	bit rd,wr;              // read & write control bits
	bit [7:0]data_in;       // 8bit data input
	bit full, empty;        // flags for full & empty status
	bit [7:0]data_out;      // 8bit data output
         
	// constraint to randomize 'oper' with 50% of 1 & 50% of 0
	constraint oper_ctrl {oper dist {1 :/ 50, 0 :/ 50};}

endclass

