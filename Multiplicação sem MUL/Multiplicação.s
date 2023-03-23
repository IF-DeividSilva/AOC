# Faça um programa, em assembly do MIPS, que receba e multiplique dois inteiros POSITIVOS, 
# sem usar a instrução de multiplicação do MIPS. Imprima o resultado na tela.
.data
    prompt: .asciiz "Digite um numero inteiro: "
.text

main:
    #exibe a mensagem 
    li $v0, 4
    la $a0, prompt
    syscall

    # scanf 1
    li $v0, 5
    syscall

    add $t0, $v0, $zero

    #exibe a mensagem 
    li $v0, 4
    la $a0, prompt
    syscall

    # scanf 2
    li $v0, 5
    syscall

    add $t1, $v0, $zero

    # 2x2 = 2+2 = 4
    # 3x2 = 3+3 = 6
    # 4x5 = 4+4+4+4+4 = 20

loop:
    #comparacao
    beq $t1, $zero, sair
    add $t3, $t0 , $t3
    addi $t1 , $t1, -1
    j loop

sair:
    #print
    li $v0, 1
    add $a0, $zero, $t3
    syscall
    
    #finaliza o programa
    li $v0, 10
    syscall
    





