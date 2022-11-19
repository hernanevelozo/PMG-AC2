# Programa 1 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# a = 2 
# b = 2
# c = 4
# d = 5
# x = (a+b) - (c + d)
# y = a - b + x
# b = x - y

.text
.globl main
main:

addi $s0, $zero, 2	# a = 2
addi $s1, $zero, 2	# b = 2
addi $s2, $zero, 4	# c = 4
addi $s3, $zero, 5	# d = 5

add $t0, $s0, $s1 	# t0 = a+b
add $t1, $s2, $s3 	# t1 = c+d
sub $s4, $t0, $t1	# s4:  x = (a+b) - (c+d)

sub $t0, $s0, $s1	# t0: y = a - b
add $s5, $t0, $s4	# s5: y = (a-b) + x 

sub $s1, $s4, $s5	# s1: b = x - y
.data

#fim
