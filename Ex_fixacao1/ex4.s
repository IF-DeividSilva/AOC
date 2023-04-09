.data
    a: .word 5  #declarando a variavel a =2
    i: .word 51 #declarando a variavel b =10 
    x: .word 0  #declarando a variavel x =0

.text

main:
    lw $t0, a #salva a em t0
    lw $t1, i #salva b em t1
    lw $t2, x #salva x em t2

if:
    slt $t4, $zero, $t0              # verifica se $t1 é menor que $t2 e armazena o resultado em $t3
    bne $t4, $zero, imprime          # se $t1 for menor que $t2, salte para menor
    slti $t5, $t1 , 51
    beq $t5, $zero, imprime 

    li $t2, 1
    sw $t2, x

imprime:
    # printf("%i", x);
    li $v0, 1
    add $a0, $zero, $t2
    syscall

    li $v0, 10
    syscall    