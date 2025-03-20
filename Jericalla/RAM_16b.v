//López Galván Melanie Montserrat

`timescale 1ns/1ns

module ram(
	input wire [3:0] address_ram,
	input wire [31:0] din_ram,
	input wire wEn,
	output reg [31:0 ]dout_ram
);

reg [31:0] ram_mem [0:15];

always @* begin
	if(wEn == 1'b1) begin
		ram_mem[address_ram]= din_ram;
		end
	else begin
		dout_ram = ram_mem[address_ram];
		end
end

endmodule
