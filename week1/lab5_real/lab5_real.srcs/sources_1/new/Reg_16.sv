module Reg_16(input logic Clk, Load, Reset,
              input logic [15:0] D,
              output logic [15:0] D_out);
              
    always_ff @ (posedge Clk)
    begin
        if(Reset)
            D_out <= 16'b0000000000000000;
        else if(Load)
            D_out <= D;
    end
    
endmodule
