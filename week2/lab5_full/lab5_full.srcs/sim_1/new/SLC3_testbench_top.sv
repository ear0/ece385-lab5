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
logic [15:0] MAR, MDR, IR, PC, MDR_In;
logic [15:0] Bus;
logic oe, we;
logic [15:0] pc_internal;
logic MARMUX;
logic ben;
logic ben_internal;
logic Run_ctrl, Continue_ctrl;
assign Run = ~ Run_ctrl;
assign Continue = ~ Continue_ctrl;
assign ben_internal = test.slc.dp.BEN_baller_no_johnny_dang.BEN_internal;
assign ben = test.slc.dp.BEN;
assign current = test.slc.state_controller.State;
assign next = test.slc.state_controller.Next_state;
assign address = test.slc.ADDR;
assign MAR = test.slc.dp.MAR;
assign MDR = test.slc.dp.MDR;
assign IR = test.slc.dp.IR;
assign PC = test.slc.dp.PC;
assign MDR_In = test.slc.dp.MDR_In;
assign Bus = test.slc.dp.Bus;
assign oe = test.slc.OE;
assign we = test.slc.WE;
assign pc_internal = test.slc.dp.ProgramCounter.PC_internal;
assign MARMUX = test.slc.MARMUX;
slc3_testtop test(.*);

always begin : CLOCK_GENERATION 
    #1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION 
    Clk = 0;
end

initial begin: TEST_VECTORS
//        Reset = 1;
//        Run = 0;
//        Continue = 0;
//        #5 Reset = 0;
//        #5 Run = 1;
//        #5 Run = 0;
//        #5 Continue = 1;
//        #20 Continue = 0;
//        //SW = 16'h0008;
//        #5
//        Reset = 1;
//        Run = 0;
//        Continue = 0;
//        SW = 16'h0;
//        #5 Reset = 0;
//        #5 Run = 1;
//        //#5 Run = 0;
//        #5 Continue = 1;
//        #5 Run = 0;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
//        #5 Continue = 1;
//        #5 Continue = 0;
#0
	Reset = 1;
	#3 Reset = 0;
	Run_ctrl = 1'b1;
	Continue_ctrl = 1'b1;
	#3
	SW = 16'h0006;
	Run_ctrl = 1'b0;
	Continue_ctrl = 1'b0;


	#20
	//SW = 10'b0000000110;
	Run_ctrl = 1'b1;
	#3
	Run_ctrl = 1'b0;


	#20
	//SW = 10'b0000001011;
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;

	#20
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;

	#20
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;

	#10
	Run_ctrl = 1'b1;
	Continue_ctrl = 1'b1;
	#3
	Run_ctrl = 1'b0;
	Continue_ctrl = 1'b0;

	#20
	Run_ctrl = 1'b1;
	#3
	Run_ctrl = 1'b0;


	#20
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;

	#20
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;

	#20
	Continue_ctrl = 1'b1;
	#3
	Continue_ctrl = 1'b0;
end
endmodule