module mux_any #(parameter width = 8) 
                  (input logic [width-1:0] d0, d1,
                   input logic select,
                   output logic [width-1:0] mux_out);
    always_comb
    begin
        unique case(select)
            1'b0: mux_out = d0;
            1'b1: mux_out = d1;
        endcase
    end
endmodule
