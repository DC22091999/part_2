// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac_8in (out, a, b,reconfigure,is_signed);

parameter bw = 8;
parameter bw_psum = 2*bw+3;
parameter pr = 64; // parallel factor: number of inputs = 64

output [bw_psum-1:0] out;
input  [pr*bw-1:0] a;
input  [pr*bw-1:0] b;
input  reconfigure,is_signed;

wire		[2*bw-1:0]	product0	;
wire		[2*bw-1:0]	product1	;
wire		[2*bw-1:0]	product2	;
wire		[2*bw-1:0]	product3	;
wire		[2*bw-1:0]	product4	;
wire		[2*bw-1:0]	product5	;
wire		[2*bw-1:0]	product6	;
wire		[2*bw-1:0]	product7	;


genvar i;

wire [bw-1:0] a0;			wire [bw-1:0] b0;			wire b_ex0;
wire [bw-1:0] a1;			wire [bw-1:0] b1;       		wire b_ex1;
wire [bw-1:0] a2;			wire [bw-1:0] b2;       		wire b_ex2;
wire [bw-1:0] a3;			wire [bw-1:0] b3;       		wire b_ex3;
wire [bw-1:0] a4;			wire [bw-1:0] b4;       		wire b_ex4;
wire [bw-1:0] a5;			wire [bw-1:0] b5;       		wire b_ex5;
wire [bw-1:0] a6;			wire [bw-1:0] b6;       		wire b_ex6;
wire [bw-1:0] a7;			wire [bw-1:0] b7;       		wire b_ex7;

assign	a0 = a[bw*1-1:bw*0];		assign	b0 = b[bw*1-1:bw*0];		assign	b_ex0 =	is_signed? (reconfigure? 0:b[bw*1-1]):0;
assign	a1 = a[bw*2-1:bw*1];		assign	b1 = b[bw*2-1:bw*1];		assign  b_ex1 =	is_signed? (reconfigure? 0:b[bw*2-1]):0;
assign	a2 = a[bw*3-1:bw*2];		assign	b2 = b[bw*3-1:bw*2];		assign	b_ex2 = is_signed? (reconfigure? 0:b[bw*3-1]):0;
assign	a3 = a[bw*4-1:bw*3];		assign	b3 = b[bw*4-1:bw*3];		assign	b_ex3 = is_signed? (reconfigure? 0:b[bw*4-1]):0;
assign	a4 = a[bw*5-1:bw*4];		assign	b4 = b[bw*5-1:bw*4];		assign	b_ex4 = is_signed? (reconfigure? 0:b[bw*5-1]):0;
assign	a5 = a[bw*6-1:bw*5];		assign	b5 = b[bw*6-1:bw*5];		assign	b_ex5 = is_signed? (reconfigure? 0:b[bw*6-1]):0;
assign	a6 = a[bw*7-1:bw*6];		assign	b6 = b[bw*7-1:bw*6];		assign	b_ex6 = is_signed? (reconfigure? 0:b[bw*7-1]):0;
assign	a7 = a[bw*8-1:bw*7];		assign	b7 = b[bw*8-1:bw*7];		assign	b_ex7 = is_signed? (reconfigure? 0:b[bw*8-1]):0;

assign	product0={{(bw){a[bw*1-1]}},a0}	*	{{(bw){b_ex0}},b0};
assign	product1={{(bw){a[bw*2-1]}},a1}	*	{{(bw){b_ex1}},b1};
assign	product2={{(bw){a[bw*3-1]}},a2}	*	{{(bw){b_ex2}},b2};
assign	product3={{(bw){a[bw*4-1]}},a3}	*	{{(bw){b_ex3}},b3};
assign	product4={{(bw){a[bw*5-1]}},a4}	*	{{(bw){b_ex4}},b4};
assign	product5={{(bw){a[bw*6-1]}},a5}	*	{{(bw){b_ex5}},b5};
assign	product6={{(bw){a[bw*7-1]}},a6}	*	{{(bw){b_ex6}},b6};
assign	product7={{(bw){a[bw*8-1]}},a7}	*	{{(bw){b_ex7}},b7};



assign out = 
                {{(4){product0[2*bw-1]}},product0	}
	+	{{(4){product1[2*bw-1]}},product1	}
	+	{{(4){product2[2*bw-1]}},product2	}
	+	{{(4){product3[2*bw-1]}},product3	}
	+	{{(4){product4[2*bw-1]}},product4	}
	+	{{(4){product5[2*bw-1]}},product5	}
	+	{{(4){product6[2*bw-1]}},product6	}
	+	{{(4){product7[2*bw-1]}},product7	};



endmodule
