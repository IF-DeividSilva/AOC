.data
    l: .word 0  #declarando a variavel i =0
    p: .word 10 #declarando a variavel j =10 
    k: .word 0  #declarando a variavel k =0 

.text

main:
    lw $t0, l       #carregando o valor de i na registrador $t0
    lw $t1, p       #carregando o valor de j na registrador $t1

while:
    bge $t0, $t1, printf #se i>=j, pula para endwhile  
    addi $t0, $t0, 1  #incrementa i
    lw $t2, k         #carrega o valor de k na registrador $t2
    addi $t2, $t2, 10 #adiciona 10 a k
    sw $t2, k         #salva o valor de k na memoria
    j while           #volta para while 

printf:
    # printf("%i", i);
    li $v0, 1
    add $a0, $zero, $t0
    syscall
    # printf("%i", k);
    li $v0, 1
    add $a0, $zero, $t2
    syscall

finaliza:
    li $v0, 10
    syscall
