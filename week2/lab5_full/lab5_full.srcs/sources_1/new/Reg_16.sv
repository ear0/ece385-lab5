module Reg_16(input logic Clk, Load, Reset,
              input logic [15:0] D,
              output logic [15:0] Data_Out);
              
    always_ff @ (posedge Clk)
    begin
        if(Reset)
            Data_Out <= 16'b0;
        else if(Load)
            Data_Out <= D;
        /*
        else
            Data_Out <= Data_Out;
        */
    end
    
endmodule

module Reg_1 //#(parameter width = 1) 
            (input logic Clk, Load, Reset, D, 
            output logic Q);
    
    always_ff @(posedge Clk)
    begin
        if(Reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule

module Reg_any #(parameter width = 3)
                (input logic Clk, Load, Reset, 
                 input logic [width - 1 : 0] D,
                 output logic [width - 1 : 0] Q);
    always_ff @(posedge Clk)
    begin
        if(Reset)
            Q <= 0;
        else
            Q <= D;
    end
endmodule