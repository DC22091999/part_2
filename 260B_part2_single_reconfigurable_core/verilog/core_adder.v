module core_adder(A,S,clk,reset,reconfigure,fifo_wr);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 16;
parameter q_bw = 4;            // K vector bit precision
parameter k_bw = 8;            // Qvector bit precision

input [col-1:0] fifo_wr;

input clk,reset,reconfigure;
output  reg [bw_psum+3+4:0] S;
input [bw_psum*col-1:0] A;
wire [7:0]a0,a1,a2,a3,a4,a5,a6,a7;
wire [7:0]b0,b1,b2,b3;

wire [bw_psum+2:0]MSB_S,LSB_S ;
reg A_prev;
reg cnt,f1,f2,flag;




assign a0 = A[bw_psum*1-1 :    	    0];
assign a1 = A[bw_psum*2-1 : bw_psum*1];
assign a2 = A[bw_psum*3-1 : bw_psum*2];
assign a3 = A[bw_psum*4-1 : bw_psum*3];
assign a4 = A[bw_psum*5-1 : bw_psum*4];
assign a5 = A[bw_psum*6-1 : bw_psum*5];
assign a6 = A[bw_psum*7-1 : bw_psum*6];
assign a7 = A[bw_psum*8-1 : bw_psum*7];

assign b0 = 	$signed(a0*16) + $signed(a1);
assign b1 = 	$signed(a2*16) + $signed(a3);
assign b2 = 	$signed(a4*16) + $signed(a5);
assign b3 = 	$signed(a6*16) + $signed(a7);


	assign MSB_S = 		$signed(a0) +
				$signed(a2) +
				$signed(a4) +
				$signed(a6);

	assign LSB_S = 		$signed(a1) +
				$signed(a3) +
				$signed(a5) +
				$signed(a7);
	
	assign S = (reconfigure)? {MSB_S[bw_psum+1],MSB_S,(4){1'b0}}}+{(4){1'b0}},LSB_S}:{(5){MSB_S[bw_psum+1]}},MSB_S}+{(5){LSB_S[bw_psum+1]}},LSB_S};


endmodule
