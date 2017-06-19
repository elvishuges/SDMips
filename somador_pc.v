
module somador_pc(op_1, resul_soma);

input[31:0] op_1;
output[31:0] resul_soma;


//reg [31:0] op_2;
reg [31:0] resul_soma;

//initial
//begin
//reg  op_2 = 32'b00000000000000000000000000000001;
//end

always @(op_1 ) begin

resul_soma = op_1 + 1;

end

endmodule
