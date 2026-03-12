module demux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] Y1,
    output [3:0] Y2,
    output [3:0] Y3,
    output [3:0] Y4
);

    assign Y1 =(Enable && Sel == 'b00 ? In : 0);
    assign Y2 =(Enable && Sel == 'b01 ? In : 0);
    assign Y3 =(Enable && Sel == 'b10 ? In : 0);
    assign Y4 =(Enable && Sel == 'b11 ? In : 0);

endmodule