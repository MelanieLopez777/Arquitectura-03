//López Galván Melanie Montserrat

`timescale 1ns/1ns

module jericalla(
	input wire [16:0] instruction,
	output [31:0] result,
	output ZF
);

wire [31:0] data_1;
wire [31:0] data_2;
wire [31:0] result_alu;

rom rom_inst(
	.address1_rom(instruction[8:5]),
	.address2_rom(instruction[4:1]),
	.dout1_rom(data_1),
	.dout2_rom(data_2)
);

alu alu_inst(
	.op(instruction[12:9]),
 	.din1_alu(data_1),
 	.din2_alu(data_2),
 	.result_alu(result_alu),
 	.ZF(ZF)
);

ram ram_inst(
	.address_ram(instruction[16:13]),
	.din_ram(result_alu),
	.wEn(instruction[0]),
	.dout_ram(result)
);

endmodule