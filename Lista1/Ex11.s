.data
	msgnum: .asciiz "\n Digite um número: "
	
	msg1: .asciiz "\n A quantidade de números no intervalo de 0-25 é: "
	msg2: .asciiz "\n A quantidade de números no intervalo de 26-50 é: "
	msg3: .asciiz "\n A quantidade de números no intervalo de 51-75 é:  "
	msg4: .asciiz "\n A quantidade de números no intervalo de 76-100 é: "
	
.text

main:

	li $v0, 4
	la $a0, msgnum
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#número maior que 100
	bgt $t0, 100, main
	
	#finalizar o programa
	blt $t0, 0, resultado
	
	ble $t0, 25, int1
	ble $t0, 50, int2
	ble $t0, 75, int3
	ble $t0, 100, int4
	
int1:

	add $t1, $t1, 1
	j main
	
int2:

	add $t2, $t2, 1
	j main
	
int3:
	
	add $t3, $t3, 1
	j main

int4:

	add $t4, $t4, 1
	j main
	
resultado:

	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 
	
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall 
	
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall 
	
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall 