module datapath(input logic Clk, Reset,
                input logic LD_MAR, LD_MDR, LD_IR, LD_PC, LD_LED, LD_CC, LD_BEN, LD_REG,
                input logic GatePC, GateMDR, GateALU, GateMARMUX,
                input logic SR2MUX, ADDR1MUX, MIO_EN, DRMUX, SR1MUX,
                input logic [1:0] PCMUX, ADDR2MUX, ALUK,
                input logic [15:0] MDR_In,
                output logic [15:0] MAR, MDR, IR, LED,
                output logic [15:0] Bus,PC,
                output logic BEN 
                );
                
    //logic [15:0] PC;
    logic [15:0] MDR_temp;
    logic [15:0] SR2OUT, SR1OUT;
    //logic [4:0] cstate, nstate; //debug
    //temp ALU value of 0
    logic [15:0] alu_temp;
    logic [15:0] adder_out; //thing that goes to pc
    
    Reg_16 MAR_REG(.Clk(Clk), 
                   .Load(LD_MAR), 
                   .Reset(Reset), 
                   .D(Bus), 
                   .Data_Out(MAR));
                    
    //needs to be muxed either internally or externally.
    Reg_16 MDR_REG(.Clk(Clk), 
                   .Load(LD_MDR), 
                   .Reset(Reset), 
                   .D(MDR_temp),
                   .Data_Out(MDR)); 
                   
    //mdr_temp is value between mux and mdr register 
    Mux2to1Block mux_mdr(.d0(Bus),        //MIO_EN =0, load from bus
                         .d1(MDR_In),      //MIO_EN=1, load from data_to_cpu
                         .select(MIO_EN),  ///MIO_EN
                         .mux_data(MDR_temp));
                    
    Reg_16 IR_REG(.Clk(Clk), 
                  .Load(LD_IR), 
                  .Reset(Reset), 
                  .D(Bus), 
                  .Data_Out(IR));

    RegFile reg_file(.Clk(Clk), 
                     .Reset(Reset), 
                     .FromBus(Bus),
                     .IR(IR), 
                     .SR2(IR[2:0]), 
                     .LD_REG(LD_REG), 
                     .SR1(SR1MUX), 
                     .DR(DRMUX),
                     .SR2OUT(SR2OUT), 
                     .SR1OUT(SR1OUT)); 
                     
     ALU_16 ALU(.SR2OUT(SR2OUT), 
               .SR1OUT(SR1OUT),
               .SR2MUX(SR2MUX), 
               .ALUK(ALUK), 
               .IR(IR), 
               .ALU_OUT(alu_temp));
               
    BEN_Block BEN_baller_no_johnny_dang(.Clk(Clk), 
                                        .Reset(Reset), 
                                        .LD_CC(LD_CC), 
                                        .LD_BEN(LD_BEN), 
                                        .Bus(Bus), 
                                        .IR(IR), 
                                        .BEN(BEN));
    /*
        input logic [15:0] IR, PC, SR1OUT,
        input logic [1:0] ADDR2MUX,
        input logic ADDR1MUX,
        output logic [15:0] adder_out
    */
    AdderMux adder_mux(.IR(IR), 
                        .PC(PC), 
                        .SR1OUT(SR1OUT), 
                        .ADDR2MUX(ADDR2MUX), 
                        .ADDR1MUX(ADDR1MUX), 
                        .adder_out(adder_out));
    
    BusDriver BusControl(.GateMARMUX(GateMARMUX),  //if statement up in here but we might want to change it
                         .GatePC(GatePC), 
                         .GateMDR(GateMDR), 
                         .GateALU(GateALU), 
                         .FromALU(alu_temp), //change to ALU output value
                         .FromMDR(MDR), 
                         .FromMARMUX(adder_out), 
                         .FromPC(PC), 
                         .BusContent(Bus));
                        
    //note: .FromPC(PC_val) comes from ProgramCounter, Bus is common
    //PCMUX [1:0] is select vector?
     
    PCBlock ProgramCounter(.Clk(Clk), 
                            .Load(LD_PC), 
                            .Reset(Reset), 
                            .mux_sel(PCMUX), 
                            .PCMUX_bus(Bus), 
                            .PCMUX_adder(adder_out), 
                            .PC(PC)); //tied the adder input to 0 for demo 1
                            
endmodule
