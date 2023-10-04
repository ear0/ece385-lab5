module BEN_Block(input logic Clk, Reset, LD_CC, LD_BEN,
               input logic [15:0] Bus, IR,
               output logic BEN);
               
    logic BEN_internal;
    logic [2:0] CC;
    logic [2:0] NZP;
    assign BEN_internal = (IR[11] & CC[2]) | (IR[10] & CC[1]) | (IR[9] & CC[0]);
    Reg_1 BENReg (.Clk, .Reset, .Load(LD_BEN), .D(BEN_internal), .Q(BEN));
    Reg_any #(3) NZPReg(.Clk, .Reset, .Load(LD_CC), .D(NZP), .Q(CC));
    
    always_comb
    begin: NZP_LOGIC
    //DONT DO THIS IT MAKES U FAIL TIMING
        //BEN_internal = (IR[11] & CC[2]) | (IR[10] & CC[1]) | (IR[9] & CC[0]);  //bitwise
        if(Bus[15] == 1)
            NZP = 3'b100;
        else if(Bus == 0)
            NZP = 3'b010;
        else
            NZP = 3'b001;
    end: NZP_LOGIC
    
endmodule