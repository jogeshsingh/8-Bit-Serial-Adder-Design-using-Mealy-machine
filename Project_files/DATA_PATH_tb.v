`timescale 1ns / 1ps
module DATA_PATH_tb();
parameter D_WIDTH  = 8;
parameter D_WID_4 = 4 ;
reg i_clk ;
reg reset ;
reg [D_WIDTH-1:0] a_in  , b_in ;
wire [D_WIDTH-1:0] sum ;
wire p_STATE ;
wire [D_WID_4-1:0] Count_out ;
wire [D_WIDTH-1:0] B_o ;
wire [D_WIDTH-1:0] A_o ;
DATA_PATH DUT ( i_clk , reset , sum , a_in , b_in ,  p_STATE, Count_out , B_o , A_o);



initial 
 begin
  i_clk = 1'b0 ;
  reset = 1'b0 ;
   end
   
   
   always #5 i_clk = ~i_clk ;
   
   
  initial
    begin
       #15 reset = 1'b1 ;
       #3 reset = 1'b0 ;
    
        end
        
        initial
          begin
        #4 a_in = 8'b00001000;
       #1 b_in = 8'b00001000 ;
       
       
       #120  reset = 1'b1 ;
       #40 reset = 1'b0 ;
       
       #1000 $stop ;
       end
       
       initial
          begin
       #60 a_in = 8'b00011000;
       #20 b_in = 8'b00001100 ;
       end
endmodule
