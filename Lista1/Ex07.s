.data
	msgnum: .asciiz "\n Digite o n�mero: "
	msg1: .asciiz "\n O n�mero � par, portanto, a opera��o com o n�mero + 5 resulta em: "
	msg2: .asciiz  "\n O n�mero � impar, portanto, a opera��o com o n�mero + 8 resulta em: "
	
.text

main:

	#num 1
	li $v0, 4
	la $a0, msgnum
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	rem $t1, $t0, 2
	
	bgt $t1, 0, impar
	j par

impar:
	add $t2, $t0, 8
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall 
	j delicado
	
par:
	add $t2, $t0, 5
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall 

delicado:
	
