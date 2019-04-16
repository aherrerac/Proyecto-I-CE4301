module reg_sprite(input logic clk,
					input logic we3,
					input logic [31:0] wd3,
					output logic [31:0] rd1, rd2);
	
	logic [31:0] rf[14:0];
	
	// three ported register file
	// read two ports combinationally
	// write third port on rising edge of clock
	// register 15 reads PC + 8 instead
	always_ff @(posedge clk)
	if (we3) rf[0] <= wd3;
	
	assign rd1 = rf[0]; //Mario pos X is LSB
	//Barrils
	assign rd2 = rf[1]; 
	
endmodule
