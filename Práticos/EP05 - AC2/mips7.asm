# Programa 7 - By Hernane V | Data 18/11/2022
# Arquitetura de Computadores II - Romanelli

# ori $8, $0, 0x01

.text
.globl main
main:
ori $8, $0, 0x01 	# t0 = 1
sll $8, $8, 31 		# t0 = 0x80000000
sra $8, $8, 31 		# t0 = 0xffffffff

.data

#fim