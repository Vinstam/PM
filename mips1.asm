.data
	
	
	Myarr: .space 400
	newLine: .asciiz "\n"
	space: .asciiz " " 

.text
#		addi $s0, $zero, 4
		addi $s0, $zero, 4
		addi $s1, $zero, 10
		addi $s2, $zero, 12
		addi $t0, $zero, 0
		sw $s0, Myarr($t0)
		addi $t0, $t0, 4
		sw $s1, Myarr($t0)
		addi $t0, $t0, 4
		sw $s2, Myarr($t0)
		addi $t0, $zero, 0
	
	while:
		beq $t0, 400, exit
		
		lw $t6, Myarr($t0)
		addi $t0, $t0, 4
		li $v0, 1
		move $a0, $t6
		syscall
		
		li $v0, 4
		la $a0, space
		syscall
		j while
	exit:
		li $v0, 10
		syscall	   
	 


