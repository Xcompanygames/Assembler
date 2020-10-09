.data
     arr1: .word  0,1,2,3,4,5,6,7,8,9
     arr2: .word  1,2,4,8,16,32,64,128,256,512
     arr3: .word  1,3,6,10,15,21,28,36,45,55
.text
la $s2,arr1
la $s3,arr2
la $s4,arr3   


li $t0, 10
li $t1, 0 
loop:
beq $t1, $t0, end 
lw $t2,0($s2)     
lw $t3,0($s3)   
lw $t4,0($s4)	

mul $t5,$t2,$t3  
mul $s5,$t5,$t4      
add $s0,$s0,$s5   




addi $s2,$s2,4           
addi $s3,$s3,4
addi $s4,$s4,4
addi $t1, $t1, 1 
j loop 
end:

syscall
