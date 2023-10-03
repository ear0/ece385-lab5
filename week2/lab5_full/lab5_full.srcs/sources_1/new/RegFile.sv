module RegFile(input logic Clk, Reset, 
               input logic [15:0] FromBus,
               input logic [15:0] IR, 
               input logic [2:0] SR2,
               input logic LD_REG, SR1, DR,
               output logic [15:0] SR2OUT, SR1OUT);
               
    logic [2:0] drmux_out, sr1mux_out; //intermediate variables for drmux, sr1mux outputs
    logic [7:0] ld_internal; //contents of load mux
    logic [15:0] Regs_internal[8]; //each gpr's contents
    
    mux_any #(3)DRMUX(.select(DR), .d0(IR[11:9]), .d1(3'b111), .mux_out(drmux_out));
    mux_any #(3) SR1MUX(.select(SR1), .d0(IR[8:6]), .d1(IR[11:9]), .mux_out(sr1mux_out));
    
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
	    //sr1out, might need to convert to module with 8-bit input/output and 3-bit select
	    unique case(sr1mux_out)
            3'b000: SR1OUT = Regs_internal[0];
            3'b001: SR1OUT = Regs_internal[1];
            3'b010: SR1OUT = Regs_internal[2];
            3'b011: SR1OUT = Regs_internal[3];
            3'b100: SR1OUT = Regs_internal[4];
            3'b101: SR1OUT = Regs_internal[5];
            3'b110: SR1OUT = Regs_internal[6];
            3'b111: SR1OUT = Regs_internal[7];
	    endcase
	    //sr2out also might need to become module
	    unique case(SR2)
	        3'b000: SR2OUT = Regs_internal[0];
            3'b001: SR2OUT = Regs_internal[1];
            3'b010: SR2OUT = Regs_internal[2];
            3'b011: SR2OUT = Regs_internal[3];
            3'b100: SR2OUT = Regs_internal[4];
            3'b101: SR2OUT = Regs_internal[5];
            3'b110: SR2OUT = Regs_internal[6];
            3'b111: SR2OUT = Regs_internal[7];
	    endcase
	    
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
