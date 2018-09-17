#function to calc sum of elements of the array
#Name : Siddhartha M (17CO246),Chandan Naik (17CO212)
#Date : 6-9-18

	.option nopic
	
	.data	#defining array of 6 elements
arr:.word 1,2,3,4,5,6
	
	.text
	.align 1
	.globl main
	.type main,@function

main:	sd ra,0(sp)
		la a0,arr 	#addr of arr
		li a1,6		#length of arr(6)
		li a3,0		#result of sum put it as zero
		jal s1,sum 	#calling sum function with a0,a1 as args
					#a3 as result

		li t3,6
		div a4,a3,t3 #dividing a3/t3 a3-sumresult t3-(6) #result in a4

sum:	lw t3,0(a0)
		add a3,a3,t3
		addi a0,a0,4
		addi a1,a1,-1
		bne a1,zero,sum
		jalr x0,0(s1)

