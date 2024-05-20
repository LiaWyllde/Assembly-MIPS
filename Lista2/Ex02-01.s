.data
	msgnum: .asciiz "\n Digite o valor em reais:  "
	msg1: .asciiz "\n O valor convertido em dólar é: "
	
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
	
	mul $t1, $t0, 5
	
	#odio
	
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 	
	