.data
	msgalt: .asciiz"\nDigite o valor da altura: "
	msgbase: .asciiz"\nDigite o valor da base menor: "
	msgbma: .asciiz"\nDigite o valor da base maior: "
	msgf: .asciiz "\nO valor da área é: "
.text
main:
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msgalt		
	syscall			
	
	#ALTURA
	
	li $v0, 5		
	syscall			
	add $t0, $v0, 0 
	
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msgbase		
	syscall			
	
	#BASE MENOR
	
	li $v0, 5		
	syscall			
	add $t1, $v0, 0 
	
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msgbma	
	syscall			
	
	#BASE MENOR
	
	li $v0, 5		
	syscall			
	add $t2, $v0, 0
	
	#CALCULO ÁREA
	
	add $t3, $t1, $t2
	mul $t4, $t3, $t0
							
	#EXIBIR O TEXTO DO RESULTADO FOFO
	
	li $v0, 4 		
	la $a0, msgf		
	syscall			
	
	#ADICIONAR O RESULTADO PRA MOSTRAR DE VDD
	
	li $v0, 1		
	add $a0, $t4, 0		
	syscall 