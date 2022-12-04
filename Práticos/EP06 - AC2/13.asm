# Programa 13 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.text
.globl main

		# A -> $s0
	
main:
	lui  $t0, 0x1001 			# $t0 = 0x10010000
	lw   $s0, 0($t0) 			# $s0 = A

	slt  $t1, $s0, $zero 		# se A < 0 ? $t1 = 1 então $t1 = 0
	beq  $t1, $zero, fim 		# se A < 0 ? A=A*(-1)

	addi $t2, $zero, -1 		# $t2 = -1
	mult $s0, $t2 				# lo = A*(-1)
	mflo $s0 					# A = lo

fim:
	sw   $s0, 0($t0) 			# A = $s0

.data
	a: .word -359 				# 0x10010000