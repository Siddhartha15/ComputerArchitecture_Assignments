#Program to perform matrix multipication
#Chandan Naik(17CO212)	Siddharatha M(17CO246)
#Date: 06-09-2018	
	.option nopic
	.data
M:	.dword 1,2,3,1
N:	.dword 0,1,2,3
X:	.string "%d %d \n %d %d"

	.text 
	.globl main
	.type main,@function
	
main:	# for initialing the values	
	la x10,M
	la x11,N
	li x15,0
	li x5,0
	li x6,0
	li x7,0
	li x28,2
	li x29,2
	li x14,0
	j A

D:	li x12,0
	li x13,0
	mulw x12,x29,x5
	add x12,x12,x7
	mulw x13,x28,x7
	add x13,x13,x6
	slli x12,x12,3
	slli x13,x13,3
	add x12,x12,x10
	add x13,x13,x11
	ld x12,0(x12)
	ld x13,0(x13)
	mulw x12,x12,x13
	add x15,x15,x12
	addi x7,x7,1
	
C:	#for loop k
	blt x7,x29,D
	addi x6,x6,1
	add x14,x14,x15
	addi x2,x2,-8
	sw x15,0(x2)
	li x15,0

B:	#for loop j
	li x7,0
	blt x6,x28,C
	addi x5,x5,1

A:	#for loop i	
	li x6,0
	blt x5,x28,B
	mv x7,x1
	la x10,X	
	ld x14,0(x2)
	ld x13,8(x2)
	ld x12,16(x2)
	ld x11,24(x2)
	call printf	
	mv x1,x7
	jr ra
