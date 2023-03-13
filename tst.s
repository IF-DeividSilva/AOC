.dados




.Texto

principal:
 addi $t 0, $zero, 15
 addi $t 1, $zero, 30
	adicionar $t 3, $t 0, $t 1
	
	#chamada de sistema para imprimir resultado
 li $v 0, 1
	adicionar $a 0, $zero, $t 3
	syscall
	
	#chamada de sistema para sair do programa 
 li $v 0, 10
	syscall
