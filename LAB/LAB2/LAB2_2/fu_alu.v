
module fu_alu(  a,
                b,
                op,
                move_cond,
                result,
                carryout,
                zero,
                overflow,
                move_check
                );

        input   [31:0]  a;
        input   [31:0]  b;
        input   [3:0]   op;
        input   [1:0]   move_cond;

        output  [31:0]  result;
        output          carryout;
        output          zero;
        output          overflow;
        output          move_check;

        wire           	adder_sub;
        wire    [31:0]  bus_b;
        wire            b_zero;		
		
        wire    [31:0]  bus_add;	        
		wire    [31:0]  bus_and ; 
		wire    [31:0]  bus_or ;
		wire    [31:0]  bus_xor ;
		wire    [31:0]  bus_nor ;
        wire    [31:0]  bus_slt;
        wire    [31:0]  bus_lui;
		
        reg     [31:0]  result;


        //=============================================================
        //                    			ALUOp     ALU Function
        //-------------------------------------------------------------
        //      ADD:          		0000      ADD
        //      ADDU:        		0001      ADD
        //      SUB:          		0010      SUB
        //      SUBU:         		0011      SUB
        //      AND:          		0100      AND
        //      OR:           		0101      OR
        //      XOR:          		0110      XOR
        //      NOR:          		0111      NOR
        //      ADDI:         		1000      ADD
        //      ADDIU:       		1001      ADD
        //      SLT,SLTI:    		1010      SUB
        //      SLTU,SLTIU:  		1011      SUB
        //      ANDI:         		1100      AND
        //      ORI:          		1101      OR
        //      XORI:         		1110      XOR
        //      LUI:          		1111      NOP
        //=============================================================


        //=============================================================
        //      Adder
        //=============================================================

        // if the operation is SUB, invert b before sending into 32-bit adder
        assign  adder_sub = 0;							
		assign  bus_b	  = (op[1]==1)?(~b+1):b;			//if op is SUB,bus_b = ~b+1
		
        // adder-32bit
        fu_csa32        u_adder32(
                         .din1          (a),				//din1 = a
                         .din2          (bus_b),			//din2 = bus_b
                         .carry_in      (adder_sub),
                         .dout          (bus_add),
                         .carry_out     (carryout),
                         .overflow      (overflow)
                        );


        //=============================================================
        //      Logic
        //=============================================================

        // and
        assign  bus_and= a&b;								//do a and b

        // or
        assign  bus_or= a|b;								//do a or b

        // xor
        assign  bus_xor= a^b;								//do a xor b

        // nor
        assign  bus_nor = ~(a|b);							//do a nor b


        //=============================================================
        //      SLT
        //-------------------------------------------------------------
        // if (op[0]=1) ==> Unsigned
        // A[31] B[31]
        //   0     0    --> = 2'complement
        //   0     1    --> A < B
        //   1     0    --> A > B
        //   1     1    --> = 2'complement
        //=============================================================
		
		assign  bus_slt[31:1]=31'b0;
        assign  bus_slt[0] = (op[0]&({a[31],b[31]}==2'b01))?1'b1:
											(op[0]&({a[31],b[31]}==2'b10))?1'b0:
												bus_add[31];

   

        //=============================================================
        //      LUI
        //=============================================================

		assign bus_lui = b<<16;								//b LUI
		
		
		
        //=============================================================
        //      zero detection
        //=============================================================
        //zero detection
        assign  zero = (result==0)?1:0;						//if result is 0,zero is 1,otherwise zero is 0

		
        //=============================================================
        //      Output  Mux
        //=============================================================
        always@(bus_add or bus_and or bus_or or bus_slt or bus_xor or
				bus_nor or bus_lui or op)
        begin
            case(op)
                4'b0000: result = bus_add;      //ADD:          00 0000 ... 10 0000
                4'b0001: result = bus_add;      //ADDU:         00 0000 ... 10 0001
                4'b0010: result = bus_add;      //SUB:          00 0000 ... 10 0010
                4'b0011: result = bus_add;      //SUBU:         00 0000 ... 10 0011
                4'b0100: result = bus_and;    	//AND:          00 0000 ... 10 0100
                4'b0101: result = bus_or;    	//OR:           00 0000 ... 10 0101
                4'b0110: result = bus_xor;    	//XOR:          00 0000 ... 10 0110
                4'b0111: result = bus_nor;    	//NOR:          00 0000 ... 10 0111
                4'b1000: result = bus_add;      //ADDI:         00 1000 ... xx xxxx
                4'b1001: result = bus_add;      //ADDIU:        00 1001 ... xx xxxx
                4'b1010: result = bus_slt; 		//SLT,SLTI:     00 0000 ... 10 1010
                                                //SLTI:         00 1010 ... xx xxxx
                4'b1011: result = bus_slt; 		//SLTU,SLTIU:   00 0000 ... 10 1011
                                                //SLTIU:        00 1011 ... xx xxxx
                4'b1100: result = bus_and;   	//ANDI:         00 1100 ... xx xxxx
                4'b1101: result = bus_or;    	//ORI:          00 1101 ... xx xxxx
                4'b1110: result = bus_xor;    	//XORI:         00 1110 ... xx xxxx
                4'b1111: result = bus_lui;      //LUI:          00 1111 ... xx xxxx
            endcase
        end

        //=============================================================
        //      Other
        //=============================================================

        //Move Conditional Check
        assign  b_zero = (b==32'b0)?1'b1:1'b0;
        assign  move_check = (move_cond[0]==1'b0)? b_zero : (~b_zero) ;




endmodule