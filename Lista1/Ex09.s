.data
	msgnum1: .asciiz "\n Digite o primeiro n�mero: "
	msgnum2: .asciiz "\n Digite o segundo n�mero: "
	msgf: .asciiz "\n A divis�o entre os n�meros resulta em: "
	
.text

main:

#num 1
	li $v0, 4
	la $a0, msgnum1
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t0, $v0, 0


num2:

	li $v0, 4
	la $a0, msgnum2
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
	beq $t1, 0, num2

	div $t3, $t0, $t1

resultado:

	li $v0, 4
	la $a0, msgf
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall 
	