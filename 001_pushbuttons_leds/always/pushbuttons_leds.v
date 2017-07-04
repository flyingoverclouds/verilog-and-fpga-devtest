
module pushbuttons_leds(
    input PB0_n,
    input PB1_n,
    output reg LED0,
    output reg LED1
    );

	wire PB0 = ~PB0_n; // PushButton on logipi are active low -> make it active high
	wire PB1 = ~PB1_n; // PushButton on logipi are active low -> make it active high


	always @(PB0 or PB1)
	begin
		LED0 = PB0;
		LED1 = PB1;
	end

endmodule
