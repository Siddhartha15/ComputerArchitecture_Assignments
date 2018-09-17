#problem 5 reversing a string
#Name : Siddhartha M (17CO246),Chandan Naik (17CO212)
#Date : 6-9-18

	.option nopic

	.globl a
	.data
	.align 0
	.type a,@object
a:	.string "race"
	
	.text
	.align 1
	.globl main
	.type main,@function

main:	sd ra,0(sp)
		la t0,a		#baseaddr
		li t1,0		#using t1 for length of str
		add t2,zero,t0


len:	addi t1,t1,1	#calc length of string
		addi t2,t2,1
		lb t3,0(t2)
		bne t3,zero,len

		li t3,2
		div t4,t1,t3	#loopruntime
		addi t1,t1,-1
		add t2,t0,t1
		
rev:	lb t5,0(t0)		#swaping elements(1st-last ,2nd-last 2nd,so on) 
		lb t3,0(t2)
		sb t3,0(t0)		#storing it in a
		sb t5,0(t2)
		addi t2,t2,-1
		addi t0,t0,1
		addi t4,t4,-1
		bne t4,zero,rev

		la a0,a 		#printing the reversed string
		call printf
		ld ra,0(sp)
		jr ra