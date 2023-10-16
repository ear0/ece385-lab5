module RegFile(input logic Clk, Reset, 
               input logic [15:0] FromBus,
               input logic [15:0] IR, 
               input logic [2:0] SR2,
               input logic LD_REG, SR1, DR,
               output logic [15:0] SR2OUT, SR1OUT);
               
    logic [2:0] drmux_out, sr1mux_out; //intermediate variables for drmux, sr1mux outputs
    logic [7:0] ld_internal; //contents of load mux
    logic [15:0] Regs_internal[8]; //each gpr's contents
    
    mux_any #(3)DRMUX(.select(DR), 
                      .d0(IR[11:9]), 
                      .d1(3'b111), 
                      .mux_out(drmux_out));
                      
    mux_any #(3) SR1MUX(.select(SR1), 
                        .d0(IR[8:6]), 
                        .d1(IR[11:9]), 
                        .mux_out(sr1mux_out));
                        
    mux_reg SR1_regmux(.select(sr1mux_out), 
                       .mux_out(SR1OUT), 
                       .d0(Regs_internal[0]), 
                       .d1(Regs_internal[1]), 
                       .d2(Regs_internal[2]), 
                       .d3(Regs_internal[3]), 
                       .d4(Regs_internal[4]), 
                       .d5(Regs_internal[5]), 
                       .d6(Regs_internal[6]), 
                       .d7(Regs_internal[7]));
                       
    mux_reg SR2_regmux(.select(SR2), 
                        .mux_out(SR2OUT),
                        .d0(Regs_internal[0]),   
                        .d1(Regs_internal[1]),   
                        .d2(Regs_internal[2]),   
                        .d3(Regs_internal[3]),   
                        .d4(Regs_internal[4]),   
                        .d5(Regs_internal[5]),   
                        .d6(Regs_internal[6]),   
                        .d7(Regs_internal[7]));  
     
    always_comb
    begin
	   if(LD_REG)
	       unique case(drmux_out)
           3'b000 : ld_internal = 8'b00000001;
  		   3'b001 : ld_internal = 8'b00000010;
  		   3'b010 : ld_internal = 8'b00000100;
  		   3'b011 : ld_internal = 8'b00001000;
  		   3'b100 : ld_internal = 8'b00010000;
		   3'b101 : ld_internal = 8'b00100000;
		   3'b110 : ld_internal = 8'b01000000;
	       3'b111 : ld_internal = 8'b10000000;
		   default : ;
		   endcase
		else
			ld_internal = 8'b0;
		end
		
	genvar i;
    generate
        for(i = 0; i < 8; i++) begin
            Reg_16 GPR(.Clk(Clk),
                       .Reset(Reset),
                       .Load(ld_internal[i]),
                       .D(FromBus),
                       .Data_Out(Regs_internal[i]));
        end
    endgenerate
    
endmodule

module mux_reg(input logic [2:0] select,
               input logic [15:0] d0, d1, d2, d3, d4, d5, d6, d7,
               output logic [15:0] mux_out);

    //logic mux_out_internal;
    
    always_comb
    begin
        unique case(select)
            3'b000: mux_out = d0;
            3'b001: mux_out = d1;
            3'b010: mux_out = d2;
            3'b011: mux_out = d3;
            3'b100: mux_out = d4;
            3'b101: mux_out = d5;
            3'b110: mux_out = d6;
            3'b111: mux_out = d7;
        endcase
    end
endmodule