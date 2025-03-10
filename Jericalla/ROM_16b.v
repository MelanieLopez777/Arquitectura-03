//López Galván Melanie Montserrat

module ROM_16b
(
	input [3:0] i_u4_dirR1,
	input [3:0] i_u4_dirR2,
	output reg [31:0] o_u32_dout1,
	output reg [31:0] o_u32_dout2
);

reg [31:0] mem [0:15];

always @* begin
	o_u32_dout1= mem[i_u4_dirR1];
	o_u32_dout2= mem[i_u4_dirR2];
end
endmodule
