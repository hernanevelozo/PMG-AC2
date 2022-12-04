# Programa 10 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli

	# y = 127x – 65z + 1 
	# x ? $s0
	# y ? $s1 
	# z ? $s2

.text
.globl main

main:
	addi $t0, $zero, 0x1001		# t0 = 0x1001
	sll  $t0, $t0, 16			# t0 = 0x10010000
	lw   $t1, 0($t0)			# t1 = Mem[10010000 + 0]
	lw   $t2, 4($t0)			# t2 = Mem[10010000 + 4]
	
	sll  $t3, $t1, 7			# t3 = 128x
	sub  $t3, $t3, $t1 			# t3 = 127x
	sll  $t4, $t2, 6			# t4 = 64z
	add  $t4, $t4, $t2			# t4 = 65z
	addi $t5, $zero, 1			# t5 = 1
	sub  $t6, $t3, $t4			# t6 = 127x - 65z

	add  $s2, $t6, $t5			# y = 127x - 65z + 1
	sw   $s2, 8($t0)			# Mem[10010000 + 8] = 127x - 65z + 1

.data 
	x: .word 5 
	z: .word 7 
	y: .word 0

