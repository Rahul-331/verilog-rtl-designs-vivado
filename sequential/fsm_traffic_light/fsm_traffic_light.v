module fsm_traffic_light(
input clk,
input rst,
output reg red,
output reg yellow,
output reg green
);

reg [1:0] state,next_state;

parameter RED=2'b00,
          GREEN=2'b01,
          YELLOW=2'b10;

// State Register
always @(posedge clk or posedge rst)
begin
if(rst)
state <= RED;
else
state <= next_state;
end

// Next State Logic
always @(*)
begin
case(state)
RED:    next_state = GREEN;
GREEN:  next_state = YELLOW;
YELLOW: next_state = RED;
default:next_state = RED;
endcase
end

// Output Logic (Moore FSM)
always @(*)
begin
red=0; yellow=0; green=0;
case(state)
RED: red=1;
GREEN: green=1;
YELLOW: yellow=1;
endcase
end

endmodule
