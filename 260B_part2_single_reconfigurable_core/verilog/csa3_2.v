// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module csa3_2 (x, y, z, s, c);

input x;
input y;
input z;
output s;
output c;

assign s = x^y^z;
assign c = x&y | y&z | z&x;

endmodule
