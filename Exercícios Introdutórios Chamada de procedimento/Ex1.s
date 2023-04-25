# Inicialização
    .data
valor1: .word 0
valor2: .word 0
retorno: .word 0
    .text
    .globl main

# Função principal
main:
    # Aloca espaço na pilha para salvar $ra e $s
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $s0, 0($sp)
    
    # Lê entrada do usuário para valor1
    li $v0, 5
    syscall
    sw $v0, valor1
    
    # Lê entrada do usuário para valor2
    li $v0, 5
    syscall
    sw $v0, valor2
    
    # Chama a função soma e armazena o retorno em 'retorno'
    lw $a0, valor1
    lw $a1, valor2
    jal soma
    sw $v0, retorno
    
    # Imprime o valor de retorno
    lw $a0, retorno
    li $v0, 1
    syscall
    
    # Restaura $ra e $s
    lw $ra, 4($sp)
    lw $s0, 0($sp)
    addi $sp, $sp, 8
    
    # Encerra o programa
    li $v0, 10
    syscall

# Definição da função soma
soma:
    # Aloca espaço na pilha para salvar $s
    addi $sp, $sp, -4
    sw $s0, 0($sp)
    
    # Soma os argumentos e armazena o resultado em $v0
    add $v0, $a0, $a1
    
    # Restaura $s
    lw $s0, 0($sp)
    addi $sp, $sp, 4
    
    # Retorna para a função chamadora
    jr $ra

