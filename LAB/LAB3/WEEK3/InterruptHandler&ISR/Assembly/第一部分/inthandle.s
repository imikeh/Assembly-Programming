addiu $sp,$sp,-140 #(begin)backup CP0 to MEM Stack
mfc0 $k0,$14	#(begin)backup CP0_Epc($14) to MEM Stack(MEM[$sp+4])
nop
nop
nop
sw   $k0,4($sp)	#(end)backup CP0_Epc($14) to MEM Stack(MEM[$sp+4])
mfc0 $k0,$13    #(begin)backup CP0_Cause($13) to MEM Stack(MEM[$sp+8])
nop              
nop              
nop              
sw   $k0,8($sp) #(end)backup CP0_Cause($13) to MEM Stack(MEM[$sp+8])
mfc0 $k0,$12    #(begin)backup CP0_Status($12) to MEM Stack(MEM[$sp+12])
nop              
nop              
nop              
sw   $k0,12($sp) #(end)backup CP0_Status($12) to MEM Stack(MEM[$sp+12])
addiu $sp,$sp,140				
nop
nop
nop
mfc0 $k0,$13	#load status
nop
nop
nop
li   $k1,4096	 #4096(10) = 0X1000(16)
add  $k1,$k0,$k1 #compute address for intprocess.s
jalr   $k1		 #jump to exception service by corresponding cause (intprocess.s)
nop				 #ISR finished,then return here
nop				
nop
addiu $sp,$sp,-140
nop
nop
nop
lw   $k0,4($sp)	#(begin)restore CP0_Epc($14) from MEM Stack(MEM[$sp+4])
nop
nop
nop
mtc0 $k0,$14	#(end)restore CP0_Epc($14) from MEM Stack(MEM[$sp+4])
nop
nop
nop
lw   $k0,8($sp)  #(begin)restore CP0_Cause($13) from MEM Stack(MEM[$sp+8])
nop             
nop             
nop             
mtc0 $k0,$13    #(end)restore CP0_Cause($13) from MEM Stack(MEM[$sp+8])			
nop
nop
nop
lw   $k0,12($sp)  #(begin)restore CP0_Status($12) from MEM Stack(MEM[$sp+12])
addiu $sp,$sp,140	
nop               
nop               
nop               
mtc0 $k0,$12    #(end)restore CP0_Status($12) from MEM Stack(MEM[$sp+12])
nop
nop
nop
li $k1,64513	#(begin)set CP0_Status($12)= 0000FC01 ,ENABLE IP7~IP2 & BIT 0
mtc0 $k1,$12    #(end)set CP0_Status($12)= 0000FC01 ,ENABLE IP7~IP2 & BIT 0
mfc0 $k0,$14	#(begin)jump return to CP0_Epc($14)
nop
nop
nop
jr  $k0			#(end)jump return to CP0_Epc($14)


