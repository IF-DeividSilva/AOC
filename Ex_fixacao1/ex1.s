.data

.text

main:
# a)
# +------+------+------+------+------+------+
# | End. |  0   |  4   |  8   |  12  |  16  |
# +------+------+------+------+------+------+
# | Dado |  100 |  200 |  300 |  400 |  500 |
# +------+------+------+------+------+------+

lw  $t0, 8($zero)   # carrega o valor da célula com o endereço 8 em $t0
li  $t1, 50         # carrega o valor 50 em $t1
add $t0, $t0, $t1   # soma $t0 com $t1 e armazena o resultado em $t0
sw  $t0, 8($zero)   # armazena o valor atualizado de $t0 na célula com o endereço 8

# valor do endereco 8 atualizao para 350
# +------+------+------+------+------+------+
# | End. |  0   |  4   |  8   |  12  |  16  |
# +------+------+------+------+------+------+
# | Dado |  100 |  200 |  350 |  400 |  500 |
# +------+------+------+------+------+------+

# b)
lw  $t0, 4($zero)   # carrega o valor da célula com o endereço 4 em $t0
lw  $t1, 16($zero)  # carrega o valor da célula com o endereço 16 em $t1
sw  $t1, 4($zero)   # armazena o valor de $t1 na célula com o endereço 4
sw  $t0, 16($zero)  # armazena o valor de $t0 na célula com o endereço 16

# +------+------+------+------+------+------+
# | End. |  0   |  4   |  8   |  12  |  16  |
# +------+------+------+------+------+------+
# | Dado |  100 |  200 |  350 |  400 |  200 |
# +------+------+------+------+------+------+

# c)
#printar o valor da celula com o endereco 12
lw  $t0, 12($zero)  # carrega o valor da célula com o endereço 12 em $t0
li  $v0, 1          # carrega o código da syscall para imprimir um inteiro em $v0
move $a0, $t0       # move o valor em $t0 para o registrador de argumento $a0
syscall            # chama a syscall para imprimir o valor em $a0
