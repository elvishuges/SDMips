
`timescale 1ns/10ps

module pc_tb;
reg clock;
reg [31:0] pc_in;
wire [31:0] pc_out;


reg reset;


pc dut(.reset(reset),.pc_in(pc_in),.clock(clock),.pc_out(pc_out));


initial begin

clock = 0;
pc_in = 32'b00000000000000000000000000000000;
reset = 0;

end


always
	#5 clock = ~clock;

endmodule
