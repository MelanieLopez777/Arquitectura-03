//López Galván Melanie Montserrat

`timescale 1ns/1ns

module rom(
	input wire [3:0] address1_rom,
	input wire [3:0] address2_rom,
	output reg [31:0] dout1_rom,
	output reg [31:0] dout2_rom
);

reg [31:0] rom_mem [0:15];

always @* begin
		dout1_rom = rom_mem[address1_rom];
		dout2_rom = rom_mem[address2_rom];
	end
endmodule