.data 0x10010000
arr: .word 2,32,2,2,22222,2,2,2
.text
li $s0, 0x10010000
addi $t0, $t0, 1

loop:
bgt $t0, 8, exit 
lw $t1, 0($s0)

addi $s0, $s0, 4
addi $t0, $t0, 1
mult $t1, $t1
mfhi $t2
mflo $t3
add $t1, $t2, $t3
beqz $t2 power2
addi $s3, $s3, 1

power2:
mult $t1, $t1 
mfhi $t2
beqz $t2, loop
addi $s3, $s3, 1

j loop

exit:
