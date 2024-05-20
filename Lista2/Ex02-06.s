.data
	msgnum1: .asciiz "\n Digite o primeiro número: "
	msgnum2: .asciiz "\n Digite o segundo número: "
	msgi: .asciiz "\n Os números são iguais. "
	msgf: .asciiz "\n Números em ordem crescente: "
	msgcute: .asciiz " - "
	
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

	#num2
	li $v0, 4
	la $a0, msgnum2
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	#compara

	beq $t0, $t1, iguais
	
	
diferentes:

	bgt $t0, $t1, Maiorzinho
	

Menor:	
	add $t4, $t1, 0
	add $t3, $t0, 0
	j resultado
	

Maiorzinho:
	
	add $t4, $t0, 0
	add $t3, $t1, 0
	j resultado
	

iguais:

	li $v0, 4
	la $a0, msgi
	syscall
	j fim

resultado:

	li $v0, 4
	la $a0, msgf
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall 
	
	li $v0, 4
	la $a0, msgcute
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall 
fim:
	