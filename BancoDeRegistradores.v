module BancoDeRegistradores(clk, WS, regA, regB, regW, dataW, dataA, dataB);
  
  input clk;
	input WS;
	input [4:0] regA;
	input [4:0] regB;
	input [4:0] regW;
	input [31:0] dataW;
	output reg [31:0] dataA;
	output reg [31:0] dataB;
	
	reg [31:0] registers [0:31];

	always @(regA or regB)	
	begin
	 dataA = registers[regA];
	 dataB = registers[regB];
	end
	
  always @(negedge clk)begin
	   if (WS)
		registers[regW] = dataW;
	end 
		
endmodule
/////////////////////////////////////////////

`timescale 100ps/10ps
module TesteBancoRegistrador();

reg clk;
reg WS;
reg [4:0] regA;
reg [4:0] regB;
reg [4:0] regW;
reg [31:0] dataW;

wire [31:0] dataA;
wire [31:0] dataB;

BancoDeRegistradores BR(clk, WS, regA, regB, regW, dataW, dataA, dataB);

initial 
begin
	clk = 1; 
	forever
	begin
		#5 clk  = ~clk;
	end
end


initial 
begin
WS = 1;
regW = 5'b00000;
dataW = 32'h00000000;
#11
WS = 1;
regW = 5'b00001;
dataW = 32'h0000000f;
#11
WS = 1;
dataW = 32'hf000000f;
regW = 5'b00011;
regA = 5'b00000;
regB = 5'b00001;
#11
WS=0;
regA =  5'b00011;



end

endmodule
