.data
	msgnum: .asciiz "\n Digite um n�mero: "
	msgf: .asciiz "\n A opera��o com o n�mero resulta em: "
	

.text

main:
	li $v0, 4
	la $a0, msgnum
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	
	#verifica��o 
	
	blt $t0, 0, triplo
	j dobro
	

triplo:	
	mul $t1, $t0, 3
	j msg	
dobro:
	mul $t1, $t0, 2
	
msg:

	li $v0, 4
	la $a0, msgf
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall 

	


	
	
	