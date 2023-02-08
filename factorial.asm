# Factorial.asm program
# CS 64, Z.Matni, zmatni@ucsb.edu
#

# Assembly (NON-RECURSIVE) version of:
#   int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++) {
#       fn = fn * x;
#   }
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";
#
.data

	name1: .asciiz "Enter a number:\n"
	name2: .asciiz "Factorial of "
	name3: .asciiz " is:\n"

#Text Area (i.e. instructions)
.text
main:

	li $v0, 4
	la $a0, name1
	syscall

	li $v0, 5
	syscall
	move $t0, $v0
	move $t3, $v0

	li $t1, 2
	li $t2, 1

loop:
	bgt $t1, $t3, loop_exit

	mul $t2, $t2, $t1
	addi $t1, $t1, 1

	j loop

loop_exit:
	li $v0, 4
	la $a0, name2
	syscall

	li $v0, 1
	move $a0, $t0
	syscall

	li $v0, 4
	la $a0, name3
	syscall

	li $v0, 1
	move $a0, $t2
	syscall

	li $v0, 10
	syscall


exit:
	li $v0, 10
	syscall
