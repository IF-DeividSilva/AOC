.data
str: .asciiz "Ola, string de testen\n"
msg1: .asciiz "Letra encontrada\n"
msg2: .asciiz "Letra nao encontrada\n"
letter: .space 1

.text

main:
    # Pede ao usuário para inserir uma letra
    li $v0, 8
    la $a0, letter
    li $a1, 1
    syscall

    # Percorre a string em busca da letra
    la $s0, str
    la $s1, letter
    li $s2, 0 # contador de ocorrências

    loop:
        lb $t0, ($s0) # carrega o byte atual da string
        beq $t0, $zero, end # se chegar no final da string, termina o loop
        beq $t0, ($s1), found # se a letra foi encontrada, imprime "Letra encontrada"
        addi $s0, $s0, 1 # caso contrário, avança para o próximo byte na string
        j loop # e continua procurando

    found:
        li $v0, 4
        la $a0, msg1
        syscall
        addi $s2, $s2, 1 # incrementa o contador de ocorrências
        j loop

    end:
        # se o contador for zero, a letra não foi encontrada
        beq $s2, $zero, not_found
        li $v0, 1
        add $a0, $s2, $zero # carrega o valor do contador para $a0
        syscall
        j exit

    not_found:
        li $v0, 4
        la $a0, msg2
        syscall

    exit:
        li $v0, 10
        syscall