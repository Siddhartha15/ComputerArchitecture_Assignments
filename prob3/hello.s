#Program to print hello world 
# Chandan Naik(17CO212)  Siddhartha M(17CO246)
# Date: 05-09-2018
	.option nopic
	
	.data
str:	.string "Hello World"

	.text
	.align 1
	.globl main
	.type main,@function

main:
	sd ra,0(sp)
	la a0,str	
	call printf	#printing str with a0 as arg(hello world)
	ld ra,0(sp)
	jr ra
