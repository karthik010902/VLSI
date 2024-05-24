`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "score_b.sv"
class environment;
	generator gnt;
	driver drv;
	monitor mon;
	score_board sco;
	mailbox #(transaction) gdmbx;
	mailbox #(transaction) msmbx;
	event nextgs;
	virtual intf vinf;
	
	function new(virtual intf vinf);
		gdmbx = new();
		gnt = new(gdmbx);
      drv = new(vinf,gdmbx);
		msmbx = new();
      mon = new(vinf,msmbx);
		sco = new(msmbx);
		this.vinf = vinf;
		//drv.vinf = this.vinf;
		//mon.vinf = this.vinf;
		gnt.next = nextgs;
		sco.next = nextgs;
	endfunction

	task pre_test();
		drv.reset();
	endtask

	task test();
		fork
			gnt.gen();
			drv.driv();
			mon.run();
			sco.run();
		join_any
	endtask

	task post_test();
      wait(gnt.done.triggered);
		$display("-----------------------------------");
		$display("Error count :%0d",sco.err);
		$display("-----------------------------------");
	endtask

	task run();
		pre_test();
		test();
		post_test();
	endtask

endclass

