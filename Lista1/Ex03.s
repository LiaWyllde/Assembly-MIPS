.data
	mssalario: .asciiz"\nDigite o valor das horas trabalhadas: "
	msghorase: .asciiz"\nDigite o valor de horas extras: "
	msgdesconto: .asciiz"\nDigite o valor do desconto: "
	msgfsab: .asciiz"\nO valor do salário bruto é: "
	msgfsal: .asciiz"\nO valor do salário líquido é: "

.text
main:
	#SÓ MOSTRA A MENSAGEM
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 1"
	la $a0, mssalario	#$a0 vai receber só o conteúdo da mensagem lá em cima
	syscall			#chama o systema para atualizar e realizar a ação
	
	#RECEBER UM NÚMERO INTEIRO PARA HORAS DE TRABALHO
	
	li $v0, 5		#avisa pra $v0 o que vai acontecer -iremos ler um número inteiro, receber do usuário-"
	syscall			#chama o systema para atualizar e realizar a ação
	add $t1, $v0, 0 	#Copiando $v0 para $t1. Como não há comando, fazemos somando o valor de $v0 com 0 em $t1
				#Só quando o system call att é que é possível adicionar um valor de fato ao registrador
	
							
	#SÓ MOSTRA A MENSAGEM DE HORAS
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 2"
	la $a0, msghorase	#$a0 vai receber só o conteúdo da mensagem lá em cima
	syscall			#chama o systema para atualizar e realizar a ação
	
	#RECEBER UM NÚMERO INTEIRO PARA HORAS 
	
	li $v0, 5		#avisa pra $v0 o que vai acontecer -iremos ler um número inteiro, receber do usuário-"
	syscall			#chama o systema para atualizar e realizar a ação
	add $t2,$v0, 0		#$t2 está recebendo o valor de v0
	
	
	#SÓ MOSTRA A MENSAGEM DESCONTO
	
	li $v0, 4 		#avisa pra $v0 o que vai acontecer -iremos escrever em $a0 o conteúdo de mensagem 2"
	la $a0, msgdesconto	#$a0 vai receber só o conteúdo da mensagem lá em cima
	syscall			#chama o systema para atualizar e realizar a ação
	
	#RECEBER UM NÚMERO INTEIRO PARA DESCONTO
	
	li $v0, 5		#avisa pra $v0 o que vai acontecer -iremos ler um número inteiro, receber do usuário-"
	syscall			#chama o systema para atualizar e realizar a ação
	div $t3,$v0, 100		#$t3 está recebendo o valor de v0 dividido por 100 pro
	
	 
	
	