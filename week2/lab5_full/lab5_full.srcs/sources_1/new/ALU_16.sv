module ALU_16(input logic [15:0] SR2OUT, SR1OUT, 
              input logic SR2MUX,
              input logic [1:0] ALUK,
              input logic [15:0] IR,
              output logic [15:0] ALU_OUT);
              
    logic [15:0] ALU_A, ALU_B;
    //assign ALU_A = SR1OUT;
    mux_any #(16) sr2mux(.d0(SR2OUT), .d1({{11{IR[4]}}, IR[4:0]}), .select(SR2MUX), .mux_out(ALU_B)); //sign extend IR[4:0] to 16 bit width
    
    always_comb
    begin: ALU
        ALU_A = SR1OUT;
        unique case(ALUK)
            2'b00:
                ALU_OUT =  ALU_B + ALU_A; //ALU_B + ALU_A
            2'b01:
                ALU_OUT = ALU_B & ALU_A; // ALU_B & ALU_A
            2'b10:
                ALU_OUT = ~ALU_A; //~ALU_A
            2'b11:
                ALU_OUT = ALU_A; //ALU_A
            //default : ; //might wanna  get rid of this, seeing as we have a unique case statement
        endcase
        
    end: ALU
    
endmodule
