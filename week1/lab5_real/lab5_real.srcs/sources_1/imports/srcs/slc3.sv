//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//------------------------------------------------------------------------------


module slc3(
	input logic [15:0] SW,
	input logic	Clk, Reset, Run, Continue,
	output logic [15:0] LED,
	input logic [15:0] Data_from_SRAM,
	output logic OE, WE,
	output logic [7:0] hex_seg,
	output logic [3:0] hex_grid,
	output logic [7:0] hex_segB,
	output logic [3:0] hex_gridB,
	output logic [15:0] ADDR,
	output logic [15:0] Data_to_SRAM
);

// Internal connections
logic LD_MAR, LD_MDR, LD_IR, LD_BEN, LD_CC, LD_REG, LD_PC, LD_LED;
logic GatePC, GateMDR, GateALU, GateMARMUX;
logic SR2MUX, ADDR1MUX, MARMUX;
logic BEN, MIO_EN, DRMUX, SR1MUX;
logic [1:0] PCMUX, ADDR2MUX, ALUK;
logic [15:0] MDR_In;
logic [15:0] MAR, MDR, IR;
logic [3:0] hex_4[3:0]; 

//I added this
logic [15:0] PC_val, Bus;
logic [15:0] MDR_temp;
//temp ALU value of 0
logic alu_temp = 1'b0;

HexDriver HexA (
    .clk(Clk),
    .reset(Reset),
    .in({hex_4[3][3:0],  hex_4[2][3:0], hex_4[1][3:0], hex_4[0][3:0]}),
    .hex_seg(hex_seg),
    .hex_grid(hex_grid)
);

// You may use the second (right) HEX driver to display additional debug information
// For example, Prof. Cheng's solution code has PC being displayed on the right HEX


HexDriver HexB (

    .clk(Clk),
    .reset(Reset),
    .in({IR[15:12], IR[11:8], IR[7:4], IR[3:0]}),
    .hex_seg(hex_segB),
    .hex_grid(hex_gridB)
);

// Connect MAR to ADDR, which is also connected as an input into MEM2IO
//	MEM2IO will determine what gets put onto Data_CPU (which serves as a potential
//	input into MDR)
assign ADDR = MAR; 
assign MIO_EN = OE;

// Instantiate the rest of your modules here according to the block diagram of the SLC-3
// including your register file, ALU, etc..
/*
GateMARMUX, GatePC, GateMDR, GateALU, FromALU, FromMDR, FromMARMUX, FromPC, BusContent       
[15:0] FromALU, FromMDR, FromMARMUX, FromPC, 
 [15:0] BusContent                         
*/
Reg_16 MAR_REG(.Clk(Clk), .Load(LD_MAR), .Reset(Reset), .D(Bus), .Data_Out(ADDR));
//needs to be muxed either internally or externally.
Reg_16 MDR_REG(.Clk(Clk), .Load(LD_MDR), .Reset(Reset), .D(MDR_temp), .Data_Out(MDR)); 
Reg_16 IR_REG(.Clk(Clk), .Load(LD_IR), .Reset(Reset), .D(Bus), .Data_Out(IR));
/*
input logic [15:0] d0, d1,  
input logic select,         
output logic [15:0] mux_data
*/
//mdr_temp is value between mux and mdr register 
Mux2to1Block mux_mdr(.d0(Bus), .d1(MDR_In), .select(LD_MDR), .mux_data(MDR_temp));

BusDriver BusControl(.GateMARMUX(GateMARMUX), 
                     .GatePC(GatePC), 
                     .GateMDR(GateMDR), 
                     .GateALU(GateALU), 
                     .FromALU(alu_temp), 
                     .FromMDR(MDR), 
                     .FromMARMUX(MAR), 
                     .FromPC(PC_val), 
                     .BusContent(Bus));
                    
//note: .FromPC(PC_val) comes from ProgramCounter, Bus is common
PCBlock ProgramCounter(.Clk(Clk), 
                        .Load(LD_PC), 
                        .Reset(Reset), 
                        .mux_sel(PCMUX), 
                        .PCMUX_bus(Bus), 
                        .PCMUX_adder(0), 
                        .PC(PC_val)); //tied the adder input to 0 for demo 1
                        
//9/26 add IR/MDR/MAR registers and a mux to load MDR                         
// Our I/O controller (note, this plugs into MDR/MAR)
Mem2IO memory_subsystem(
    .*, .Reset(Reset), .ADDR(ADDR), .Switches(SW),
    .HEX0(hex_4[0][3:0]), .HEX1(hex_4[1][3:0]), .HEX2(hex_4[2][3:0]), .HEX3(hex_4[3][3:0]), 
    .Data_from_CPU(MDR), .Data_to_CPU(MDR_In),
    .Data_from_SRAM(Data_from_SRAM), .Data_to_SRAM(Data_to_SRAM)
);

// State machine, you need to fill in the code here as well
ISDU state_controller(
	.*, .Reset(Reset), .Run(Run), .Continue(Continue),
	.Opcode(IR[15:12]), .IR_5(IR[5]), .IR_11(IR[11]),
   .Mem_OE(OE), .Mem_WE(WE)
);
	
endmodule
