
 module DATA_PATH( i_clk , reset , sum , a_in , b_in ,  p_STATE, Count_out , B_o , A_o);
 parameter WIDTH_2 = 8;
 parameter WIDTH_8 = 4 ;

 input i_clk , reset ;
 input [WIDTH_2-1:0] a_in ;
 input [WIDTH_2-1:0] b_in ;
 output [WIDTH_2-1:0] sum ; 
 output [WIDTH_8-1:0] Count_out ;
 output [WIDTH_2-1:0] B_o ;
 output [WIDTH_2-1:0] A_o ;
 wire [WIDTH_2-1:0] s_out ;  
 wire s ;
 wire Run ;
 output p_STATE ;
 
 assign Run = |Count_out ;
 control_FSM CU( i_clk , reset , A_o , B_o , p_STATE , s );
 Shift_Reg_b B_REG ( b_in , B_o ,i_clk ,  reset , 1'b1) ;  
 Shift_Reg_a A_REG ( a_in , A_o , i_clk , reset , 1'b1  );
 Shift_reg_sum SUM_reg( 8'b0 , sum , i_clk ,s ,  reset , Run );
 down_counter DOWN_COUNTER(i_clk , reset ,Run , Count_out);

 endmodule
