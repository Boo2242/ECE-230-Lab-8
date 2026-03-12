module simple_4_mux(
    input [1:0] Sel,
    input [3:0]A, [3:0]B, [3:0]C, [3:0]D, Enable,
    output [3:0]Y
);

assign Y = Enable ? (Sel == 'b00 ? A :
           Sel == 'b01 ? B :
           Sel == 'b10 ? C : D) : 'b0000;

endmodule
