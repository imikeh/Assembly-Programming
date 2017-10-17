
module DECODE (ins, op, Rs, Rt, Rd, shamt,func, offset);

	input 	[31:0]	ins;
	
	output	[5:0]	op, func;
	output	[4:0]	Rs, Rt, Rd, shamt;
	output	[15:0]	offset;
	
//=======================================================
//	bit			6	5	5	5	  5		   6	
//	I-type		op	Rs	Rt	Rd	shamt 	function
//	bits			6	5	5		      16
//	J-type		op	Rs	Rd		    offset
//=======================================================

	assign 	op = ins[31:26];
	assign  Rs = ins[25:21];
	assign  Rt = ins[20:16];
	assign  Rd = (op==6'd0)?ins[15:11]:0;				//if op is R-type,Rd is ins[15:11],otherwise Rd is 0
	assign  shamt = (op==6'd0)?ins[10:6]:0;				//if op is R-type,shamt is ins[10:6],otherwise shamt is 0
	assign	func = (op==6'd0)?ins[6:0]:0;				//if op is R-type,func is ins[15:11],otherwise func is 0
	assign	offset = (op==6'd0)?0:ins[15:0];			//if offset is not R-type,offset is ins[15:0],otherwise offset is 0
	
endmodule
