j <reset_vector>
li ra,0
li sp,0
li gp,0
li tp,0
li t0,0
li t1,0
li t2,0
li s0,0
li s1,0
li a0,0
li a1,0
li a2,0
li a3,0
li a4,0
li a5,0
li a6,0
li a7,0
li s2,0
li s3,0
li s4,0
li s5,0
li s6,0
li s7,0
li s8,0
li s9,0
li s10,0
li s11,0
li t3,0
li t4,0
li t5,0
li t6,0
li gp,0
li a0,1
slli a0,a0,0x1f
bltz a0,<test_2>
nop 
li gp,1
li a7,93
li a0,0
li gp,2
lui a5,0xff0
addi a5,a5,255
auipc ra,0x8
addi ra,ra,-172
lw a4,0(ra)
lui t2,0xff0
addi t2,t2,255
bne a4,t2,<fail>
li gp,3
lui a5,0xff010
addi a5,a5,-256
auipc ra,0x8
addi ra,ra,-208
lw a4,4(ra)
lui t2,0xff010
addi t2,t2,-256
bne a4,t2,<fail>
li gp,4
lui a5,0xff01
addi a5,a5,-16
auipc ra,0x8
addi ra,ra,-244
lw a4,8(ra)
lui t2,0xff01
addi t2,t2,-16
bne a4,t2,<fail>
li gp,5
lui a5,0xf00ff
addi a5,a5,15
auipc ra,0x8
addi ra,ra,-280
lw a4,12(ra)
lui t2,0xf00ff
addi t2,t2,15
bne a4,t2,<fail>
li gp,6
lui a5,0xff0
addi a5,a5,255
auipc ra,0x8
addi ra,ra,-304
lw a4,-12(ra)
lui t2,0xff0
addi t2,t2,255
bne a4,t2,<fail>
li gp,7
lui a5,0xff010
addi a5,a5,-256
auipc ra,0x8
addi ra,ra,-340
lw a4,-8(ra)
lui t2,0xff010
addi t2,t2,-256
bne a4,t2,<fail>
li gp,8
lui a5,0xff01
addi a5,a5,-16
auipc ra,0x8
addi ra,ra,-376
lw a4,-4(ra)
lui t2,0xff01
addi t2,t2,-16
bne a4,t2,<fail>
li gp,9
lui a5,0xf00ff
addi a5,a5,15
auipc ra,0x8
addi ra,ra,-412
lw a4,0(ra)
lui t2,0xf00ff
addi t2,t2,15
bne a4,t2,<fail>
li gp,10
auipc ra,0x8
addi ra,ra,-452
addi ra,ra,-32
lw t0,32(ra)
lui t2,0xff0
addi t2,t2,255
bne t0,t2,<fail>
li gp,11
auipc ra,0x8
addi ra,ra,-484
addi ra,ra,-3
lw t0,7(ra)
lui t2,0xff010
addi t2,t2,-256
bne t0,t2,<fail>
li gp,12
li tp,0
auipc ra,0x8
addi ra,ra,-516
lw a4,4(ra)
mv t1,a4
lui t2,0xff01
addi t2,t2,-16
bne t1,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_12+0x8>
li gp,13
li tp,0
auipc ra,0x8
addi ra,ra,-560
lw a4,4(ra)
nop 
mv t1,a4
lui t2,0xf00ff
addi t2,t2,15
bne t1,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_13+0x8>
li gp,14
li tp,0
auipc ra,0x8
addi ra,ra,-620
lw a4,4(ra)
nop 
nop 
mv t1,a4
lui t2,0xff010
addi t2,t2,-256
bne t1,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_14+0x8>
li gp,15
li tp,0
auipc ra,0x8
addi ra,ra,-672
lw a4,4(ra)
lui t2,0xff01
addi t2,t2,-16
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_15+0x8>
li gp,16
li tp,0
auipc ra,0x8
addi ra,ra,-712
nop 
lw a4,4(ra)
lui t2,0xf00ff
addi t2,t2,15
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_16+0x8>
li gp,17
li tp,0
auipc ra,0x8
addi ra,ra,-768
nop 
nop 
lw a4,4(ra)
lui t2,0xff010
addi t2,t2,-256
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_17+0x8>
li gp,18
auipc t0,0x8
addi t0,t0,-816
lw sp,0(t0)
li sp,2
li t2,2
bne sp,t2,<fail>
li gp,19
auipc t0,0x8
addi t0,t0,-844
lw sp,0(t0)
nop 
li sp,2
li t2,2
bne sp,t2,<fail>
bne zero,gp,<pass>
nop 
beqz gp,<fail+0x4>
mv a0,gp
slli gp,gp,0x1
ori gp,gp,1
li a7,93
j <pass_fail_end>
nop 
li gp,1
li a7,93
li a0,0
nop 
nop 
nop 
nop 
nop 
hcf
