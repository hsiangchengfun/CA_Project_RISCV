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
li ra,1
slli a4,ra,0x0
li t2,1
bne a4,t2,<fail>
li gp,3
li ra,1
slli a4,ra,0x1
li t2,2
bne a4,t2,<fail>
li gp,4
li ra,1
slli a4,ra,0x7
li t2,128
bne a4,t2,<fail>
li gp,5
li ra,1
slli a4,ra,0xe
lui t2,0x4
bne a4,t2,<fail>
li gp,6
li ra,1
slli a4,ra,0x1f
lui t2,0x80000
bne a4,t2,<fail>
li gp,7
li ra,-1
slli a4,ra,0x0
li t2,-1
bne a4,t2,<fail>
li gp,8
li ra,-1
slli a4,ra,0x1
li t2,-2
bne a4,t2,<fail>
li gp,9
li ra,-1
slli a4,ra,0x7
li t2,-128
bne a4,t2,<fail>
li gp,10
li ra,-1
slli a4,ra,0xe
lui t2,0xffffc
bne a4,t2,<fail>
li gp,11
li ra,-1
slli a4,ra,0x1f
lui t2,0x80000
bne a4,t2,<fail>
li gp,12
lui ra,0x21212
addi ra,ra,289
slli a4,ra,0x0
lui t2,0x21212
addi t2,t2,289
bne a4,t2,<fail>
li gp,13
lui ra,0x21212
addi ra,ra,289
slli a4,ra,0x1
lui t2,0x42424
addi t2,t2,578
bne a4,t2,<fail>
li gp,14
lui ra,0x21212
addi ra,ra,289
slli a4,ra,0x7
lui t2,0x90909
addi t2,t2,128
bne a4,t2,<fail>
li gp,15
lui ra,0x21212
addi ra,ra,289
slli a4,ra,0xe
lui t2,0x48484
bne a4,t2,<fail>
li gp,16
lui ra,0x21212
addi ra,ra,289
slli a4,ra,0x1f
lui t2,0x80000
bne a4,t2,<fail>
li gp,17
li ra,1
slli ra,ra,0x7
li t2,128
bne ra,t2,<fail>
li gp,18
li tp,0
li ra,1
slli a4,ra,0x7
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_18+0x8>
li t2,128
bne t1,t2,<fail>
li gp,19
li tp,0
li ra,1
slli a4,ra,0xe
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_19+0x8>
lui t2,0x4
bne t1,t2,<fail>
li gp,20
li tp,0
li ra,1
slli a4,ra,0x1f
nop 
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_20+0x8>
lui t2,0x80000
bne t1,t2,<fail>
li gp,21
li tp,0
li ra,1
slli a4,ra,0x7
addi tp,tp,1
li t0,2
bne tp,t0,<test_21+0x8>
li t2,128
bne a4,t2,<fail>
li gp,22
li tp,0
li ra,1
nop 
slli a4,ra,0xe
addi tp,tp,1
li t0,2
bne tp,t0,<test_22+0x8>
lui t2,0x4
bne a4,t2,<fail>
li gp,23
li tp,0
li ra,1
nop 
nop 
slli a4,ra,0x1f
addi tp,tp,1
li t0,2
bne tp,t0,<test_23+0x8>
lui t2,0x80000
bne a4,t2,<fail>
li gp,24
slli ra,zero,0x1f
li t2,0
bne ra,t2,<fail>
li gp,25
li ra,33
slli zero,ra,0x14
li t2,0
bne zero,t2,<fail>
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
