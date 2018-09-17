#Problem 2 of assignment
#Name : Siddhartha M (17CO246),Chandan Naik (17CO212)
#Date : 6-9-18
	.option nopic
	.data
num2: .dword 10	#64b num2 in data segment 

	.globl num1
	.type main,@object
num1: .dword 20		#64b num1 in memory location pointed by global pointer

	.option nopic
	.text
	.globl main
	.type main,@function
main: 	la t0,num2
		ld t2,0(t0)		#t2=10
		la t3,num1
		ld t1,0(t3)		#t1=20
		add  t3,t1,t2	#t3=t1+t2
		sd t3,792(t0)	#storing t3 in 800th loc of data segment