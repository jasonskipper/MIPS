# Michael Skipper, N01162792
# CDA 3100 Computer Organization and Architecture 
# Dr. Ghosh 
# References: 
# for finding the length of a character array, https://stackoverflow.com/questions/10021039/char-array-in-mips 
# for offsetting a memory location by a value that is stored in another register, https://stackoverflow.com/questions/15049024/offset-by-value-in-a-register-in-mips/15073383 
# for looping through the character array backward, I referenced the programs Dr. Ghosh posted and my Homework #2 for this class 
# for using the correct system calls, https://cpulator.01xz.net/doc/  
# for the algorithm to reverse a string, https://www.geeksforgeeks.org/reverse-a-string-in-java/ 
# sorry, i did not actually use a stack to reverse the string, but the semantics are the same
# in MIPS, string data can be accessed as a character array, so effectively 
.global _start

.text
_start:
      # get input, store input in a temporary variable 
	  la $t0, string
	  # find the length of the input 
	  loopforlength:
      	lb $t1, 0($t0)
      	beq $t1, $zero, finishfindinglength
    	addi $t0, $t0, 1
      	j loopforlength
	  
	  finishfindinglength: 
      	la $t1, string
      	sub $t3, $t0, $t1 # $t3 now contains the length of the string 
	  # iterate through the string indices from length - 1 to 0 and print each character as you do so
	  li $t2, 0
	  la $t0, string
	  addu $t0, $t0, $t3
	  addi $t3, $t3, 1
	  #addu $t2, $t2, $t0
	  printbackward:
	  	beq $t2, $t3, exit
		li $v0, 11
		lb $a0, 0($t0)
		syscall 
		addi $t0, $t0, -1
		addi $t2, $t2, 1
		j printbackward
		#addu $t2, $t2, 
		#lb $t, 
	  
	  exit: 
      	li $v0, 10 # loading the immediate code 
	  	syscall # really getting out  

.data
    string: .asciiz "Computing is Awesome!" # I will change this value during grading
