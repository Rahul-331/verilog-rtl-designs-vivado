module full_adder(
input a,
input b,
input cin,
output sum,
output cout
);

wire s1,c1,c2;

assign s1 = a ^ b;
assign c1 = a & b;

assign sum = s1 ^ cin;
assign c2 = s1 & cin;

assign cout = c1 | c2;

endmodule
