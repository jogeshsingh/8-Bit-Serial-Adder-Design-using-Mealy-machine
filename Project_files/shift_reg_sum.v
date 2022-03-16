`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/16/2022 06:38:35 PM
// Design Name: 
// Module Name: shift_reg_sum
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



module Shift_reg_sum ( s_in , s_out , i_clk ,w3 ,  reset , shift_s );
parameter N3 = 8;
input i_clk ;
input reset ;
input [N3-1:0] s_in ;
input shift_s ;
input w3 ;
output reg [N3-1:0] s_out ;



always @ (posedge i_clk )
          begin
        if (reset)
                  begin
            s_out <= s_in ;
              end
             else if (shift_s)
               begin
                         s_out <= {s_in, s_out[7:1]} ;    /////////shift right///
                  s_out[7] <= w3  ;
       end
           else
     begin
       s_out <= 8'b0000_0000;
       end
   end
 
endmodule


