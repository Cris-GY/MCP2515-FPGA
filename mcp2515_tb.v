`timescale 1ns / 100ps

module mcp2515_tb ();
reg rst_n;
reg clk50;
reg so;
wire cs;
wire sck;
wire si;
wire tx_empty;

mcp2515 uut(
.clk50(clk50),
.rst_n(rst_n),
.cs(cs),
.sck(sck),
.si(si),
.tx_empty(tx_empty),
.so(so)
);

initial
	begin
		clk50 = 0;
		rst_n = 0;
		so = 1;
		#100 rst_n = 1;
		#10000000;
		$stop;
	end

always
	begin
		#10 clk50 = ~clk50;
	end

always
	begin
		#20000 so <= ~so;
	end

endmodule