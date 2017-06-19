// https://github.com/alok-upadhyay/MIPS-in-Verilog/tree/master/SingleCycleDatapath
module ALU_Op(FunctField, ALUOp, ALUCtrl);
input [5:0]FunctField;
input [1:0]ALUOp;
output [2:0]ALUCtrl;
reg [2:0]ALUCtrl;

always@(FunctField or ALUOp)
begin
    if(ALUOp == 2'b10)      //'Arithmetic' Type Instructions - Apenas para instruçoes do tipo R

    begin
      case(FunctField)        
      //begin
        6'b100000: ALUCtrl = 3'b010;    //ADDITION in 'R' Type
        6'b100010: ALUCtrl = 3'b110;    //SUBTRACTION in 'R' Type
        6'b100100: ALUCtrl = 3'b000;    //AND in 'R' Type
        6'b100101: ALUCtrl = 3'b001;    //OR in 'R' Type
        6'b101010: ALUCtrl = 3'b111;    //SLT in 'R' Type
     // end
    endcase
    end
    
    if(ALUOp == 2'b00)     // 'LW/SW' Type Instructions
    begin
        ALUCtrl = 3'b010;               //ADDITION irrespective of the FunctField.
    end
    
    if(ALUOp == 2'b01)    //   'BEQ', 'BNE' ,  Type Instructions
    begin
        ALUCtrl = 3'b110;               //SUBTRACTION irrespective of the FunctField.
    end  
	
    

    
end   //always block 

endmodule  //ALUOp module