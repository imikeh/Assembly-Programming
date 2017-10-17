`include "timescale.v"
// synopsys translate_on


module interrupt_module(irq,rst_n,clk,if_pc,intctl_epc,intctl_status,intctl_cause,iack,id2intctl_status);			input [5:0]	irq;
			input 	rst_n;
			input 	clk;
			input 	if_pc;
			input	[31:0] id2intctl_status;
			
			output 	[31:0] intctl_epc;
			output 	[31:0] intctl_cause;
			output 	[31:0] intctl_status;
			output  iack;
			
			reg   	[31:0]	intctl_epc;
			reg   	[31:0]	intctl_cause;
			reg		[31:0]	intctl_status;

			wire    [31:0]	if_pc;
			reg				iack;
			
		
		always@(negedge clk or negedge rst_n)
        begin	
			if(~rst_n)
					begin

					
					
					end
			else if( )
					begin
					
					
					
					
					end
			else   
					begin
						if(if_pc == 32'h00001000)
							begin
							
							end
						else  
					end
		end
		endmodule