module ALU_Core(ALUSrc1 , ALUSrc2 , ALUCtrl , ALUResult , Zero);
  input[31:0] ALUSrc1; // operador 1 
  input[31:0] ALUSrc2; // operador 2
  input[2:0] ALUCtrl;  // controle 
  
  output Zero;
  reg Zero;
    
  output [31:0]ALUResult; // resultado
  reg [31:0]ALUResult;    // resultado
  
  
  always @(ALUSrc1 or ALUSrc2 or ALUCtrl)
    begin
          
          if(ALUCtrl == 3'b010) //'add'
          begin
               ALUResult = ALUSrc1 + ALUSrc2; 
               if(ALUResult == 32'h0000)
               begin
                      Zero = 1'b1;
               end 
               else
                 begin
                      Zero = 1'b0;
                 end
          end
          
		  
          if(ALUCtrl == 3'b110) // 'sub'
          begin
               ALUResult = ALUSrc1 - ALUSrc2; 
               if(ALUResult == 32'h0000)
               begin
                      Zero = 1'b1;
               end 
               else
                 begin
                      Zero = 1'b0;
                 end
          end
                          
            
          
         
        
    end
  
endmodule