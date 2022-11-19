# Programa 3 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# x = 3 
# y = 4 
# z = (15*x + 67*y) * 4

.text
.globl main
main:
addi $s0, $zero, 3 	# x = 3
addi $s1, $zero, 4 	# y = 4

 add $t0, $s0, $s0 	# t0 = 2  * x
 add $t0, $t0, $t0 	# t0 = 4  * x
 add $t0, $t0, $t0 	# t0 = 8  * x
 add $t0, $t0, $t0 	# t0 = 16 * x
 sub $t1, $t0, $s0 	# t1 = 15 * x

 add $t0, $s1, $s1 	# t0 = 2  * y
 add $t2, $t0, $t0 	# t2 = 4  * y
 add $t2, $t2, $t2 	# t2 = 8  * y
 add $t2, $t2, $t2 	# t2 = 16 * y
 add $t2, $t2, $t2 	# t2 = 32 * y
 add $t2, $t2, $t2 	# t2 = 64 * y
 add $t2, $t0, $t2 	# t2 = 66 * y
 add $t2, $t2, $s1 	# t2 = 67 * y

 add $t0, $t1, $t2 	# t0 = t1 + t2

 add $t0, $t0, $t0 	# t0 = 2 * t0
 add $s2, $t0, $t0 	# s2 = 4 * t0

.data

#fim
