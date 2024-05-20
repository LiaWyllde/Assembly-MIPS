.data
	msgalt: .asciiz"\nDigite o valor da altura: "
	msgbase: .asciiz"\nDigite o valor da base: "
	msgf: .asciiz"\nO valor da área é: "
.text
main:
	#SÓ MOSTRA A MENSAGEM
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 1"
	la $a0, msgalt		#$a0 vai receber só o conteúdo da mensagem lá em cima
	syscall			#chama o systema para atualizar e realizar a ação
	
	#RECEBER UM NÚMERO INTEIRO PARA ALTURA
	
	li $v0, 5		#avisa pra $v0 o que vai acontecer -iremos ler um número inteiro, receber do usuário-"
	syscall			#chama o systema para atualizar e realizar a ação
	add $t1, $v0, 0 	#Copiando $v0 para $t1. Como não há comando, fazemos somando o valor de $v0 com 0 em $t1
				#Só quando o system call att é que é possível adicionar um valor de fato ao registrador
				
	#SÓ MOSTRA A MENSAGEM
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 2"
	la $a0, msgbase		#$a0 vai receber só o conteúdo da mensagem lá em cima
	syscall			#chama o systema para atualizar e realizar a ação
	
	#RECEBER UM NÚMERO INTEIRO PARA BASE
	
	li $v0, 5		#avisa pra $v0 o que vai acontecer -iremos ler um número inteiro, receber do usuário-"
	syscall			#chama o systema para atualizar e realizar a ação
	
	mul $t3,$t1, $t2	#$t3 está recebendo o valor de t1 mul por t2
	
	#EXIBIR O TEXTO DO RESULTADO FOFO
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 1"
	la $a0, msgf		#$a0 vai receber só o conteúdo da mensagem final lá em cima
	syscall			#chama o systema para atualizar e printar a ação
	
	#ADICIONAR O RESULTADO PRA MOSTRAR DE VDD
	
	li $v0, 1		#1 ESCRITA DE UM VALOR INTEIRO NO CONSOLE
	add $a0, $t3, 0		#FALANDO PRO a0 EXIBIR GRAVANDO O VALOR DE t3 NELE A FORÇA 
	syscall 