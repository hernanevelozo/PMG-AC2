# Programa 09 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.text
.globl main

main:
	addi $t0, $zero, 0x1001		# $t0 = 0x1001
	sll  $t0, $t0, 16			# $t0 = 0x10010000
	
	lw	 $s0, ($t0)				# $s0 = Mem[10010000]
	lw 	 $s1, 4($t0)			# $s1 = Mem[10010000 +  4]
	lw 	 $s2, 8($t0)			# $s2 = Mem[10010000 +  8]
	lw 	 $s3, 12($t0)			# $s3 = Mem[10010000 + 12]
	lw   $s4, 16($t0)			# $s4 = Mem[10010000 + 16]

	add  $t1, $s0, $s1			# $t1 = $s0 + $s1
	add  $t1, $t1, $s2			# $t1 = $t1 + $s2
	add  $s4, $t1, $s3			# $t1 = $t1 + $s3

	sw   $s4, 16($t0)			# Mem[10010000 + 16] = $s4

.data 
	x1: 	.word 15 
	x2: 	.word 25 
	x3: 	.word 13 
	x4: 	.word 17 
	soma: 	.word -1 


