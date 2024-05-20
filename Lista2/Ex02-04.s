.data
	msg1: .asciiz"\nDigite o valor do salário: "
	msgf: .asciiz "\nO valor do salário com reajuste é: "
.text
main:
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msg1		
	syscall			
	
	#SAL
	
	li $v0, 5		
	syscall			
	add $t0, $v0, 0 
	
	
	#CALCULO ÁREA
	
	mul $t1, $t0, 25
	div $t1, $t1, 100
	add $t2, $t0, $t1
							
	#RESULTADO FOFO
	
	li $v0, 4 		
	la $a0, msgf		
	syscall			
	
	li $v0, 1		
	add $a0, $t2, 0		
	syscall 