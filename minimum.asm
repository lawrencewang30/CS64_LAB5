# minimum.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

.data

	# TODO: Complete these declarations / initializations

	name1: .asciiz "Enter the next number:\n"
	name2: .asciiz "Minimum: "
    name3: .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:
	# print/input 3 numbers
	li $v0, 4
	la $a0, name1
	syscall

	li $v0, 5
	syscall
	move $t0, $v0

	li $v0, 4
	la $a0, name1
	syscall

	li $v0, 5
	syscall
	move $t1, $v0

	li $v0, 4
	la $a0, name1
	syscall

	li $v0, 5
	syscall
	move $t2, $v0
	
	# compare $t0 and $t1
	blt $t0, $t1, A0
	blt $t1, $t0, A1


A0: # compare $t0 and $t2
	blt $t0, $t2, A2
	blt $t2, $t0, A1

A1: # compare $t1 and $t2
	blt $t1, $t2, A3
	blt $t2, $t1, A4

A2: # $t0 is smallest
	li $v0, 4
	la $a0, name2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, name3
	syscall

	li $v0, 10
	syscall

A3: # $t1 is smallest
	li $v0, 4
	la $a0, name2
	syscall

	li $v0, 1
	move $a0, $t1
	syscall

	li $v0, 4
	la $a0, name3
	syscall

	li $v0, 10
	syscall

A4: # $t2 is smallest
	li $v0, 4
	la $a0, name2
	syscall

	li $v0, 1
	move $a0, $t2
	syscall

	li $v0, 4
	la $a0, name3
	syscall

	li $v0, 10
	syscall


exit:
	li $v0, 10
	syscall
