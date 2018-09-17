#problem 4
#Name : Siddhartha M (17CO246),Chandan Naik (17CO212)
#Date : 6-9-18
		.option nopic
		.data
num:	.byte 1,2,3,4,5,6,7,8,9,10	#contiguous chunk of mem for 10 elements
		
		.text
		.globl main
		.type main,@function
main:	sd ra,0(sp)
		la t0,num
		li t1,0		#counter
		li t5,0		#to store sum
		li t4,10	#total no:of elements

loop:	lb t3,0(t0)	#running the loop to calc sum
		add t5,t5,t3
		addi t0,t0,1
		addi t1,t1,1
		bne t1,t4,loop	#result is stored in t5

