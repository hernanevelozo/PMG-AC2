# Programa 4 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# x = 3 
# y = 4 
# z = (15*x + 67*y) * 4

.text
.globl main
main:

addi $s0, $zero, 3	# x = 3
addi $s1, $zero, 4	# x = 4

sll $t0 , $s0, 4	# t0 = x  * 2 � 4 = 16 * x
sub $t0, $t0 , $s0	# t0 = 16 * x - x = 15 * x

sll $t1 , $s1, 6 	# t1 = y  * 2 � 6 = 64 * y
sll $t2, $s1, 2 	# t2 = y  * 2 � 2 = 4  * y
add $t1, $t1, $t2 	# t2 = 64 * y + 4 * y  = 68 * y
sub $t1, $t1, $s1 	# t1 = 68 * y - y = 67 * y

add $t2, $t0, $t1 	# t2 = 15x + 67y
add $t2, $t2, $t2	# t2 = (15x + 67y) *2
add $s2, $t2, $t2 	# z  = (15x + 67y) *4

.data

#fim
