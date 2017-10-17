
// synopsys translate_off
`include "timescale.v"
// synopsys translate_on

module cpu_reg32_ne_ex(clk, rst_n, din, wren, dout,iack);

        input           clk;    // System clk
        input           rst_n;  // System Reset
        input   [31:0]  din;    // Data input
        input           wren; // Enable Register
        input           iack;

        output  [31:0]  dout;   // Data Output


        reg     [31:0]  dout;
		
        always@(negedge clk or negedge rst_n or posedge iack)	//當正緣觸發iack or 負緣觸發rst_n or 負緣觸發clk時
        begin
				//若rst_n ==0 或 iack == 1時，設dout = 0(flush動作)
                if(~rst_n || iack)    	
					begin
					dout<=32'b0;
					end
				else
					begin
						if(wren) begin dout<=din;  $monitor("%0dns :\$monitor: wren=%b ",$stime,wren);   end
						else 	dout<=dout;  	
					end		
                 
        end


endmodule