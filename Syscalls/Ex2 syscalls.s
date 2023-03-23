#Receba um inteiro do teclado, recebe outro inteiro. subtraia o primeiro pelo segundo. 
#Mostre o resultado na tela. Saia do programa.

.data
prompt: .asciiz "Digite um num int: "
.text

main:
    # exibir mensagem para o usuario
    # salva 4 em v0(4 é o codigo do comando para printar string)
    li $v0,4
    la $a0, prompt
    syscall

    # scanf 1
    li $v0, 5 
    syscall
    
    # adiciona o valor de v0 em t0
    add $t0, $v0, $zero

    # exibir mensagem para o usuario
    # salva 4 em v0(4 é o codigo do comando para printar string)
    li $v0,4
    la $a0, prompt
    syscall

    # scanf 2
    li $v0, 5
    syscall
    # adiciona o valor de v0 em t1
    add $t1, $v0, $zero
    # subtrai t0 e t1
    sub $t2, $t0, $t1

    #print
    li $v0, 1
    add $a0, $zero, $t2
    syscall

    #finaliza
    li $v0, 10
    syscall 





