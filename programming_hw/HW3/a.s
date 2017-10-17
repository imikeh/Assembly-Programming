	.file	"a.s"
	.text				
	.align	2
	
	.global	main
main:
	stmfd	sp!, {fp, lr}
	
@--------------------------------------
	ldr r4, [r1, #4]
	mov r3, r4
	mov r5, #0
	mov r6, #0
	mov r7, #0
	mov r8, #1
	mov r9, #0
	mov r10, #0
	mov r11, r4
	
NUM:
	ldrb r0, [r4], #1		
	bl putchar
	cmp r0, #0
	bne NUM
	
	mov r4, r3
	ldrb r12, [r11], #1		
	cmp r12, #45
	moveq r7, #1
	ldreqb r3, [r4], #1
	
Int:
	ldrb r3, [r4], #1
	cmp r3, #46
	beq Dec
	cmp r3, #0
	beq PRINT
	add r5, r5, r5, LSL #2
	mov r5, r5, LSL #1
	sub r3, r3, #48
	add r5, r5, r3
	b Int
		
Dec:
	ldrb r3, [r4], #1
	cmp r3, #0
	beq PRINT
	add r6, r6, r6, LSL #2
	mov r6, r6, LSL #1
	sub r3, r3, #48
	add r6, r6, r3
	add r8, r8, r8, LSL #2
	mov r8, r8, LSL #1
	b Dec
	
PRINT:
	mov r1, r7
	ldr r0, =OUTPUT1
	bl printf
	mov r7, #0
	Bin_Int:
		mov r4, #0
		cmp r7, #23
		bge Eexcept
		cmp r5, #0
		beq Bin_Dec
		DIVISOR1:
			cmp r5, #1
			subgt r5, r5, #2
			addgt r4, r4, #1
			bgt DIVISOR1
		add r7, r7, #1
		add r5, r5, #48
		strb r5, [r9, r7]
		mov r5, r4
		b Bin_Int
		
	Bin_Dec:
		cmp r4, #23
		bge Eexcept
		cmp r6, #0
		beq Eexcept
		mov r6, r6, LSL #1
		cmp r6, r8
		subge r6, r6, r8
		movge r5, #49
		movlt r5, #48
		add r4, r4, #1
		strb r5, [r10, r4]
		b Bin_Dec
		
	Eexcept:
		cmp r7, #0
		subgt r7, r7, #1
		mov r11, r7
		add r7, r7, #127
		mov r6, #8
		mov r5, #0
		cmp r7, #127
		bne Bin_Exp
		JUDGE:
			ldrb r3, [r10, r5]
			cmp r5, #23
			beq Bin_Exp
			cmp r3, #49
			beq Bin_Exp
			add r5, r5, #1
			sub r7, r7, #1
			b JUDGE
			
	Bin_Exp:
		mov r3, #0
		cmp r6, #0
		moveq r7, #1
		beq display1
		DIVISOR2:
			cmp r7, #1
			subgt r7, r7, #2
			addgt r3, r3, #1
			bgt DIVISOR2
		sub r6, r6, #1
		add r7, r7, #48
		strb r7, [r12, r6]
		mov r7, r3
		b Bin_Exp
		
display1:
	cmp r6, #8
	bge display2
	ldrb r0, [r12, r6]
	add r6, r6, #1
	bl putchar
	b display1
	
display2:
	cmp r11, #0
	ble display3
	cmp r7, #23
	beq EXIT
	ldrb r0, [r9, r11]
	bl putchar
	sub r11, r11, #1
	add r7, r7, #1
	b display2
	
display3:
	cmp r5, r4
	bge display4
	cmp r7, #23
	beq EXIT
	add r5, r5, #1
	ldrb r0, [r10, r5]
	bl putchar
	add r7, r7, #1
	b display3
	
display4:
	cmp r7, #23
	beq EXIT
	mov r0, #48
	bl putchar
	add r7, r7, #1
	b display4
	
EXIT:	
	
@--------------------------------------
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	main, .-main

OUTPUT1:
	.ascii "is coded by %d\000"

	 
	