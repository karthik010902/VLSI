
class score_board;

	mailbox #(transaction) inbox;
	transaction pack;
	event next;
	bit [7:0]din[$];
	bit [7:0]temp;
	int err = 0;
	
	function new(mailbox #(transaction) inbox);
		this.inbox = inbox;
	endfunction

	task run();
      pack = new();
		forever begin
			inbox.get(pack);
			$display("[SCO] : wr:%0d rd:%0d din:%0d dout:%0d full:%0d empty:%0d", pack.wr, pack.rd, pack.data_in, pack.data_out, pack.full, pack.empty);

			if(pack.wr == 1'b1) begin
				if(pack.full == 1'b0) begin
                  din.push_front(pack.data_in);
					$display("[SCO] : data stored in queue :%0d", pack.data_in);
				end
				else $display("[SCO] : FIFO is full");
				$display("------------------------------------");
			end

			if(pack.rd == 1'b1) begin
				if(pack.empty == 1'b0) begin
					temp = din.pop_back();

					if(pack.data_out == temp)
						$display("[SCO] : data match");
					else begin
						$erro("[SCO] : data mismatch");
						err++;
					end
				end
				else $display("[SCO] : fifo is empty");
				$display("------------------------------------");
				end
				->next;
        end
	endtask

endclass

	
