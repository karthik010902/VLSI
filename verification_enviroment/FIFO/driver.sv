
class driver;

	virtual intf
  inf;                            // virtual interface to the fifo
	mailbox #(transaction) inbox;                // mailbox for communication
	transaction pkt;                             // transaction object for communication

  function new(virtual intf inf,mailbox #(transaction) inbox);
    this.inf = inf;
		this.inbox = inbox;
	endfunction

	// reset the DUT
	task reset();
		inf.rst <= 1'b1;
		inf.rd  <= 1'b0;
		inf.wr  <= 1'b0;
		inf.data_in <= 0;
		repeat(5) @(posedge inf.clk);
		inf.rst <= 1'b0;
		$display("[DRV] : DUT reset done");
		$display("-------------------------------------");
	endtask

	// write data to the fifo
	task write();
		@(posedge inf.clk);
		inf.rst <= 1'b0;
		inf.rd  <= 1'b0;
		inf.wr  <= 1'b1;
		inf.data_in <= $urandom_range(1, 10);
		@(posedge inf.clk);
		inf.wr <= 1'b0;
		$display("[DRV] : Data write data : %0d",inf.data_in);
		@(posedge inf.clk);
	endtask

	// read data from the fifo
	task read();
		@(posedge inf.clk);
		inf.rst <= 1'b0;
		inf.rd  <= 1'b1;
		inf.wr  <= 1'b0;
		@(posedge inf.clk);
		inf.rd <= 1'b0;
		$display("[DRV] : data read");
		@(posedge inf.clk);
	endtask

	// apply random stimulus to the dut
	task driv();
		forever begin
			inbox.get(pkt);
			if(pkt.oper == 1'b1)
				write();
			else
				read();
		end
	endtask

endclass

