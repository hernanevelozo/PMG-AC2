# Programa 17 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.text
.globl main

main:
	lui  $t0, 0x1001
	lw   $s0, 0($t0)			# $s0 = x
	lw   $s1, 4($t0)			# $s1 = y
	lw   $s2, 8($t0)			# $s2 = z
	addi $t1, $zero, 0			# counter
	
loop:
	add  $s2, $s2, $s0	 		# $s0 = $s0 + $s0
	addi $t1, $t1, 1	 		# $t1 = $t1 + 1
	bne  $t1, $s1, loop	 	
	
	sw   $s2, 8($t0)			# guarda na memória
	
.data
	x: .word 3
	y: .word 4
	k: .word 0