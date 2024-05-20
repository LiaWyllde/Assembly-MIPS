.data
	msg1: .asciiz"\nDigite o valor do primeiro cateto: "
	msg2: .asciiz"\nDigite o valor do segundo cateto: "	
	msgf: .asciiz "\nO valor da hipotenusa é: "
	
.text
main:
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msg1		
	syscall			
	
	#CATETO 1
	
	li $v0, 5		
	syscall			
	add $t0, $v0, 0 
	
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msg2		
	syscall			
	
	#CATETO 2
	
	li $v0, 5		
	syscall			
	add $t1, $v0, 0 
	
	#CALCULO HIPOTENUSA
	
	add $t4, $t0, $t1
	
	#M - t4
	#I - t5
	#N - t6
	
	#RAIZ DE NUM
	
	#N PRIMO
	li $t5, 1 
	bgt $t4, 0, raiz

raiz: 
	#M = M - i
	sub $t4, $t4, $t5 
	
	#I = I + 2
	add $t5, $t5, 2 
	
	#N = N + 1
	add $t6, $t6, 1 	
	
	#ENQUANTO M >= 
	bge $t4, $t5, raiz 
	
							
	#RESULTADO FOFO
	
	li $v0, 4 		
	la $a0, msgf		
	syscall			
	
	#MOSTRAR DE VDD
	
	li $v0, 1		
	add $a0, $t5, 0		
	syscall 