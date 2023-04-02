        addi $v0,$zero, 1  #coloca o valor 1 no registrador v0 (instrução de printar inteiro) 
        add  $a0, $zero, $t0 #adiciona o valor do registrador t0 no registrador a0 (a0 é o que será printado)
        syscall   #(chamada de sistema para o print de um inteiro armazenado no registrador a0)