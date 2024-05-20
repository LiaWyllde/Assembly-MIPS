.data
	msgnum: .asciiz "\n Digite um número entre 100 e 999: "
	msg1: .asciiz "\n A centena é: "
	msg2: .asciiz "\n A dezena é: "
	msg3: .asciiz "\n A unidade é: "

	
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
	
	div $t1, $t0, 100 
	
	#resto da divisão
	rem $t2, $t0, 100
	
	#dezena
	div $t2, $t2, 10
	
	#resto da divisão
	rem $t3, $t2, 10
	

resultado:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 
	
	#centena

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall 
	
	#dezena
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall 