.data
    #a: .word 3           # aloca 4 bytes (1 word) para "a" e inicializa com o valor 3
    #b: .word 4           # aloca 4 bytes (1 word) para "b" e inicializa com o valor 4
    m: .word 10          # aloca 4 bytes (1 word) para "m" e inicializa com o valor 10

.text

main:
    li $t0, 10                   # carrega o valor de a para $t0
    sw $t0, m                   # salva o valor de $t0 em m
    li $t1, 1                   # carrega o valor de b para $t1
    lw $t2, m                   # carrega o valor de m para $t2
    slt $t3, $t1, $t2           # verifica se $t1 é menor que $t2 e armazena o resultado em $t3
    bne $t3, $zero, menor       # se $t1 for menor que $t2, salte para less_than
    j imprime                   # caso contrário, vá para print_result

menor:
    sw $t1, m                    # salva o valor de $t1 em "m"

imprime:    
    # printf("%i", m);
    li $v0, 1
    add $a0, $zero, $t2
    syscall

    li $v0, 10
    syscall