`timescale 1ns/1ps
module tb_fsm_traffic_light;

reg clk,rst;
wire red,yellow,green;

fsm_traffic_light uut(
.clk(clk),
.rst(rst),
.red(red),
.yellow(yellow),
.green(green)
);

always #5 clk = ~clk;

initial begin
clk=0; rst=1; #10;
rst=0;

#100;
$finish;
end

endmodule
