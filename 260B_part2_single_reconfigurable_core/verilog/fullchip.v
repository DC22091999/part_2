// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module fullchip (clk, mem_in, inst, reset,out,sum_out,reconfigure,is_signed);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 16;

input  clk; 
input  [pr*bw-1:0] mem_in; 
input  [16:0] inst; 
input  reset;
input  reconfigure,is_signed;
output [bw_psum*col-1:0] out;
output [bw_psum+3+4:0] sum_out;


core #(.bw(bw), .bw_psum(bw_psum), .col(col), .pr(pr)) core_instance (
      	.reset(reset), 
      	.clk(clk), 
      	.mem_in(mem_in), 
      	.inst(inst),
      	.out(out),
      	.sum_out(sum_out),
	.is_signed(is_signed),
      	.reconfigure(reconfigure)
);

endmodule
