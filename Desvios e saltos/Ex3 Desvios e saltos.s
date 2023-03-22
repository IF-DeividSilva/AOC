# Faça um programa, em assembly do mips, que receba dois inteiros do teclado, 
# e imprima o maior. Se os números forem iguais imprima -111.

.data
    prompt: .asciiz "Digite um numero inteiro: "

.text

main:
    #exibe mensagem
    li $v0, 4
    la $a0, prompt
    syscall

    # scanf 1
    li $v0, 5
    syscall

    add $t0, $v0, $zero

    # scanf 2
    li $v0, 5
    syscall

    add $t1, $v0, $zero



    #comparacao
    beq $t0, $t1, iguais

else:
    slt $s1, $t0, $t1
    beq $s1, 1 , if

    # imprime valor
    li $v0, 1
    add $a0, $zero, $t0
    syscall

    j sair


if:
    # imprime valor
    li $v0, 1
    add $a0, $zero, $t1
    syscall
    j sair

iguais:
        # imprime valor
        li $t3, -111
        li $v0, 1
        add $a0, $zero, $t3
        syscall

sair:
    #finaliza o programa
    li $v0, 10
    syscall