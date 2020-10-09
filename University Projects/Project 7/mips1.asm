.data
x: .word 0x139A171
y: .word 4

.text
main:
   la $s7,x
   lw $s7,0($s7) 
   la $t1,y
   lw $t1,0($t1) 