
module pc (reset, clock, pc_in, pc_out);
  
	input reset;
	input clock;
	input [31:0] pc_in;
	output reg[31:0] pc_out;
	//posedge pc_enable or 
	always @(posedge clock)
	begin
		if (reset)
			pc_out = 1;
		else 
			pc_out <= pc_in;
	end 
		
endmodule

