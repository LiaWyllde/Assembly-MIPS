.data
	msg1: .asciiz "\n Insira a altura do participante: "
	msg2: .asciiz "\n A maior altura é: "
	msg3: .asciiz"\n A menor altura é: "
	
.text

main:
	li $v0, 4
	la $a0, msg1
	syscall 
	
	li $v0, 5
	syscall
	add $t0, $v0, 0

	add $t1, $t1, 1
	
	ble $t1, 15, main
	j final 
	
	#menor recebe
	li $t2, 999
	
	#maior recebe
	li $t3, 0
	
	#if DIVERTIDO
	
	blt $t0, $t2, menor
	
	bgt $t0, $t3, maior
	
menor:

	li $t2, 0
	add $t2, $t0, 0
	j main
	
maior: 
	li $t3, 0
	add $t3, $t0, 0
	j main
	
	
final:

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	li $v0, 4
	la $a0,  msg3
	syscall 
	
	li $v0, 1
	add $a0, $t3, 0
	
	

	