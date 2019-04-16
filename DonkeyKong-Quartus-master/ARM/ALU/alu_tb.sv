module alu_tb();
	logic Zero,Overflow;
	logic [31:0] A, B, Result;
	logic [2:0] F;

	// instantiate device to be tested
	alu dut(A, B, F, Result, Zero, Overflow);

	// initialize test
	initial
	begin
		A = 32'h1; B = 32'h1; F = 2'b00;
		assert (Result == 32'd2) $display ("F equals 2");
		
	end
endmodule