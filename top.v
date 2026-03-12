module top (
    input [15:0]sw,
    input btnL, btnR, btnU, btnD, btnC,
    output [15:0]led
);
    
    wire [1:0] selectMux;
    
    assign selectMux = {btnU, btnL};
    
    wire [3:0] signal;

    simple_4_mux mux (
        .A(sw[3:0]),
        .B(sw[7:4]),
        .C(sw[11:8]),
        .D(sw[15:12]),
        .Sel(selectMux),
        .Enable(btnC),
        .Y(signal)
    );
    
    wire [1:0] selectDemux;
    
    assign selectDemux = {btnR, btnD};
    
    demux demux (
        .In(signal),
        .Sel(selectDemux),
        .Enable(btnC),
        .Y1(led[3:0]),
        .Y2(led[7:4]),
        .Y3(led[11:8]),
        .Y4(led[15:12])
    );
    
endmodule
