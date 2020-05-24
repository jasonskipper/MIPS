.global _start # Make _start as a global function
.text 		
	_start:# '_start' represents the starting point
			lw $t0, n # stores n for print loop 
			lw $t3, m # stores m for sum loop 
			li $t1, 0 # stores index i for print loop 
			li $t2, 0 # stores index j for sum loop 
			li $t4, 0 # stores sum so far 
	printloop:beq $t3, $t1, sumloop # loop from 0 to m basically
			 li      $v0, 4       # code 1 == print string
			 la      $a0, myString  # $a0 == address of the string
			 syscall   # a system call 
			 addi $t1, $t1, 1 # increment i
			 j printloop # jump to loopStart
	sumloop:beq $t0, $t2, wooHooDone # loop from 0 to n basically 
			 addi $t2, $t2, 1 # add 1 to index each iteration 
			 add $t4, $t4, $t2 # add the sum to itself each iteration 
			 j printloop # jump to loopStart
	wooHooDone: # getting out   
		li       $v0, 1       # code 1 == print int
		add      $a0, $t4, $zero  # $a0 == address of the int
		syscall   # a system call 
		li $v0, 10 # loading the immediate code 
		syscall # really getting out 
.data
	m: .word 3 # number of times to print Hello UNF 
	n: .word 5 # sum from 1 to this number 
	myString: .asciiz      "Hello UNF\n" # for printing 
