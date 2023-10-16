module PCBlock(input logic Clk, Load, Reset,
               input logic [1:0] mux_sel,
               input logic [15:0] PCMUX_bus, PCMUX_adder,
               output logic [15:0] PC);
    
    //I may ahve to get rid of intermediate variable here idk
    logic [15:0] PC_internal;
    Reg_16 PCRegister(.Clk(Clk), .Load(Load), .Reset(Reset), .D(PC_internal), .Data_Out(PC));
 
    always_comb
    begin
    
        //potentially switch around
        unique case(mux_sel)
            2'b00: PC_internal = PC + 1'b1;
            2'b01: PC_internal = PCMUX_bus;
            2'b10: PC_internal = PCMUX_adder;
            2'b11: PC_internal = 16'bx;
        endcase
             
    end           
    
    
endmodule
