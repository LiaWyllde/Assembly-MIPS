.data
	msgnum1: .asciiz "\n Digite o primeiro número: "
	msgnum2: .asciiz "\n Digite o segundo número: "
	msgtroca: .asciiz "\n Ordem trocada: "

	
	
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
	
	add $t3, $t0, 0



#num2
	li $v0, 4
	la $a0, msgnum2
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t1, $v0, 0

	add, $t4, $t1, 0

	
#troca

	li $t0, 0
	add, $t0, $t3, 0

	li $t1, 0
	add, $t1, $t4, 0

resultado:

	li $v0, 4
	la $a0, msgtroca
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 
	
	li $v0, 4
	la $a0, msgtroca
	syscall
	
	
	li $v0, 1
	add $a0, $t0, 0
	syscall 

	