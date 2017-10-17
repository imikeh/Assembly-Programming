	.file	"a.s"
	.text				
	.align	2
	
	.global	main
main:
	stmfd	sp!, {fp, lr}
	
@--------------------------------------
	ldr r4, [r1, #4]
	mov r10, r4
	mov r5, r4
	mov r6, #0
	mov r7, #0

NUM1:
	ldrb r8, [r5], #1		
	cmp r8, #0
	ldreq r5, [r1, #8]
	mov r9, r5
	beq NUM2
	cmp r8, #48	
	blt STRING1
	cmp r8, #57
	bgt STRING1	
	add r6, r6, r6, LSL #2
	mov r6, r6, LSL #1
	sub r8, r8, #48
	add r6, r6, r8
	b NUM1
	
NUM2:
	ldrb r8, [r5], #1		
	cmp r8, #0
	ldreq r5, [r1, #12]	
	beq G
	cmp r8, #48	
	blt STRING2
	cmp r8, #57
	bgt STRING2
	add r7, r7, r7, LSL #2
	mov r7, r7, LSL #1
	sub r8, r8, #48
	add r7, r7, r8
	b NUM2	
	
G:
	movls r1, r6
	movls r2, r7
	b GCD
	
GCD:
	cmp r6, r7
	subgt r6, r6, r7
	sublt r7, r7, r6
	bne GCD
	mov r3, r6
	ldr r0, =OUTPUT1
	bl printf
	b EXIT	

STRING1:
	ldrb r0, [r10], #1
	bl putchar
	cmp r0, #0
	bne STRING1	
	b NotINT	
	
STRING2:
	ldrb r0, [r9], #1
	bl putchar
	cmp r0, #0
	bne STRING2	
	b NotINT
	
NotINT:
	adr r0, OUTPUT2			
	bl printf
	b EXIT
	
EXIT:	
	
@--------------------------------------
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	main, .-main

OUTPUT1:
	.ascii	"The greatest common divisor of %d and %d is %d.\n\000"	
	
OUTPUT2:	
	.ascii	"is not an integer.\n\000"
	 
	