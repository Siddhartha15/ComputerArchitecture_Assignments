#calc two conts onto t0,t1 and result i.e t1+t0 into t2
#Name : Siddhartha M (17CO246),Chandan Naik (17CO212)
#Date : 6-9-18

		.option nopic 
		.data
num:	.dword 10,20	#two consts 10,20

		.text
		.align 1
		.globl main
		.type main,@function

main:	la t0,num
		ld t1,0(t0)
		ld t2,8(t0)
		add t2,t1,t2	#t2=t1+t2 result in t2

