
module pushbuttons_leds_assign(
    input  PB0_n,
    input  PB1_n,
    output LED0,
    output LED1
    );

	wire PB0 = ~PB0_n; // PushButton on logipi are active low -> make it active high
	wire PB1 = ~PB1_n; // PushButton on logipi are active low -> make it active high

	assign LED0 = PB0; // connect PB0 to LED0
	assign LED1 = PB1; // connect PB1 to LED1

endmodule
