module AdderMux(input logic [15:0] IR, PC, SR1OUT,
                input logic [1:0] ADDR2MUX,
                input logic ADDR1MUX,
                output logic [15:0] adder_out);
                
    logic [15:0] addr2_out;
    logic [15:0] addr1_out;
    //we might have to reverse the pin assignments here depending on ISDU            
    Mux4to1Block mux_addr2(.d0(16'b0), 
                            .d1({{10{IR[5]}}, IR[5:0]}), 
                            .d2({{7{IR[8]}}, IR[8:0]}), 
                            .d3({{5{IR[10]}}, IR[10:0]}), 
                            .select(ADDR2MUX), 
                            .mux_data(addr2_out));
                            
    Mux2to1Block mux_addr1(.d0(SR1OUT), 
                            .d1(PC), 
                            .select(ADDR1MUX), 
                            .mux_data(addr1_out));
    
    assign adder_out = addr1_out + addr2_out;
    
endmodule
