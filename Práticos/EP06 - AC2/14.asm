# Programa 14 - By Hernane V | Data: 04/12/2022
# Arquitetura de Computadores II - Romanelli
.data
	valor: .word 2

.text
	ori  $t0, $zero, 0x1001		# t0 ? 0x1001
	sll  $t0, $t0,   16			# t0 ? 0x10010000
	lw   $s0, 0($t0)			# carrega 1º valor da memória
	
	andi $t1, $s0, 1			# num == 1, é ímpar 
	beqz $t1, par				# num == 0, é par
	sw 	 $t1, 4($t0)			# salva na memória se ímpar
	j fim						# encerra o programa

par:
	sw $t1, 4($t0)				# salva na memoria

fim:
	j finalizar					# fim do programa
	