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
li ra,0
slti a4,ra,0
li t2,0
bne a4,t2,<fail>
li gp,3
li ra,1
slti a4,ra,1
li t2,0
bne a4,t2,<fail>
li gp,4
li ra,3
slti a4,ra,7
li t2,1
bne a4,t2,<fail>
li gp,5
li ra,7
slti a4,ra,3
li t2,0
bne a4,t2,<fail>
li gp,6
li ra,0
slti a4,ra,-2048
li t2,0
bne a4,t2,<fail>
li gp,7
lui ra,0x80000
slti a4,ra,0
li t2,1
bne a4,t2,<fail>
li gp,8
lui ra,0x80000
slti a4,ra,-2048
li t2,1
bne a4,t2,<fail>
li gp,9
li ra,0
slti a4,ra,2047
li t2,1
bne a4,t2,<fail>
li gp,10
lui ra,0x80000
addi ra,ra,-1
slti a4,ra,0
li t2,0
bne a4,t2,<fail>
li gp,11
lui ra,0x80000
addi ra,ra,-1
slti a4,ra,2047
li t2,0
bne a4,t2,<fail>
li gp,12
lui ra,0x80000
slti a4,ra,2047
li t2,1
bne a4,t2,<fail>
li gp,13
lui ra,0x80000
addi ra,ra,-1
slti a4,ra,-2048
li t2,0
bne a4,t2,<fail>
li gp,14
li ra,0
slti a4,ra,-1
li t2,0
bne a4,t2,<fail>
li gp,15
li ra,-1
slti a4,ra,1
li t2,1
bne a4,t2,<fail>
li gp,16
li ra,-1
slti a4,ra,-1
li t2,0
bne a4,t2,<fail>
li gp,17
li ra,11
slti ra,ra,13
li t2,1
bne ra,t2,<fail>
li gp,18
li tp,0
li ra,15
slti a4,ra,10
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_18+0x8>
li t2,0
bne t1,t2,<fail>
li gp,19
li tp,0
li ra,10
slti a4,ra,16
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_19+0x8>
li t2,1
bne t1,t2,<fail>
li gp,20
li tp,0
li ra,16
slti a4,ra,9
nop 
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_20+0x8>
li t2,0
bne t1,t2,<fail>
li gp,21
li tp,0
li ra,11
slti a4,ra,15
addi tp,tp,1
li t0,2
bne tp,t0,<test_21+0x8>
li t2,1
bne a4,t2,<fail>
li gp,22
li tp,0
li ra,17
nop 
slti a4,ra,8
addi tp,tp,1
li t0,2
bne tp,t0,<test_22+0x8>
li t2,0
bne a4,t2,<fail>
li gp,23
li tp,0
li ra,12
nop 
nop 
slti a4,ra,14
addi tp,tp,1
li t0,2
bne tp,t0,<test_23+0x8>
li t2,1
bne a4,t2,<fail>
li gp,24
slti ra,zero,-1
li t2,0
bne ra,t2,<fail>
li gp,25
lui ra,0xff0
addi ra,ra,255
slti zero,ra,-1
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
