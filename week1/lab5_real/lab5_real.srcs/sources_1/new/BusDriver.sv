module BusDriver(input logic GateMARMUX, GatePC, GateMDR, GateALU,
                 input logic [15:0] FromALU, FromMDR, FromMARMUX, FromPC,
                 output logic [15:0] BusContent);
                 
    logic [3:0] Gate_Ctrl = {GateMARMUX, GatePC, GateMDR, GateALU};
    logic idc = 16'hxxxx;
    
    always_comb
    begin
        if(GateMDR)
            BusContent = FromMDR;
        else if(GatePC)
            BusContent = FromPC;
        else if(GateALU)
            BusContent = FromALU;
        else if(GateMARMUX)
            BusContent = FromMARMUX;
        else
            BusContent = idc;
    end
  
endmodule

//gonna put the 16-bit mux here
module Mux2to1Block(input logic [15:0] d0, d1,
                    input logic select,
                    output logic [15:0] mux_data);
                    
    always_comb
    begin
        unique case(select)
            1'b0: mux_data =  d0;
            1'b1: mux_data = d1;
        endcase
    end

endmodule
