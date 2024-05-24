`include "transaction.sv"    
class generator;

	transaction pac;                            // transaction object to generate & send
	mailbox #(transaction) inbox;               // mailbox for connection
	int count = 0;                              // no.of transaction to generate
	int i = 0;                                  // iteration counter

	event next;                                 // event to signal when to send the next transaction
	event done;                                 // event to convey completion of requested number of transaction

	function new(mailbox #(transaction) inbox);
		this.inbox = inbox;
		
	endfunction

	task gen();
      pac = new();
		repeat(count)
		begin
			assert(pac.randomize) else $error("randomized failed");
			i++;
			inbox.put(pac);
			$display("[GEN] : oper : %0d iteration : %0d",pac.oper,i);
			@(next);
          -> done;
		end 
	endtask

endclass
