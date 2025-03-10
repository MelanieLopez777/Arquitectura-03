//López Galván Melanie 

module RAM_16b 
(
	input [4:0] i_u4_dir,
	input [31:0] i_u32_din,
	input wEn,
	output reg [31:0] o_u32_dout
);

reg [31:0] mem [0:15];

always @* begin
	if (wEn) begin 
		mem[i_u4_dir] = i_u32_din;
	end
	else begin
		o_u32_dout = mem[i_u4_dir];
	end
end

endmodule
