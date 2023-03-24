module core_adder(A,S);

parameter col = 8;
parameter bw = 8;
parameter bw_psum = 2*bw+4;
parameter pr = 16;

output [bw_psum+3:0] S;
input [bw_psum*col-1:0] A;


wire [bw_psum*1-1 : 0] x0,x1.x2,x3,x4,x5,x6,x7;
wire [bw_psum*1-1 : 0] s0,s1,s2;
wire [bw_psum*1-1 : 0] c0,c1,c2;
assign x0 = A[bw_psum*1-1 : 	    0];
assign x1 = A[bw_psum*2-1 : bw_psum*1];
assign x2 = A[bw_psum*3-1 : bw_psum*2];
assign x3 = A[bw_psum*4-1 : bw_psum*3];
assign x4 = A[bw_psum*5-1 : bw_psum*4];
assign x5 = A[bw_psum*6-1 : bw_psum*5];
assign x6 = A[bw_psum*7-1 : bw_psum*6];
assign x7 = A[bw_psum*8-1 : bw_psum*7];


csa3_2  csa3_2_instance0 (.x(x0[0]), .y(x1[0]), .z(x2[0]), .s(s0[0]), .c(c0[0]));
csa3_2  csa3_2_instance1 (.x(x0[1]), .y(x1[1]), .z(x2[1]), .s(s0[1]), .c(c0[1]));
csa3_2  csa3_2_instance2 (.x(x0[2]), .y(x1[2]), .z(x2[2]), .s(s0[2]), .c(c0[2]));
csa3_2  csa3_2_instance3 (.x(x0[3]), .y(x1[3]), .z(x2[3]), .s(s0[3]), .c(c0[3]));
csa3_2  csa3_2_instance0 (.x(x0[4]), .y(x1[4]), .z(x2[4]), .s(s0[4]), .c(c0[4]));
csa3_2  csa3_2_instance1 (.x(x0[5]), .y(x1[5]), .z(x2[5]), .s(s0[5]), .c(c0[5]));
csa3_2  csa3_2_instance2 (.x(x0[6]), .y(x1[6]), .z(x2[6]), .s(s0[6]), .c(c0[6]));
csa3_2  csa3_2_instance3 (.x(x0[7]), .y(x1[7]), .z(x2[7]), .s(s0[7]), .c(c0[7]));//x3 x4 x5 x6 x7 s0 c0 

csa3_2  csa3_2_instance0 (.x(x3[0]), .y(x4[0]), .z(x5[0]), .s(s1[0]), .c(c1[0]));
csa3_2  csa3_2_instance1 (.x(x3[1]), .y(x4[1]), .z(x5[1]), .s(s1[1]), .c(c1[1]));
csa3_2  csa3_2_instance2 (.x(x3[2]), .y(x4[2]), .z(x5[2]), .s(s1[2]), .c(c1[2]));
csa3_2  csa3_2_instance3 (.x(x3[3]), .y(x4[3]), .z(x5[3]), .s(s1[3]), .c(c1[3]));
csa3_2  csa3_2_instance0 (.x(x3[4]), .y(x4[4]), .z(x5[4]), .s(s1[4]), .c(c1[4]));
csa3_2  csa3_2_instance1 (.x(x3[5]), .y(x4[5]), .z(x5[5]), .s(s1[5]), .c(c1[5]));
csa3_2  csa3_2_instance2 (.x(x3[6]), .y(x4[6]), .z(x5[6]), .s(s1[6]), .c(c1[6]));
csa3_2  csa3_2_instance3 (.x(x3[7]), .y(x4[7]), .z(x5[7]), .s(s1[7]), .c(c1[7]));//x6 x7 s0 c0 s1 c1

csa3_2  csa3_2_instance0 (.x(x6[0]), .y(x7[0]), .z(s0[0]), .s(s2[0]), .c(c2[0]));
csa3_2  csa3_2_instance1 (.x(x6[1]), .y(x7[1]), .z(s0[1]), .s(s2[1]), .c(c2[1]));
csa3_2  csa3_2_instance2 (.x(x6[2]), .y(x7[2]), .z(s0[2]), .s(s2[2]), .c(c2[2]));
csa3_2  csa3_2_instance3 (.x(x6[3]), .y(x7[3]), .z(s0[3]), .s(s2[3]), .c(c2[3]));
csa3_2  csa3_2_instance0 (.x(x6[4]), .y(x7[4]), .z(s0[4]), .s(s2[4]), .c(c2[4]));
csa3_2  csa3_2_instance1 (.x(x6[5]), .y(x7[5]), .z(s0[5]), .s(s2[5]), .c(c2[5]));
csa3_2  csa3_2_instance2 (.x(x6[6]), .y(x7[6]), .z(s0[6]), .s(s2[6]), .c(c2[6]));
csa3_2  csa3_2_instance3 (.x(x6[7]), .y(x7[7]), .z(s0[7]), .s(s2[7]), .c(c2[7]));//c0 s1 c1 s2 c2

