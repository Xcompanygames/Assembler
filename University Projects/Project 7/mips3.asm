lui $t0, 0x1001	
addi $s1,$0,0
addi $s2,$0,0

for:
	beq $t0, 0x10010020,exit
	
	lw $t1,($t0)	
	
	mult $t1,$t1	
	
	mfhi $t2
	add $s1,$s1,$t2	
	
	mflo $t3		
	add $s2,$s2,$t3	
		
	addi $t0,$t0,4	
	
	j for
exit:

