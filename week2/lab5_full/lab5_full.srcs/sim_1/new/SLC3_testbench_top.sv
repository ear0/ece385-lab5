module testbench();

timeunit 10ns;
timeprecision 1ns;

logic [15:0] SW;
logic Clk, Reset, Run, Continue;
logic [15:0] LED;  
logic [7:0] hex_seg;
logic [3:0] hex_grid;
logic [7:0] hex_segB;
logic [3:0] hex_gridB;
//internal variables
logic [4:0] current, next;
logic [15:0] address;
assign current = test.slc.state_controller.State;
assign next = test.slc.state_controller.Next_State;
assign address = test.slc.ADDR;

slc3_testtop test(.*);

always begin : CLOCK_GENERATION 
    #1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION 
    Clk = 0;
end

initial begin: TEST_VECTORS

end
endmodule