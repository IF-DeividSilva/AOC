# Faça um programa, em assembly do mips, que receba um valor inteiro do teclado, se esse valor
# for igual a 10 imprima-o na tela e saia do programa. Senão imprima 0 e saia do programa.
.data

prompt: .asciiz "Digite um num int: "

.text

main:
    # exibir mensagem para o usuario
    # salva 4 em v0(4 é o codigo do comando para printar string)
    li $v0,4
    la $a0, prompt
    syscall

    # salva 5 em v0(5 é o codigo do comando "scanf")
    li $v0, 5
    syscall

    # comparacao
    beq $v0, 10, printa # se for igual printa
    j sair  # se for diferente sai

printa: 
    # imprime valor
    li $t0, 10
    li $v0, 1
    add $a0, $zero, $t0
    syscall

sair:
    # imprime valor (Só pra teste)
    li $t0, -1
    li $v0, 1
    add $a0, $zero, $t0
    syscall

    #finaliza o programa
    li $v0, 10
    syscall