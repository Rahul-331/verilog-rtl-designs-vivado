`timescale 1ns/1ps
module tb_dff_async;

reg clk,rst,d;
wire q;

dff_async uut(
.clk(clk),
.rst(rst),
.d(d),
.q(q)
);

always #5 clk = ~clk;

initial begin
clk=0; rst=1; d=0; #10;
rst=0; d=1; #10;
d=0; #10;
rst=1; #10;
rst=0; d=1; #10;
$finish;
end

endmodule
