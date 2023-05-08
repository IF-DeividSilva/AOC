.data

.text

main:
    li $a0, 5
    li $v0, 1   #fatorial
    li $t0, 1

    jal fatorial

    move $t1, $v0
    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 10
    syscall

fatorial:
    addi $sp, $sp, -12
    sw $a0, 12($sp)
    sw $s0, 8($sp)
    sw $ra0, 4($sp)

    beq $a,, $t0, sair
    slti $s0, $a0, 1

    bne $s0, $zero, sair

    addi $a0, $a0, -1
    jal fatorial 

sair:
    lw $a0, 12($sp)
    lw $s0, 8($sp)
    lw $ra, 4($sp)
    
    addi $sp, $sp, 12
    
    mul $v0, $v0, $a0
    jr $ra

