	ADDI $8,$zero,0				#i=0
	ADDI $9,$zero,0				#sum=0
	
Loop: ADDI $8,$8,1			    #i++
  	  SLTI $10,$8,11			#$10=(i<11)?1:0
	  BEQ $10,$zero,Exit		#$10=0 go to Exit
	  ADD $9,$9,$8				#sum=sum+i
	  J Loop					#go to Loop
Exit: