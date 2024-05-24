
class monitor;

	virtual intf inf;
	mailbox #(transaction) inbox;
	transaction d_pac;

  function new(virtual intf inf,mailbox #(transaction) inbox);
    this.inf = inf;
		this.inbox = inbox;
	endfunction

	task run();
		d_pac = new();

		forever begin
			repeat(2) @(posedge inf.clk);
			d_pac.wr = inf.wr;
			d_pac.rd = inf.rd;
			d_pac.data_in = inf.data_in;
			d_pac.full = inf.full;
			d_pac.empty = inf.empty;
			@(posedge inf.clk);
			d_pac.data_out = inf.data_out;

			inbox.put(d_pac);
			$display("[MON] : wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d",d_pac.wr, d_pac.rd, d_pac.data_in, d_pac.data_out, d_pac.full, d_pac.empty);
		end

	endtask

endclass



