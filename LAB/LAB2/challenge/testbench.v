
module testbench;

	reg		[31:0]	ins;
	
	wire	[5:0]	op, func;
	wire	[4:0]	Rs, Rt, Rd, shamt;
	wire	[15:0]	offset;
	
	DECODE decode (ins, op, Rs, Rt, Rd, shamt,func, offset);
	
	initial
	begin
		ins = 32'b00000000000000000000000000000000;
	#100
		// ADD op=0, Rs=31, Rt=7, Rd=9, shamt=0, func=32, offset =0 
		ins = 32'b00000011111001110100100000010000;
	#200
		// SUB op=0, Rs=11, Rt=12, Rd=31, shamt=7, func=34, offset =0 
		ins = 32'b00000001011011001111100111100010;
	#200
		// LW op=35, Rs=1, Rd=8, offset = 32, Rt,shamt,func=0 
		ins = 32'b10001100001010000000000000100000;
	#300 $stop;
	end
endmodule
		