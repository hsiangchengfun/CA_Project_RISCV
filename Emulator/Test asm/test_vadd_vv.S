.text
main:
li 	sp, 10000  
li  x1, 34
sw  x1, 0(sp)
li  x3, 1000
li  x1, 4
li  x6, 3
lw  x1, 0(sp)
mul x4, x1, x3
mul x7, x1, x6
sw  x4, 4(sp)
lb  x5, 4(sp)
nop
nop
nop
nop
nop
hcf