csa3_2  csa3_2_instance0 (.x(c0[0]), .y(c1[0]), .z(c2[0]), .s(c3[0]), .c(d0[0]));
csa3_2  csa3_2_instance1 (.x(c0[1]), .y(c1[1]), .z(c2[1]), .s(c3[1]), .c(d0[1]));
csa3_2  csa3_2_instance2 (.x(c0[2]), .y(c1[2]), .z(c2[2]), .s(c3[2]), .c(d0[2]));
csa3_2  csa3_2_instance3 (.x(c0[3]), .y(c1[3]), .z(c2[3]), .s(c3[3]), .c(d0[3]));
csa3_2  csa3_2_instance0 (.x(c0[4]), .y(c1[4]), .z(c2[4]), .s(c3[4]), .c(d0[4]));
csa3_2  csa3_2_instance1 (.x(c0[5]), .y(c1[5]), .z(c2[5]), .s(c3[5]), .c(d0[5]));
csa3_2  csa3_2_instance2 (.x(c0[6]), .y(c1[6]), .z(c2[6]), .s(c3[6]), .c(d0[6]));
csa3_2  csa3_2_instance3 (.x(c0[7]), .y(c1[7]), .z(c2[7]), .s(c3[7]), .c(d0[7]));//s1 s2 c3 d0

csa2_2  csa3_2_instance0 (.x(s1[0]), .y(s2[0]), 	   .s(s4[0]), .c(c4[0]));
csa3_2  csa3_2_instance1 (.x(s1[1]), .y(s2[1]), .z(c3[0]), .s(s4[1]), .c(c4[1]));
csa3_2  csa3_2_instance2 (.x(s1[2]), .y(s2[2]), .z(c3[1]), .s(s4[2]), .c(c4[2]));
csa3_2  csa3_2_instance3 (.x(s1[3]), .y(s2[3]), .z(c3[2]), .s(s4[3]), .c(c4[3]));
csa3_2  csa3_2_instance0 (.x(s1[4]), .y(s2[4]), .z(c3[3]), .s(s4[4]), .c(c4[4]));
csa3_2  csa3_2_instance1 (.x(s1[5]), .y(s2[5]), .z(c3[4]), .s(s4[5]), .c(c4[5]));
csa3_2  csa3_2_instance2 (.x(s1[6]), .y(s2[6]), .z(c3[5]), .s(s4[6]), .c(c4[6]));
csa3_2  csa3_2_instance3 (.x(s1[7]), .y(s2[7]), .z(c3[6]), .s(s4[7]), .c(c4[7]));

csa2_2  csa3_2_instance1 (.x(s4[1]), .y(c4[0]), 	   .s(c5[0]), .c(d1[0]));
csa3_2  csa3_2_instance2 (.x(s4[2]), .y(c4[1]), .z(d4[0]), .s(c5[1]), .c(d1[1]));
csa3_2  csa3_2_instance3 (.x(s4[3]), .y(c4[2]), .z(d4[1]), .s(c5[2]), .c(d1[2]));
csa3_2  csa3_2_instance0 (.x(s4[4]), .y(c4[3]), .z(d4[2]), .s(c5[3]), .c(d1[3]));
csa3_2  csa3_2_instance1 (.x(s4[5]), .y(c4[4]), .z(d4[3]), .s(c5[4]), .c(d1[4]));
csa3_2  csa3_2_instance2 (.x(s4[6]), .y(c4[5]), .z(d4[4]), .s(c5[5]), .c(d1[5]));
csa3_2  csa3_2_instance3 (.x(s4[7]), .y(c4[6]), .z(d4[5]), .s(c5[6]), .c(d1[6]));

csa3_2  csa3_2_instance3 (.x(c3[7]), .y(c4[7]), .z(d4[6]), .s(c5[7]), .c(d1[7]));



assign out[0]=s4[0];
endmodule

