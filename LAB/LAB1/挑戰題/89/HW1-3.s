	ADDI $7,$zero,0             #i=0
	ADDI $8,$zero,0				#f0=0
	ADDI $9,$zero,0				#f1=0
	ADDI $9,$9,1                #f1=1
	
Loop: ADDI $7,$7,1			    #i++
  	  SLTI $10,$7,11			#$10=(i<10)?1:0
	  BEQ $10,$zero,Exit		#$10=0 go to Exit
	  ADD $11,$9,$8				#f(n)=f(n-1)+f(n-2)
	  MOVE $8,$9
	  MOVE $9,$11
	  J Loop					#go to Loop
Exit: LI $3,536870912
      SW $9,0($3)