# Programa 5 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# x = 3 
# y = 4 
# z = (15*x + 67*y) * 4

.text
.globl main
main:


# = x 
# = y
# = z

addi $t0, $zero, 32767 	# t0 = 32767
sll  $t0, $t0, 2 	# t0 = t0 * 2 ˆ 2
addi $t1, $zero, 31068  # t1 = 31068
sub  $s0, $t0, $t1 	# s0 = t0 - t1
sll  $s1, $s0, 1 	# s1 = s0 * 2 ˆ 1
add  $s2, $s0, $s1 	# s2 = s0 + s1
.data

#fim
