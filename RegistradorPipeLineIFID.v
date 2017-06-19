

module RegistradorPipeLineIFID (clock,reset,instrucaoIn,PcSomadoIn,instrucaoOut,pcSomadoOut);

//entradas deste modulo
input clock;
input reset;
input [31:0] instrucaoIn;
input [31:0] PcSomadoIn;

//saidas deste modulo 
output reg [31:0] instrucaoOut;
output reg [31:0] pcSomadoOut;


always @(negedge clock or posedge  reset) // quando o clock subir de borda...
begin

   instrucaoOut <= instrucaoIn;
   pcSomadoOut <= PcSomadoIn;   

  if(reset) begin // quando ativar reset....

   instrucaoOut <= 32'b00000000000000000000000000000000;
   pcSomadoOut <= 32'b00000000000000000000000000000000; 
   
  end    
end


endmodule
