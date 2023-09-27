module PCBlock(input logic Clk, Load, Reset,
               input logic [1:0] mux_sel,
               input logic [15:0] PCMUX_bus, PCMUX_adder,
               output logic [15:0] PC);
    
    //I may ahve to get rid of intermediate variable here idk
    logic [15:0] PC_internal;
    Reg_16 PCRegister(.Clk(Clk), .Load(Load), .Reset(Reset), .D(PC_internal), .Data_Out(PC));
    //lets instantiate SR here for more visibility
    /*
    
    always_ff @(posedge Clk)
    begin
        if(Reset)
            PC <= 16'b0;
        else if (Load)
            PC <= PC_internal; 
    end
    */
    always_comb
    begin
    
        if(mux_sel == 2'h0)
            PC_internal += 1'h1;
        else if(mux_sel == 2'h1)
            PC_internal = PCMUX_adder;
        else if(mux_sel == 2'h2)
            PC_internal = PCMUX_bus;
        else if(mux_sel == 2'h3)
            PC_internal = 16'hxxxx;     
    end           
    
    
endmodule
