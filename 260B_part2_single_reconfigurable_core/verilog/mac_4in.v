// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module mac_4in (out, a, b,reconfigure);

parameter bw = 8;
parameter bw_psum = 2*bw+6;
parameter pr = 64; // parallel factor: number of inputs = 64

output [bw_psum-1:0] out;
input  [pr*bw-1:0] a;
input  [pr*bw-1:0] b;
input  reconfigure;

wire		[2*bw-1:0]	product0	;
wire		[2*bw-1:0]	product1	;
wire		[2*bw-1:0]	product2	;
wire		[2*bw-1:0]	product3	;


genvar i;
wire ex0;
wire ex1;
wire ex2;
wire ex3;

assign	ex0 = reconfigure? 0:b[bw*1-1];
assign	ex1 = reconfigure? 0:b[bw*2-1];
assign	ex2 = reconfigure? 0:b[bw*3-1];
assign	ex3 = reconfigure? 0:b[bw*4-1];

assign	product0={{(bw){a[bw*1-1]}},a[bw*1-1:bw*0]}	*	{{(bw){ex0}},b[bw*1-1:bw*0]};
assign	product1={{(bw){a[bw*2-1]}},a[bw*2-1:bw*1]}	*	{{(bw){ex1}},b[bw*2-1:bw*1]};
assign	product2={{(bw){a[bw*3-1]}},a[bw*3-1:bw*2]}	*	{{(bw){ex2}},b[bw*3-1:bw*2]};
assign	product3={{(bw){a[bw*4-1]}},a[bw*4-1:bw*3]}	*	{{(bw){ex3}},b[bw*4-1:bw*3]};


assign out = 
                {{(4){product0[2*bw-1]}},product0	}
	+	{{(4){product1[2*bw-1]}},product1	}
	+	{{(4){product2[2*bw-1]}},product2	}
	+	{{(4){product3[2*bw-1]}},product3	};



endmodule
