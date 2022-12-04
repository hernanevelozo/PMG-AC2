# Programa 16 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.text
.globl main

main:
	lui	 $t0, 	   0x1001	
	addi $t0, $t0, 0x0000	 
	lw   $s0, 0($t0)			# $s0 = x
	lw   $s1, 4($t0)			# $s1 = y
	lw   $s2, 8($t0)			# $s2 = z
	
	div  $s0, $s2				# x/z	
	mflo $t1					# $t1 = x/z
	mult $t1, $s1				# $t1*y
	mflo $t1					# $t1=t1*y

.data
	x: .word 0x186A00			# 1600000
	y: .word 0x13880			# 80000
	z: .word 0x61A80			# 400000