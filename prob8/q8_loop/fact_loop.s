# Program to find the factorial of a number using loop
# Name: Chandan Naik(17CO212), Siddhartha M(17CO246)
# Date: 06-09-18
	.option nopic
	
	.data
num: 	.word 4
	
	.text
	.align 1
	.globl main
	.type main, @function

main:	sd ra,0(sp)
	addi sp,sp,-8
	
	#initialisation of the data
	la a0,num
	#using t5 instead of x5
	lw t5,0(a0)
	li t1,1
	
fact:	#loop to find the factorial
	mul t1,t1,t5
	addi t5,t5,-1
	bne t5,zero,fact
	
	#to display the result
	addi a0,t5,0
	call printf
 
	#to go back to the main function
	ld ra,0(sp)
	jr ra 
