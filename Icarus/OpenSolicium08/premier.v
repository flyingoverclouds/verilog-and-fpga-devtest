// declaration top level module
module Premier
(
    input wire MCLK50M,
    output wire led1,
    output wire led2,
    output wire led3
);

// instanciation
blink instled1 (MCLK50M, led1);
blink #(32'd6499999)    instled2 (MCLK50M,led2);
blink #(32'd3499999)    instled3 (MCLK50M,led3);

endmodule



// module clignotant
module blink #(parameter speed=32'd16499999)
(
    input wire CLK,
    output reg led
);

reg [31:0] cnt;

// compteur de devision
always @(posedge CLK)
begin
    if (nct != speed)
        cnt <= cnt + 1'd1;
    else
        cnt <= 32'd0;
end

// changement d'etat
wire clign;
always @(posedge clk)
begin
    if (clign)
        led <= ~led;
end

// Assignation continue
assign clign= (cnt == speed)

endmodule