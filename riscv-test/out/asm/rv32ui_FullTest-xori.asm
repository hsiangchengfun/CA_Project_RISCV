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
lui ra,0xff1
addi ra,ra,-256
xori a4,ra,-241
lui t2,0xff00f
addi t2,t2,15
bne a4,t2,<fail>
li gp,3
lui ra,0xff01
addi ra,ra,-16
xori a4,ra,240
lui t2,0xff01
addi t2,t2,-256
bne a4,t2,<fail>
li gp,4
lui ra,0xff1
addi ra,ra,-1793
xori a4,ra,1807
lui t2,0xff1
addi t2,t2,-16
bne a4,t2,<fail>
li gp,5
lui ra,0xf00ff
addi ra,ra,15
xori a4,ra,240
lui t2,0xf00ff
addi t2,t2,255
bne a4,t2,<fail>
li gp,6
lui ra,0xff00f
addi ra,ra,1792
xori ra,ra,1807
lui t2,0xf00f
addi t2,t2,15
bne ra,t2,<fail>
li gp,7
li tp,0
lui ra,0xff01
addi ra,ra,-16
xori a4,ra,240
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_7+0x8>
lui t2,0xff01
addi t2,t2,-256
bne t1,t2,<fail>
li gp,8
li tp,0
lui ra,0xff1
addi ra,ra,-1793
xori a4,ra,1807
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_8+0x8>
lui t2,0xff1
addi t2,t2,-16
bne t1,t2,<fail>
li gp,9
li tp,0
lui ra,0xf00ff
addi ra,ra,15
xori a4,ra,240
nop 
nop 
mv t1,a4
addi tp,tp,1
li t0,2
bne tp,t0,<test_9+0x8>
lui t2,0xf00ff
addi t2,t2,255
bne t1,t2,<fail>
li gp,10
li tp,0
lui ra,0xff01
addi ra,ra,-16
xori a4,ra,240
addi tp,tp,1
li t0,2
bne tp,t0,<test_10+0x8>
lui t2,0xff01
addi t2,t2,-256
bne a4,t2,<fail>
li gp,11
li tp,0
lui ra,0xff1
addi ra,ra,-1
nop 
xori a4,ra,15
addi tp,tp,1
li t0,2
bne tp,t0,<test_11+0x8>
lui t2,0xff1
addi t2,t2,-16
bne a4,t2,<fail>
li gp,12
li tp,0
lui ra,0xf00ff
addi ra,ra,15
nop 
nop 
xori a4,ra,240
addi tp,tp,1
li t0,2
bne tp,t0,<test_12+0x8>
lui t2,0xf00ff
addi t2,t2,255
bne a4,t2,<fail>
li gp,13
xori ra,zero,240
li t2,240
bne ra,t2,<fail>
li gp,14
lui ra,0xff0
addi ra,ra,255
xori zero,ra,1807
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