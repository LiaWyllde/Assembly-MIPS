.data
	msgnum1: .asciiz "\n Digite o mês de nascimento: "
	msgnum2: .asciiz "\n Digite o ano de nascimento: "
	msgnum3: .asciiz "\n Digite o mês atual: "
	msgnum4: .asciiz "\n Digite o ano atual: "

	msgf: .asciiz "\n A idade em meses é: "
	
.text

main:

	#num 1 - mês de nascimento
	li $v0, 4
	la $a0, msgnum1
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t1, $v0, 0


	#ano de nascimento



	li $v0, 4
	la $a0, msgnum2
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t2, $v0, 0

#mês atual

	li $v0, 4
	la $a0, msgnum3
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t3, $v0, 0

	#ano atual

	li $v0, 4
	la $a0, msgnum4
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t4, $v0, 0
	

	# ano atual * 12 + mês atual
	# ano nasc * 12 + mês nascimento 
	# subtração ambos
	
	#ano de nascimento em meses + mês de nascimento	

	mul $t5, $t2, 12
	
	add $t5, $t5, $t1

	#ano de atual em meses + mês atual	

	mul $t6, $t4, 12
	
	add $t6, $t6, $t3

	#idade atual em meses
	
	sub $t7, $t6, $t5
	
	
resultado:

	li $v0, 4
	la $a0, msgf
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall 