`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2022 03:12:52 PM
// Design Name: 
// Module Name: Shift_Reg_b
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

///`define N2 8
module Shift_Reg_b ( B_in , B_o , i_clk ,  ld_B , shift_B  );
parameter N2 = 8;
input i_clk ;
input [N2-1:0] B_in ;
input ld_B ;
input shift_B ;
output reg [N2-1:0] B_o ;




always @ (posedge i_clk )
          begin
        if (ld_B)
                  begin
            B_o <= B_in ;
              end
             else if (shift_B)
               begin
                         B_o <= {B_in, B_o[7:1]} ; ///shift right///
                         
       end
           else
     begin
       B_o <= 8'b0000_0000;
       end
   end
endmodule
