.data
    msgnum1: .asciiz "\n Valor da compra: "
    msgf: .asciiz "\n O número de parcelas é: "
    msgparc: .asciiz "\n Valor da parcela é: "
    msgsaud: .asciiz "\n Bem-vindo! Digite um valor de compra efetuada \n Trabalhamos com vendas de R$1000.00 a R$9999.99, não insista! "

.text

    # verificar troca p float e diferença entre addi e add
    
    li $v0, 4
    la $a0, msgsaud
    syscall

num1:

    li $v0, 4
    la $a0, msgnum1
    syscall

    # guardar info
    
    li $v0, 5
    syscall
    add $t1, $v0, 0

    blt $t1, 1000, num1
    bgt $t1, 9999, num1

    li $t0, 500  # Valor da parcela

    #contador
    li $t2, 0

mais:

    # Adiciona 1 ao contador de parcelas
    add $t2, $t2, 1

    # Subtrai o valor da parcela do valor da compra
    sub $t1, $t1, $t0

    # Exibe o valor da parcela
    li $v0, 4
    la $a0, msgparc
    syscall
    
    add $a0, $t0, 0
    li $v0, 1
    syscall

    #ver se ainda consigo uma parcela completa
    bge $t1, $t0, mais
    
    #para n tipo 1500
    beq $t1, 0, fim
    

menos:
    #se é maior que zero e menor que uma completa, mais um
    add $t2, $t2, 1

    # ultima parcela
    li $v0, 4
    la $a0, msgparc
    syscall
    
    add $a0, $t1, $0
    
    li $v0, 1
    syscall

    j fim
    

fim:
    #resultado fofo
    li $v0, 4
    la $a0, msgf
    syscall
   
    add $a0, $t2, 0  
    li $v0, 1
    syscall
    