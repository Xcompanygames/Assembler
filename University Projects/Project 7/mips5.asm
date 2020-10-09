Mult:
Addi $sp, $sp, -12 #allocate memory for 3 registers
Sw $a1, 8($sp) #store a1 (b) in stack
Sw $a0, 4($sp) #store a0 (a) in stack
Sw $ra, 0($sp) #store "who to return to" in stack
Addi $t0, $0, 2 #t0=2
Slt $t0, $a1, $t0 #if a1<2, then t0=1. Else-t0=0
Beq $t0, $0, Else #a0<2
Add $v0, $a0, $0 #return a


Addi $sp, $sp, 12 #deallocate memory
Jr $ra #return to caller function
Else:
Addi $a1, $a1, -1# b--
Jal Mult #recursive
Lw $ra, 0($sp) #restore ra
Lw $a0, 4($sp) #restore a
Lw $a1, 8($sp) #restore b
Addi $sp, $sp, 12 #deallocate memory
Mul $v0, $v0, $a0 #return a* func_result
Jr $ra