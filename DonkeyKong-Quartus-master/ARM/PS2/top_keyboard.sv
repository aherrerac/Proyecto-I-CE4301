module top_keyboard(
	input logic CLK,		//board clock signal
	input logic PS2_CLK,		//keyboard clock signal
	input logic PS2_DATA,		//keyboard data signal
	output logic [7:0] LED,	//8 output LEDs
   output logic press,
	output logic [7:0] codeword,
	output logic [0:6] sevenseg1, sevenseg2);

	Keyboard kb (.CLK(CLK),
					 .PS2_CLK(PS2_CLK), 
					 .PS2_DATA(PS2_DATA),
					 .LED(LED),
					 .key_press(press),
					 .CODEWORD(codeword));
							
	sevenseg ss1(LED[3:0],sevenseg1);
	sevenseg ss2(LED[7:4],sevenseg2);

endmodule
