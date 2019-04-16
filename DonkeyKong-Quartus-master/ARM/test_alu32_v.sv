module test_alu32_v();
	
	reg clk;
	logic [31:0] A;
	logic [31:0] B;
	logic [2:0] F;

	logic [31:0] Y;
	logic Zero, Overflow, Negative, Carry;

	logic [31:0] vectornum, errors;
	logic [100:0] testvectors[10000:0];
	logic [31:0] ExpectedY;
	logic ExpectedZero;
	logic ExpectedOverflow;
	
	
	alu32 uut (A, B, F, Y,  Negative, Zero, Carry,Overflow);
	
	always
	begin
		clk = 1; #5; clk = 0; #5;
	end
	
	initial
	begin
		$readmemh("C:\\Users\\Pablo\\Documents\\1-TEC\\Taller\\DonkeyKong-Quartus\\ARM\\test_alu32.tv", testvectors);
		vectornum = 0; errors = 0;
	end
	
	always @(posedge clk)
	begin
		#1; {ExpectedOverflow, ExpectedZero, F, A, B, ExpectedY} = testvectors[vectornum];
	end
	// check results on falling edge of clk
	always @(negedge clk)
	begin
		if ({Y, Zero, Overflow} !==
		{ExpectedY, ExpectedZero, ExpectedOverflow})
		begin
			$display("Error: inputs: F = %h, A = %h, B = %h", F, A, B);
			$display(" Y = %h, Zero = %b Overflow = %b\n (Expected Y = %h, Expected Zero = %b, Expected Overflow = %b)", Y, Zero, Overflow, ExpectedY, ExpectedZero, ExpectedOverflow);
			errors = errors + 1;
		end
		
		vectornum = vectornum + 1;
		
		if (testvectors[vectornum] === 101'hx)
		begin
			$display("%d tests completed with %d errors", vectornum, errors);
			$finish;
		end
	end
endmodule