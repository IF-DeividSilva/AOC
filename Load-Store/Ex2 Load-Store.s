# Salve na memória o valor 100, na posição 20 usando como base o registrador $sp. Depois salve 200 na posição 40.  
.data

.text

main:
    li $t0 , 100       #salva o valor 100 em t0
    sw $t0 , 80($sp)   #arnazena o valor 100 na posicao 20 (40bytes do sp)  

    li $t1 , 200       #salva o valor de 200 em t1 
    sw $t1 , 160($sp)  #arnazena o valor 5 na posicao 40 (40bytes do sp)  

    li $v0, 10
    syscall 