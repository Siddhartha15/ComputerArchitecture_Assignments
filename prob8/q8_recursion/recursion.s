	.option nopic
	.text 
	.align 1
	.globl	main
	.type main,@function

main:	mv x28,x1
	li x29,1
	li x5,3
	mv x30,x5
	sw x5,0(sp)
	j B

A:	lw x5, 0(sp)
	addi x5,x5,-1
	mulw x30,x30,x5
	sw x5,0(sp)
		
B:	lw x5,0(sp)
	bgt x5,x29,A

