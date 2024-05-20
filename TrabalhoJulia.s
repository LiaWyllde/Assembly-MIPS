.data

    msg:.asciiz "\n Digite um numero inteiro maior que 0: " 
    msg2: .asciiz "Numero nao binario, entrada contem numeros decimais.\n"
    msg3: .asciiz "O numero binario.\n"
    
.text

main:
	
    li $v0, 4
    la $a0, msg
    syscall
	
    li $v0, 5
    syscall

    add $t0, $v0, 0

    #Menorr que zero, volta
    blez $t0, main
	
    li $v0, 4 

loop:
    
    #Divisor 10
    li $t1, 10

    #Digitos
    li $t2, 0

    li $t3, 1

    li $t4, 2

    li $t5, 0

    li $t6, 1

    #Divide o valor por 10
    div $t0, $t1
    
    #Quociente
    mflo $t0
    
    #Resto
    mfhi $t7

    #Resto igual a 0 ou 1
    beq $t7, $t2, next
    beq $t7, $t3, next
    
    #Se o resto n for igual a 1, n bin
    li $v0, 4 
    la $a0, msg2 
    syscall

    j exit

next:

    #Quociente igual a zero
    beqz $t0, end
    j loop

end:

    li $v0, 4
    la $a0, msg3
    syscall

exit:
    li $v0, 10
    syscall

