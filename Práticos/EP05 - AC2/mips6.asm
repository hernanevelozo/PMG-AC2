# Programa 6 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# x = 32767 
# y = 300000 
# z = x – 4y

.text
.globl main
main:

addi $s0, $zero, 32767	# s0 = 32767

sll $t0, $s0, 3 	# t0 = t0 * 2ˆ3
addi $t1, $zero, 5097 	# t1 = 5097

add $t2, $s0, $t1 	# t2 = s0 + t1
add $s1, $t0, $t2 	# s1 = t0 + t2

sll $s1, $s1, 2 	# s1 = s1 * 2ˆ2
sub $s2, $s0, $s1 	# s2 = s0 + s1
.data

#fim