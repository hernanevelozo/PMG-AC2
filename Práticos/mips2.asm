# Programa 2 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# x = 1 
# y = 5 * x + 15

.text
.globl main
main:

addi $s0, $zero, 1 	# x = 1

add  $t0, $s0, $s0	# t0 = 2 * x
add  $t1, $t0, $t0	# t1 = 4 * x
add  $t0, $t1, $s0	# t0 = 5 * x

addi $s1, $t0, 15	# s1 = y = 5*x+15

.data

#fim
