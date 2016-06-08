.text
main:

#claim
la $a0, claim
li $v0, 4
syscall

#FIRST INPUT
la $a0, input1
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0 #MUST MOVE TO $T. after syscall!

#SECOND INPUT
la $a0, input2
li $v0, 4
syscall
	
li $v0, 5
syscall
move $t1, $v0 #MUST MOVE TO $T. after syscall!

#add result
la $a0, sum
li $v0, 4
syscall

#add
add $t2, $t0, $t1 #T2=T0+T1
move $a0, $t2 #MUST BE $A TO PRINT OUT
#or just (add $a0, $t0, $t1)
li $v0, 1 #PRINT INTEGER
syscall

#diff result
la $a0, diff
li $v0, 4
syscall
	
#diff
sub $t3, $t0, $t1 #t3=t0-t1
move $a0, $t3 #$a (address) can used the one as previous
li $v0, 1
syscall

#product result
la $a0, product
li $v0, 4
syscall

#product
mul $t4, $t0, $t1
move $a0, $t4
li $v0, 1
syscall

#ratio result
la $a0, ratio
li $v0, 4
syscall

#ratio
div $t5, $t0, $t1
move $a0, $t5
li $v0, 1
syscall
	
	
#exit
li $v0, 10
syscall
	
.data
claim:	.asciiz "MIPS program written by Emily Chen"
input1: .asciiz "\n\nEnter first integer:"
input2:	.asciiz "\nEnter second integer:"
sum: .asciiz "\n\nThe sum is:"
diff: .asciiz "\nThe difference is:"
product: .asciiz "\nThe product is:"
ratio:	.asciiz "\nThe ratio is:"
