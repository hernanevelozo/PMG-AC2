# Programa 11 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli

	# y = x-z+300000

.text
.globl main

main:
	addi $t0, $zero, 0x1001		# $t0 = 0x1001
	sll  $t0, $t0, 16			# $t0 = 0x10010000

	lw 	 $s0, ($t0)				# x = 100000
	lw   $s1, 4($t0)			# z = 200000

	add  $t1, $s0, $s1			# $t1 = s0 + s1

	sub  $t2, $s0, $s1			# $t2 = x - z
	add  $s2, $t2, $t1			# y = x - z + 300000

	sw   $s2, 8($t0)			# Mem[10010000 + 8] = $t2

.data
	x: .word 100000
	z: .word 200000
	y: .word 0 					# valor a ser sobrescrito 

