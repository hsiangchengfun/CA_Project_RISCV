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
auipc ra,0x8
addi ra,ra,-164
li sp,-86
auipc a5,0x0
addi a5,a5,20
sb sp,0(ra)
lb a4,0(ra)
j <test_2+0x28>
mv a4,sp
li t2,-86
bne a4,t2,<fail>
li gp,3
auipc ra,0x8
addi ra,ra,-212
li sp,0
auipc a5,0x0
addi a5,a5,20
sb sp,1(ra)
lb a4,1(ra)
j <test_3+0x28>
mv a4,sp
li t2,0
bne a4,t2,<fail>
li gp,4
auipc ra,0x8
addi ra,ra,-260
lui sp,0xfffff
addi sp,sp,-96
auipc a5,0x0
addi a5,a5,20
sb sp,2(ra)
lh a4,2(ra)
j <test_4+0x2c>
mv a4,sp
lui t2,0xfffff
addi t2,t2,-96
bne a4,t2,<fail>
li gp,5
auipc ra,0x8
addi ra,ra,-316
li sp,10
auipc a5,0x0
addi a5,a5,20
sb sp,3(ra)
lb a4,3(ra)
j <test_5+0x28>
mv a4,sp
li t2,10
bne a4,t2,<fail>
li gp,6
auipc ra,0x8
addi ra,ra,-357
li sp,-86
auipc a5,0x0
addi a5,a5,20
sb sp,-3(ra)
lb a4,-3(ra)
j <test_6+0x28>
mv a4,sp
li t2,-86
bne a4,t2,<fail>
li gp,7
auipc ra,0x8
addi ra,ra,-405
li sp,0
auipc a5,0x0
addi a5,a5,20
sb sp,-2(ra)
lb a4,-2(ra)
j <test_7+0x28>
mv a4,sp
li t2,0
bne a4,t2,<fail>
li gp,8
auipc ra,0x8
addi ra,ra,-453
li sp,-96
auipc a5,0x0
addi a5,a5,20
sb sp,-1(ra)
lb a4,-1(ra)
j <test_8+0x28>
mv a4,sp
li t2,-96
bne a4,t2,<fail>
li gp,9
auipc ra,0x8
addi ra,ra,-501
li sp,10
auipc a5,0x0
addi a5,a5,20
sb sp,0(ra)
lb a4,0(ra)
j <test_9+0x28>
mv a4,sp
li t2,10
bne a4,t2,<fail>
li gp,10
auipc ra,0x8
addi ra,ra,-548
lui sp,0x12345
addi sp,sp,1656
addi tp,ra,-32
sb sp,32(tp)
lb t0,0(ra)
li t2,120
bne t0,t2,<fail>
li gp,11
auipc ra,0x8
addi ra,ra,-588
lui sp,0x3
addi sp,sp,152
addi ra,ra,-6
sb sp,7(ra)
auipc tp,0x8
addi tp,tp,-611
lb t0,0(tp)
li t2,-104
bne t0,t2,<fail>
li gp,12
li tp,0
li ra,-35
auipc sp,0x8
addi sp,sp,-652
sb ra,0(sp)
lb a4,0(sp)
li t2,-35
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_12+0x8>
li gp,13
li tp,0
li ra,-51
auipc sp,0x8
addi sp,sp,-700
nop 
sb ra,1(sp)
lb a4,1(sp)
li t2,-51
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_13+0x8>
li gp,14
li tp,0
li ra,-52
auipc sp,0x8
addi sp,sp,-752
nop 
nop 
sb ra,2(sp)
lb a4,2(sp)
li t2,-52
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_14+0x8>
li gp,15
li tp,0
li ra,-68
nop 
auipc sp,0x8
addi sp,sp,-812
sb ra,3(sp)
lb a4,3(sp)
li t2,-68
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_15+0x8>
li gp,16
li tp,0
li ra,-69
nop 
auipc sp,0x8
addi sp,sp,-864
nop 
sb ra,4(sp)
lb a4,4(sp)
li t2,-69
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_16+0x8>
li gp,17
li tp,0
li ra,-85
nop 
nop 
auipc sp,0x8
addi sp,sp,-924
sb ra,5(sp)
lb a4,5(sp)
li t2,-85
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_17+0x8>
li gp,18
li tp,0
auipc sp,0x8
addi sp,sp,-968
li ra,51
sb ra,0(sp)
lb a4,0(sp)
li t2,51
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_18+0x8>
li gp,19
li tp,0
auipc sp,0x8
addi sp,sp,-1016
li ra,35
nop 
sb ra,1(sp)
lb a4,1(sp)
li t2,35
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_19+0x8>
li gp,20
li tp,0
auipc sp,0x8
addi sp,sp,-1068
li ra,34
nop 
nop 
sb ra,2(sp)
lb a4,2(sp)
li t2,34
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_20+0x8>
li gp,21
li tp,0
auipc sp,0x8
addi sp,sp,-1124
nop 
li ra,18
sb ra,3(sp)
lb a4,3(sp)
li t2,18
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_21+0x8>
li gp,22
li tp,0
auipc sp,0x8
addi sp,sp,-1176
nop 
li ra,17
nop 
sb ra,4(sp)
lb a4,4(sp)
li t2,17
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_22+0x8>
li gp,23
li tp,0
auipc sp,0x8
addi sp,sp,-1232
nop 
nop 
li ra,1
sb ra,5(sp)
lb a4,5(sp)
li t2,1
bne a4,t2,<fail>
addi tp,tp,1
li t0,2
bne tp,t0,<test_23+0x8>
li a0,239
auipc a1,0x8
addi a1,a1,-1284
sb a0,3(a1)
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
