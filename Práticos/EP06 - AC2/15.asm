# Programa 15 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.text
.globl main

	# $s0 = V[0]
	# $s1 = i
	# $s2 = valor fixo de 4

main:
	ori  $s0, $zero, 0x1001 	# $s0 = 0x1001
	sll  $s0, $s0, 16 			# $s0 = $s0 << 16

	add  $s1, $zero, $zero 		# $s1 = 0
	ori  $s2, $zero, 4 			# $s2 = 4

while:
	sll  $t1, $s1, 1 			# $t1 = s1 * 2
	addi $t1, $t1, 1 			# $t1 = t1 + 1

	mult $s2, $s1 				# multiplica 4 vezes a posição no vetor
	mflo $t2
	add  $t2, $t2, $s0 			# $t2 = 4 * $s1 + s0, o endereco do elemento na memoria
	sw   $t1, 0($t2) 			# armazena $t1 na memoria

	addi $s1, $s1, 1 			# incrementa o contador mais 1
	slti $t3, $s1, 100 			# compara a posicao do vetor com a ultima posição
	beq  $t3, $zero, fim 		# se a posicao de s1 chegar a 100, encerra
	j while
	
fim:

.data