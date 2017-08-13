module premier_tb;

output reg clock;
wire iled1;
wire iled2;
wire iled3;

initial
begin
    $dumpfile("premier.vcd");
    $dumpvars(0,premier_tb);
    clock=0;
    #40000 $finish
end

always
begin
    #1 clock = !clock;
end

Premier premtb (clock, iled1, iled2, iled3);

endmodule