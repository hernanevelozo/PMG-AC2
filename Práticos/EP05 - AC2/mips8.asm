# Programa 8 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

.text
.globl main
main:

addi, $8, $zero, 0x12345678

srl $9, $8, 24 		# $9 = 0x12

sll $10, $8, 8 		# $10 = 0x34567800
srl $10, $10, 24 	# $10 = 0x34

sll $11, $8, 16 	# $11 = 0x56780000
srl $11, $11, 24 	# $11 = 0x56

sll $12, $8, 24 	# $12 = 0x78000000
srl $12, $12, 24 	# $12 = 0x78
.data

#fim
