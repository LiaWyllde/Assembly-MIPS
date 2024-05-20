.data
	msgnum1: .asciiz "\n Digite o valor de A: "
	msgnum2: .asciiz "\n Digite o valor de B: "
	msgnum3: .asciiz "\n Digite o valor de C: "
	msgf: .asciiz "\n A divisão entre os números resulta em: "
	msduas: .asciiz "\n DUAS RAÍZES REAIS"
	msuma: .asciiz "\n UMA RAÍZ REAL"
	mszero: .asciiz "\n NÃO EXISTEM RAÍZES REAIS"
	
	
.text

main:

#A
	li $v0, 4
	la $a0, msgnum1
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t0, $v0, 0


#B

	li $v0, 4
	la $a0, msgnum2
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t1, $v0, 0
	
#C
	li $v0, 4
	la $a0, msgnum3
	syscall
	
	#guardar info
	
	li $v0, 5
	syscall
	add $t2, $v0, 0
	
#CALCULANDO O INFERNO DO DELTA
	
	# B ao quadrado
	
	mul $t3, $t1, $t1
	
	# 4 * A * C 
	
	mul $t4, $t0, $t2
	mul $t4, $t4, 4
	
	# B**2 - 4*A*C
	
	sub $t5, $t3, $t4
	
	# $T5 = DELTA
	
	blt $t5, 0, zero #delta < 0
	beq $t5, 0, uma #delta == 0
	bgt $t5, 0, duas #delta > 0
	
	

duas:
	li $v0, 4
	la $a0, msduas
	syscall
	j fim
uma:
	li $v0, 4
	la $a0, msuma
	syscall
	j fim
zero: 
	li $v0, 4
	la $a0, mszero
	syscall
fim:
	
		
	


