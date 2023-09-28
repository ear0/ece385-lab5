module SLC3_testbench_top();

    timeunit 10ns;
    timeprecision 1ns;
    /*
    module slc3_testtop(
        input logic [15:0] SW,
        input logic	Clk, Reset,Run, Continue,
        output logic [15:0] LED
        output logic [7:0] hex_seg
        output logic [3:0] hex_grid
        output logic [7:0] hex_segB
        output logic [3:0] hex_gridB
    );
    */
    logic [15:0] PC, MAR, MDR, IR, MDR_IN;
    logic [15:0] address;
    logic [15:0] SW;
    logic Clk, Reset, Run, Continue;
    logic [15:0] LED; 
    logic [7:0] hex_seg;
    logic [3:0] hex_grid;
    logic [7:0] hex_segB;
    logic [3:0] hex_gridB;
    logic [15:0] buscontent;
    logic oe, we;
    logic [4:0] currstate, nextstate; //debug
    assign nextstate = week1test.slc.state_controller.Next_state;
    assign currstate = week1test.slc.state_controller.State;
    assign PC = week1test.slc.PC_val;
    assign MAR = week1test.slc.MAR;
    assign MDR = week1test.slc.MDR;
    assign IR = week1test.slc.IR;
    assign MDR_IN =  week1test.slc.MDR_In;
    assign address = week1test.slc.ADDR;
    assign oe = week1test.slc.OE;
    assign we = week1test.slc.WE;
    assign buscontent = week1test.slc.Bus;
    slc3_testtop week1test(.*);
    
    always begin: CLOCK_GENERATION
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
        Reset = 1;
        Run = 0;
        Continue = 0;
        SW = 16'hFFFF;
        #5 Reset = 0;
        #5 Run = 1;
        //#5 Run = 0;
        #5 Continue = 1;
        #5 Run = 0;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
        #5 Continue = 1;
        #5 Continue = 0;
    end
endmodule
