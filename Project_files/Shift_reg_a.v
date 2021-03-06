`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2022 03:00:34 PM
// Design Name: 
// Module Name: Shift_Reg_a
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

///`define N 8
module Shift_Reg_a( A_in , A_o , i_clk , ld_A , shift_A  );
parameter N = 8;
input i_clk ;
input [N-1:0] A_in ;
input ld_A ;
input shift_A ;
output reg [N-1:0] A_o ;

always @ (posedge i_clk )
begin
 if (ld_A)
  begin
   A_o <= A_in ;
   end
          else if (shift_A)
     begin
      A_o <= {A_in, A_o[7:1]} ;      //shift right///
       end
       else
         begin
       A_o <= 8'b0000_0000;
       end
       end
   
endmodule
