`timescale 1ns/1ps
module tb_up_down_counter_4bit;

reg clk,rst,up_down;
wire [3:0] count;

up_down_counter_4bit uut(
.clk(clk),
.rst(rst),
.up_down(up_down),
.count(count)
);

always #5 clk = ~clk;

initial begin
clk=0; rst=1; up_down=1; #10;
rst=0;

// Count UP
up_down=1; #80;

// Count DOWN
up_down=0; #80;

$finish;
end

endmodule
