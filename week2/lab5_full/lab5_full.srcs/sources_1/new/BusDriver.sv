module BusDriver(input logic GateMARMUX, GatePC, GateMDR, GateALU,
                 input logic [15:0] FromALU, FromMDR, FromMARMUX, FromPC,
                 output logic [15:0] BusContent);
                 
   
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
            BusContent = 16'bz; //maybe 16'bx works
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

module Mux4to1Block(input logic [15:0] d0, d1,d2,d3,
                    input logic [1:0] select,
                    output logic [15:0] mux_data);
                    
    always_comb
    begin
        unique case(select)
            2'b00: mux_data =  d0;
            2'b01: mux_data = d1;
            2'b10: mux_data =  d2;
            2'b11: mux_data = d3;
        endcase
    end

endmodule

