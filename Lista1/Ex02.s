.data
	msgP: .asciiz"\nDigite o valor de camisetas P: "
	msgM: .asciiz"\nDigite o valor de camisetas M: "
	msgG: .asciiz"\nDigite o valor de camisetas G: "
	
	msgf: .asciiz"\nO valor total arrecado é: "

.text
main:
	#MENSAGEM
	
	li $v0, 4 	
	la $a0, msgP
	syscall		
	
	#RECEBER CAMISETAS P
	
	li $v0, 5		
	syscall			
	add $t1, $v0, 0
	mul $t1, $t1, 10
				
	
							
	#MENSAGEM
	
	li $v0, 4 		
	la $a0, msgM	
	syscall			
	
	#RECEBER CAMISETAS M
	
	li $v0, 5		
	syscall			
	add $t2,$v0, 0
	mul $t2, $t2, 12	
	
	
	#MENSAGEM

	li $v0, 4 		
	la $a0, msgG
	syscall			
	
	#RECEBER UM NÚMERO INTEIRO PARA DESCONTO
	
	li $v0, 5		
	syscall			
	add $t3, $v0, 0	
	mul $t3, $t3, 15
	
	#VALOR FINAL
	
	add $t4, $t1, $t2
	add $t4, $t4, $t3
	
	#EXIBIR VALOR FINAL
	
	li $v0, 4 		
	la $a0, msgf
	syscall	
	
	li $v0, 1		
	add $a0, $t4, 0		
	syscall 
	
	
	
	 