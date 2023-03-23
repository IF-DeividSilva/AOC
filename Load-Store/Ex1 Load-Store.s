#Faça um programa, em assembly do MIPS, para colocar o valor 5 na posição 10 da memória (a partir de $sp). 
#Agora coloque o valor 20 na posição 40 da memória (a partir de $sp).  Some os conteúdos que estão 
#na memória (5+20), e coloque o resultado na posição 100 da memória.

.data

.text

main:
    li $t1, 5 #salva o valor de 5 em t1
    sw $t1, 40($sp) #arnazena o valor 5 na posicao 10 (40bytes do sp) 

    li $t2, 20 #salva o valor 20 em t1
    sw $t2, 160($sp) #armazena o valor de 20 na posicao 40 (160 bytes do sp)

    lw $t3, 40($sp)  #carrega o valor da posicao 10
    lw $t4, 160($sp) #carrega o valor da posicao 40
    add $t5, $t3, $t4 #salva o valor da soma em t5
    sw $t5, 400($sp) #armazena a soma na possicao 100 (400 bytes de sp)
    # print
    li $v0, 1
    add $a0, $zero, $t5
    syscall

    #encerra o programa
    li $v0, 10
    syscall