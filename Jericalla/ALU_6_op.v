module ALU_6_op 
(
	input [3:0] i_u4_op,
	input [31:0] i_u32_din1,
	input [31:0] i_u32_din2,
	output reg [31:0] o_u32_dout,
	output reg ZF
);

always @* begin 
	case(i_u4_op)
	4'b0000: o_u32_dout = i_u32_din1 & i_u32_din2;
	4'b0001: o_u32_dout = i_u32_din1 | i_u32_din2;
	4'b0010: o_u32_dout = i_u32_din1 + i_u32_din2;  
	4'b0110: o_u32_dout = i_u32_din1 - i_u32_din2;
	4'b0111: o_u32_dout =(i_u32_din1 < i_u32_din2)?32'd1 : 32'd0;
	4'b1100: o_u32_dout = ~(i_u32_din1 | i_u32_din2);
	endcase


	if (o_u32_dout == 32'd0)
		begin 
			ZF=1'b1;
		end
	else
		begin
			ZF=1'b0;
		end
end
	
endmodule
