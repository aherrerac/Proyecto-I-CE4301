module sevenseg(input logic [3:0] data,
output logic [0:6] segments);
always_comb
case(data)
// abc_defg [0:6]
// gfe_dcba [6:0]
	
	4'b0000: segments = 7'b000_0001;
	4'b0001: segments = 7'b100_1111;
	4'b0010: segments = 7'b001_0010;
	4'b0011: segments = 7'b000_0110;
	4'b0100: segments = 7'b100_1100;
	4'b0101: segments = 7'b010_0100;
	4'b0110: segments = 7'b010_0000;
	4'b0111: segments = 7'b000_1111;
	4'b1000: segments = 7'b000_0000;
	4'b1001: segments = 7'b000_1100;
	4'b1010: segments = 7'b000_1000;
	4'b1011: segments = 7'b110_0000;
	4'b1100: segments = 7'b011_0001;
	4'b1101: segments = 7'b100_0010;
	4'b1110: segments = 7'b011_0000;
	4'b1111: segments = 7'b011_1000;
	
	
	/*0: segments = 7'b111_1110;
	1: segments = 7'b011_0000;
	2: segments = 7'b110_1101;
	3: segments = 7'b000_0110;
	4: segments = 7'b100_1100;
	5: segments = 7'b010_0100;
	6: segments = 7'b010_0000;
	7: segments = 7'b000_1111;
	8: segments = 7'b000_0000;
	9: segments = 7'b000_1100;
	10: segments = 7'b000_1000;
	11: segments = 7'b110_0000;
	12: segments = 7'b011_0001;
	13: segments = 7'b100_0010;
	14: segments = 7'b011_0000;
	15: segments = 7'b011_1000;*/
	
	
	default: segments = 7'b111_1111;
endcase
endmodule
