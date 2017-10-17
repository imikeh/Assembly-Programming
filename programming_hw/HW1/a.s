	.file	"a.s"
	.text				
	.align	2
	
	.global	main
	
main:

	stmfd	sp!, {fp,lr}
	ldr r2, [r1, #4]
	mov r4, #0
	mov r5, #0
	mov r3, r2
	
LOOP1:
	ldrb r0, [r2, r4]	
	add r4, r4, #1
	cmp r0, #0
	bne LOOP1
	sub r4, r4, #1
	
LOOP2:
	mov r2, r3
	ldrb r0, [r2, r5]
	add r5, r5, #1
	cmp r0, #33
	bge OUTPUT
	b LOOP2
	
OUTPUT:
	bl putchar
	cmp r4, r5
	bne LOOP2

@--------------------------------------
	
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	main, .-main


	