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
