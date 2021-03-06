`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2022 03:36:46 PM
// Design Name: 
// Module Name: down_counter
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


module down_counter(
i_clk , reset ,en , Count_out
    );
	 
	 parameter DATA_WIDTH = 4 ;
input i_clk ;
input reset ;
input en ;
output reg [DATA_WIDTH-1:0] Count_out ;
always @ (posedge i_clk)
 begin
        if (reset==1'b1)
          begin
           Count_out <= 4'b1000 ;
            end
         else if (en==1'b1) 
            begin
              Count_out <= Count_out - 1'b1 ;
                end
             else
                begin
                   Count_out <= 4'b0000 ; 
                    end  
            end                
endmodule
