`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2022 05:07:47 PM
// Design Name: 
// Module Name: control_FSM
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module control_FSM( i_clk , reset , A_o , B_o , p_STATE, s_reg  );
parameter WIDTH5 = 8;
input i_clk ;
input reset ;
input [WIDTH5-1:0] A_o , B_o ;



output reg  p_STATE ;
reg  nEXT_STATE ; 


parameter G = 0 ;
parameter H = 1 ;
output reg s_reg ;


//data register //

always @ (posedge i_clk)
 begin
    if (reset ==1'b1)
      begin
        p_STATE <= G ;
          end
     else
       begin
        p_STATE <= nEXT_STATE ;
          end
       end
          
 ////next_state logic + output logic ///
 
 always @ (A_o or B_o or p_STATE )
   begin
      case (p_STATE )
        G : begin
              s_reg = A_o[0]^B_o[0] ; 
                if (A_o[0]& B_o[0])
                 nEXT_STATE = H ;
                  else
                   nEXT_STATE = G ;
                   end 
        H : begin
              s_reg = ~(A_o[0]^B_o[0]);
                 if (~A_o[0]& ~B_o[0])
                    nEXT_STATE = G ;
                     else
                      nEXT_STATE = H  ;
                       end
                  default : nEXT_STATE = G ;
             endcase
        end     
                                            
endmodule
