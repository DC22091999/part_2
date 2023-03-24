// Created by prof. Mingu Kang @VVIP Lab in UCSD ECE department
// Please do not spread this code without permission 
module csa2_2 (x, y, s, c);

input x;
input y;
output s;
output c;

assign s = x^y;
assign c = x&y;

endmodule
