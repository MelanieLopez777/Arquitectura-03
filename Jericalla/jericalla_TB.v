//López Galván Melanie Montserrat

`timescale 1ns/1ns

module jericalla_TB();

reg [16:0] instruction_TB;
wire [31:0] result_TB;
wire ZF_TB;

jericalla jericalla_inst(
	.instruction(instruction_TB),
	.result(result_TB),
	.ZF(ZF_TB)
);

initial begin
     $readmemb("dato.txt",jericalla_inst.rom_inst.rom_mem);
 end
 
 initial begin
     instruction_TB = 17'b00110010010001101;
     #100;
     instruction_TB = 17'b0011zzzzzzzzzzzz0;
     #100;
 end
 
 endmodule