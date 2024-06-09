lui x02, 0x00000002
addi x02, x02, 0x00000710
lui x01, 0x00000000
addi x01, x01, 0x00000022
sw x1, 0(sp)
lui x03, 0x00000000
addi x03, x03, 0x000003e8
lui x01, 0x00000000
addi x01, x01, 0x00000004
lui x06, 0x00000000
addi x06, x06, 0x00000003
lw x1, 0(sp)
mul x4, x1, x3
mul x7, x1, x6
sw x4, 4(sp)
lb x5, 4(sp)
nop zero, zero, 0
nop zero, zero, 0
nop zero, zero, 0
nop zero, zero, 0
nop zero, zero, 0
hcf
nop
nop
nop
nop
nop
hcf
