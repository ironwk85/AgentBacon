	.arch armv5te
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 2
	.file	"main.cpp"
	.section	.text._ZN4TankD1Ev,"axG",%progbits,_ZN4TankD1Ev,comdat
	.align	2
	.weak	_ZN4TankD1Ev
	.hidden	_ZN4TankD1Ev
	.type	_ZN4TankD1Ev, %function
_ZN4TankD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	str	r3, [r0, #0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	_ZTV4Tank+8
	.size	_ZN4TankD1Ev, .-_ZN4TankD1Ev
	.section	.text._ZN8ChuletasD1Ev,"axG",%progbits,_ZN8ChuletasD1Ev,comdat
	.align	2
	.weak	_ZN8ChuletasD1Ev
	.hidden	_ZN8ChuletasD1Ev
	.type	_ZN8ChuletasD1Ev, %function
_ZN8ChuletasD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L7
	str	r3, [r0, #0]
	bx	lr
.L8:
	.align	2
.L7:
	.word	_ZTV8Chuletas+8
	.size	_ZN8ChuletasD1Ev, .-_ZN8ChuletasD1Ev
	.section	.text._Z14DisplayMessagePKc,"ax",%progbits
	.align	2
	.global	_Z14DisplayMessagePKc
	.hidden	_Z14DisplayMessagePKc
	.type	_Z14DisplayMessagePKc, %function
_Z14DisplayMessagePKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_Z14DisplayMessagePKc, .-_Z14DisplayMessagePKc
	.section	.text.AllocClientScreenRectangle,"ax",%progbits
	.align	2
	.global	AllocClientScreenRectangle
	.hidden	AllocClientScreenRectangle
	.type	AllocClientScreenRectangle, %function
AllocClientScreenRectangle:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L13
	str	r4, [sp, #-4]!
	ldr	r0, [r2, #0]
	mov	r1, #0
	ldr	r3, [r0, #556]
	str	r3, [r0, #552]
	ldr	ip, [r2, #0]
	mov	r0, r3
	ldr	r4, [ip, #556]
	add	r4, r4, #16
	str	r4, [ip, #556]
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [r3, #0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, [r2, #0]
	ldr	ip, [r1, #516]
	strh	ip, [r3, #6]	@ movhi
	ldr	r1, [r2, #0]
	mov	ip, #0	@ movhi
	ldr	r1, [r1, #512]
	strh	r1, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	ldr	r1, [r2, #0]
	ldr	ip, [r1, #512]
	strh	ip, [r3, #12]	@ movhi
	ldr	r1, [r2, #0]
	ldr	r2, [r1, #516]
	strh	r2, [r3, #14]	@ movhi
	ldmfd	sp!, {r4}
	bx	lr
.L14:
	.align	2
.L13:
	.word	g_IwGxState
	.size	AllocClientScreenRectangle, .-AllocClientScreenRectangle
	.section	.text._GLOBAL__I_g_ButtonsHead,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_g_ButtonsHead, %function
_GLOBAL__I_g_ButtonsHead:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	mov	r0, #12
	bl	_Znwj
	ldr	r3, .L18
	mov	r1, #0
	str	r1, [r0, #8]
	str	r1, [r0, #0]
	str	r1, [r0, #4]
	str	r0, [r3, #0]
	ldmfd	sp!, {r3, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	_GLOBAL__I_g_ButtonsHead, .-_GLOBAL__I_g_ButtonsHead
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_g_ButtonsHead(target1)
	.section	.text._Z8gameOverv,"ax",%progbits
	.align	2
	.global	_Z8gameOverv
	.hidden	_Z8gameOverv
	.type	_Z8gameOverv, %function
_Z8gameOverv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, .L48
	ldr	fp, .L48+4
	mov	r3, #0
	sub	sp, sp, #4
	mov	r0, fp
	strb	r3, [r2, #0]
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L45
.L21:
	bl	_Z10SplashInitv
	ldr	r0, .L48+8
	bl	_Z12SplashUpdatePc
	bl	_Z12SplashRenderv
	ldr	r3, .L48+12
	ldr	r5, .L48+4
	ldr	ip, [r3, #0]
	ldr	r9, .L48+16
	ldr	r1, [ip, #0]
	ldr	sl, .L48+20
	orr	r8, r1, #2048
	str	r8, [ip, #0]
	ldr	r0, [r3, #0]
	ldr	r8, .L48+24
	ldr	r2, [r0, #0]
	orr	ip, r2, #4096
	str	ip, [r0, #0]
	ldr	r2, [r3, #0]
	ldr	r1, [r2, #0]
	orr	r0, r1, #8192
	str	r0, [r2, #0]
	ldr	r1, [r3, #0]
	ldr	ip, [r1, #0]
	orr	r0, ip, #16384
	str	r0, [r1, #0]
	bl	_Z14gameOverRenderv
	bl	_Z9IwGxFlushv
	bl	_Z15IwGxSwapBuffersv
.L42:
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	bne	.L46
	bl	s3eTimerGetMs
	mov	r6, r0
	mov	r7, r1
	add	r4, r0, #40
	b	.L23
.L25:
	bl	s3eTimerGetMs
	subs	r0, r4, r0
	bmi	.L24
	bl	s3eDeviceYield
.L23:
	bl	s3eTimerGetMs
	mov	r2, r0
	mov	r3, r1
	subs	r2, r2, r6
	sbc	r3, r3, r7
	cmp	r3, #0
	cmpeq	r2, #39
	bls	.L25
.L24:
	ldr	r0, .L48+4
	bl	_ZNK6CInput13getTouchCountEv
	cmp	r0, #0
	beq	.L42
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #4]
	cmp	r1, r9
	movgt	r2, #0
	movle	r2, #1
	sub	r0, r3, #70
	cmp	r0, sl
	movhi	lr, #0
	andls	lr, r2, #1
	cmp	lr, #0
	beq	.L26
	ldr	ip, .L48+28
	cmp	r1, ip
	bgt	.L47
.L26:
	sub	ip, r3, #648
	sub	r0, ip, #2
	cmp	r0, r8
	movhi	lr, #0
	andls	lr, r2, #1
	cmp	lr, #0
	beq	.L42
	ldr	r2, .L48+28
	cmp	r1, r2
	ble	.L42
	ldr	r6, .L48+32
	ldr	r0, .L48+4
	mov	r1, #0
	bl	_ZN6CInput8setCoinsEs
	ldr	r0, .L48+4
	mov	r1, #5
	bl	_ZN6CInput8setLifesEs
	ldr	r0, [r6, #4]
	ldr	r1, .L48+36
	bl	_ZN9corazones4setXEs
	ldr	r0, [r6, #8]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #12]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #16]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #20]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #24]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #28]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #32]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #36]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #40]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #44]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r6, #48]
	ldr	r1, .L48+36
	bl	_ZN4Coin4setXEs
	add	r4, r6, #52
	mov	r6, #0
.L29:
	add	r5, r6, #4
	ldr	r0, [r4, r6]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	ldr	r0, [r4, r5]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	add	r1, r5, #4
	ldr	r0, [r4, r1]
	add	r5, r6, #12
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	add	r6, r6, #16
	ldr	r0, [r4, r5]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	cmp	r6, #80
	ldr	r5, .L48+32
	bne	.L29
	ldr	r0, [r5, #132]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #136]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #140]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #144]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #148]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #152]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #156]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #160]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #164]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #168]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #172]
	ldr	r1, .L48+40
	bl	_ZN4Tank4setXEs
	ldr	r0, [r5, #176]
	ldr	r1, .L48+44
	bl	_ZN8Chuletas4setXEs
	ldr	ip, .L48
	mov	r1, #2
	mov	r2, #10
	mov	r4, #1
	str	r1, [ip, #8]
	str	r1, [ip, #4]
	str	r2, [fp, #136]
	ldr	r0, .L48+4
	str	r4, [fp, #132]
	bl	_ZN6CInput9initTimerEv
	ldr	r0, .L48+4
	bl	_ZN6CInput12setTotalTimeEv
	ldr	r0, .L48+4
	ldr	r1, .L48+48
	str	r4, [fp, #132]
	bl	_ZN6CInput11setVelocityEi
	ldr	r3, .L48
	strb	r4, [r3, #12]
.L43:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	_Z14SplashShutDownv
.L46:
	add	sp, sp, #4
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L45:
	mov	r0, fp
	bl	_ZN6CInput8stopSongEv
	b	.L21
.L47:
	ldr	r4, .L48+32
	ldr	r0, .L48+4
	mov	r1, #0
	bl	_ZN6CInput8setCoinsEs
	ldr	r0, .L48+4
	mov	r1, #5
	bl	_ZN6CInput8setLifesEs
	ldr	r0, [r4, #4]
	ldr	r1, .L48+36
	bl	_ZN9corazones4setXEs
	ldr	r0, [r4, #8]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #12]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #16]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #20]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #24]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #28]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #32]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #36]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #40]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #44]
	ldr	r1, .L48+36
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #48]
	ldr	r1, .L48+36
	bl	_ZN4Coin4setXEs
	add	r4, r4, #52
	mov	r6, #0
.L27:
	add	r5, r6, #4
	ldr	r0, [r4, r6]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	ldr	r0, [r4, r5]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	add	r3, r5, #4
	ldr	r0, [r4, r3]
	add	r5, r6, #12
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	add	r6, r6, #16
	ldr	r0, [r4, r5]
	ldr	r1, .L48+36
	bl	_ZN8MiniCoin4setXEs
	cmp	r6, #80
	ldr	r5, .L48+32
	bne	.L27
	ldr	r0, [r5, #132]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #136]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #140]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #144]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #148]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #152]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #156]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #160]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #164]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #168]
	ldr	r1, .L48+36
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r5, #172]
	ldr	r1, .L48+40
	bl	_ZN4Tank4setXEs
	ldr	r0, [r5, #176]
	ldr	r1, .L48+44
	bl	_ZN8Chuletas4setXEs
	ldr	r3, .L48
	ldr	r2, .L48
	mov	r1, #2
	mov	ip, #10
	mov	r4, #1
	str	r1, [r3, #8]
	str	r1, [r2, #4]
	str	ip, [fp, #136]
	ldr	r0, .L48+4
	str	r4, [fp, #132]
	bl	_ZN6CInput9initTimerEv
	ldr	r0, .L48+4
	bl	_ZN6CInput12setTotalTimeEv
	ldr	r0, .L48+4
	ldr	r1, .L48+48
	str	r4, [fp, #132]
	bl	_ZN6CInput11setVelocityEi
	ldr	r0, .L48+4
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L43
	ldr	r0, .L48+4
	bl	_ZN6CInput8playSongEv
	b	.L43
.L49:
	.align	2
.L48:
	.word	.LANCHOR1
	.word	g_Input
	.word	.LC0
	.word	g_IwGxState
	.word	730
	.word	310
	.word	565
	.word	649
	.word	.LANCHOR0
	.word	-400
	.word	-600
	.word	-800
	.word	10000
	.size	_Z8gameOverv, .-_Z8gameOverv
	.section	.text._Z9endOfGamev,"ax",%progbits
	.align	2
	.global	_Z9endOfGamev
	.hidden	_Z9endOfGamev
	.type	_Z9endOfGamev, %function
_Z9endOfGamev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}
	bl	_Z10SplashInitv
	ldr	r0, .L61
	bl	_Z12SplashUpdatePc
	bl	_Z12SplashRenderv
	ldr	ip, .L61+4
	ldr	r0, [ip, #0]
	ldr	r2, [r0, #0]
	orr	r3, r2, #2048
	str	r3, [r0, #0]
	ldr	r2, [ip, #0]
	ldr	r1, [r2, #0]
	orr	r0, r1, #4096
	str	r0, [r2, #0]
	ldr	r2, [ip, #0]
	ldr	r3, [r2, #0]
	orr	r1, r3, #8192
	str	r1, [r2, #0]
	ldr	r3, [ip, #0]
	ldr	r0, [r3, #0]
	orr	r2, r0, #16384
	str	r2, [r3, #0]
	bl	_Z15gameFinalRenderv
	bl	_Z9IwGxFlushv
	bl	_Z15IwGxSwapBuffersv
.L59:
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	bne	.L60
.L55:
	bl	s3eTimerGetMs
	mov	r6, r0
	mov	r7, r1
	add	r4, r0, #40
	b	.L52
.L54:
	bl	s3eTimerGetMs
	subs	r0, r4, r0
	bmi	.L53
	bl	s3eDeviceYield
.L52:
	bl	s3eTimerGetMs
	mov	r2, r0
	mov	r3, r1
	subs	r2, r2, r6
	sbc	r3, r3, r7
	cmp	r3, #0
	cmpeq	r2, #39
	bls	.L54
.L53:
	ldr	r0, .L61+8
	bl	_ZNK6CInput13getTouchCountEv
	cmp	r0, #0
	beq	.L59
	mov	r1, #1
	ldr	r0, .L61+12
	bl	s3eOSExecExecute
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	beq	.L55
.L60:
	ldmfd	sp!, {r4, r6, r7, pc}
.L62:
	.align	2
.L61:
	.word	.LC1
	.word	g_IwGxState
	.word	g_Input
	.word	.LC2
	.size	_Z9endOfGamev, .-_Z9endOfGamev
	.section	.text._ZN4TankD0Ev,"axG",%progbits,_ZN4TankD0Ev,comdat
	.align	2
	.weak	_ZN4TankD0Ev
	.hidden	_ZN4TankD0Ev
	.type	_ZN4TankD0Ev, %function
_ZN4TankD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L65
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0, #0]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L66:
	.align	2
.L65:
	.word	_ZTV4Tank+8
	.size	_ZN4TankD0Ev, .-_ZN4TankD0Ev
	.section	.text._ZN8ChuletasD0Ev,"axG",%progbits,_ZN8ChuletasD0Ev,comdat
	.align	2
	.weak	_ZN8ChuletasD0Ev
	.hidden	_ZN8ChuletasD0Ev
	.type	_ZN8ChuletasD0Ev, %function
_ZN8ChuletasD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L69
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0, #0]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L70:
	.align	2
.L69:
	.word	_ZTV8Chuletas+8
	.size	_ZN8ChuletasD0Ev, .-_ZN8ChuletasD0Ev
	.global	__aeabi_idivmod
	.section	.text._Z14generaChuletasi,"ax",%progbits
	.align	2
	.global	_Z14generaChuletasi
	.hidden	_Z14generaChuletasi
	.type	_Z14generaChuletasi, %function
_Z14generaChuletasi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	bl	rand
	mov	r1, r4
	bl	__aeabi_idivmod
	cmp	r1, #5
	ldmnefd	sp!, {r4, r5, r6, pc}
	ldr	r4, .L75
	ldr	r5, [r4, #176]
	ldrsh	r3, [r5, #60]
	cmp	r3, #0
	ldmgtfd	sp!, {r4, r5, r6, pc}
	bl	rand
	mov	r6, r0
	ldr	r0, .L75+4
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #600
	mov	r0, r6
	bl	__aeabi_idivmod
	mov	r0, r5
	mov	ip, r1, asl #16
	mov	r1, ip, asr #16
	bl	_ZN8Chuletas4setYEs
	ldr	r0, .L75+4
	ldr	r4, [r4, #176]
	bl	_ZN6CInput14getScreenWidthEv
	mov	r2, r0, asl #16
	add	r0, r2, #91226112
	add	r1, r0, #524288
	mov	r1, r1, asr #16
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN8Chuletas4setXEs
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z14generaChuletasi, .-_Z14generaChuletasi
	.section	.text._Z14generaMaxiCoinv,"ax",%progbits
	.align	2
	.global	_Z14generaMaxiCoinv
	.hidden	_Z14generaMaxiCoinv
	.type	_Z14generaMaxiCoinv, %function
_Z14generaMaxiCoinv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r4, .L80
	ldrb	r3, [r4, #141]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r5, .L80+4
	ldr	r1, [r5, #48]
	ldrsh	r0, [r1, #6]
	cmp	r0, #0
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r0, [r5, #0]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r6, [r5, #48]
	bl	rand
	mov	r7, r0
	mov	r0, r4
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #64
	mov	r0, r7
	bl	__aeabi_idivmod
	mov	r0, r6
	mov	r6, r1, asl #16
	mov	r1, r6, asr #16
	bl	_ZN4Coin4setYEs
	mov	r0, r4
	ldr	r6, [r5, #48]
	bl	_ZN6CInput14getScreenWidthEv
	mov	ip, r0, asl #16
	add	r2, ip, #13107200
	mov	r1, r2, asr #16
	mov	r0, r6
	bl	_ZN4Coin4setXEs
	ldr	r1, [r5, #48]
	ldr	r0, [r5, #0]
	bl	_ZN14spritesManager9addSpriteEP7sprites
	mov	r1, #0
	strb	r1, [r4, #141]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L81:
	.align	2
.L80:
	.word	g_Input
	.word	.LANCHOR0
	.size	_Z14generaMaxiCoinv, .-_Z14generaMaxiCoinv
	.section	.text._Z10generaTanki,"ax",%progbits
	.align	2
	.global	_Z10generaTanki
	.hidden	_Z10generaTanki
	.type	_Z10generaTanki, %function
_Z10generaTanki:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	bl	rand
	mov	r1, r4
	bl	__aeabi_idivmod
	cmp	r1, #5
	ldmnefd	sp!, {r4, r5, r6, pc}
	ldr	r4, .L86
	ldr	r5, [r4, #172]
	ldrsh	r3, [r5, #60]
	cmp	r3, #0
	ldmgtfd	sp!, {r4, r5, r6, pc}
	ldr	r0, .L86+4
	bl	_ZN6CInput15getScreenHeightEv
	mov	ip, r0, asl #16
	sub	r0, ip, #18350080
	mov	r1, r0, asr #16
	mov	r0, r5
	bl	_ZN4Tank4setYEs
	ldr	r0, .L86+4
	ldr	r4, [r4, #172]
	bl	_ZN6CInput14getScreenWidthEv
	mov	r2, r0, asl #16
	add	r1, r2, #65536000
	mov	r0, r4
	mov	r1, r1, asr #16
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN4Tank4setXEs
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z10generaTanki, .-_Z10generaTanki
	.section	.text._Z10generaTntsi,"ax",%progbits
	.align	2
	.global	_Z10generaTntsi
	.hidden	_Z10generaTntsi
	.type	_Z10generaTntsi, %function
_Z10generaTntsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bl	rand
	mov	r1, r4
	bl	__aeabi_idivmod
	cmp	r1, #5
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r4, .L102
	ldr	r3, [r4, #132]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	movle	r5, #0
	ble	.L92
	ldr	r3, [r4, #136]
	ldrsh	r0, [r3, #6]
	cmp	r0, #0
	movle	r5, #1
	ble	.L92
	ldr	r3, [r4, #140]
	ldrsh	ip, [r3, #6]
	cmp	ip, #0
	movle	r5, #2
	ble	.L92
	ldr	r3, [r4, #144]
	ldrsh	lr, [r3, #6]
	cmp	lr, #0
	movle	r5, #3
	ble	.L92
	ldr	r3, [r4, #148]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	movle	r5, #4
	ble	.L92
	ldr	r3, [r4, #152]
	ldrsh	r0, [r3, #6]
	cmp	r0, #0
	movle	r5, r1
	ble	.L92
	ldr	r3, [r4, #156]
	ldrsh	r1, [r3, #6]
	cmp	r1, #0
	movle	r5, #6
	ble	.L92
	ldr	r3, [r4, #160]
	ldrsh	ip, [r3, #6]
	cmp	ip, #0
	movle	r5, #7
	ble	.L92
	ldr	r3, [r4, #164]
	ldrsh	lr, [r3, #6]
	cmp	lr, #0
	movle	r5, #8
	ble	.L92
	ldr	r3, [r4, #168]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r5, #9
.L92:
	mov	r1, r3
	add	r5, r4, r5, asl #2
	ldr	r0, [r4, #0]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r6, [r5, #132]
	bl	rand
	mov	r7, r0
	ldr	r0, .L102+4
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #128
	mov	r0, r7
	bl	__aeabi_idivmod
	mov	r0, r6
	mov	r6, r1, asl #16
	mov	r1, r6, asr #16
	bl	_ZN3Tnt4setYEs
	ldr	r0, .L102+4
	ldr	r6, [r5, #132]
	bl	_ZN6CInput14getScreenWidthEv
	mov	r1, r0, asl #16
	add	r3, r1, #32768000
	mov	r0, r6
	mov	r1, r3, asr #16
	bl	_ZN3Tnt4setXEs
	ldr	r0, [r4, #0]
	ldr	r1, [r5, #132]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	_ZN14spritesManager9addSpriteEP7sprites
.L103:
	.align	2
.L102:
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z10generaTntsi, .-_Z10generaTntsi
	.section	.text._Z15generaMiniCoinsi,"ax",%progbits
	.align	2
	.global	_Z15generaMiniCoinsi
	.hidden	_Z15generaMiniCoinsi
	.type	_Z15generaMiniCoinsi, %function
_Z15generaMiniCoinsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bl	rand
	mov	r1, r4
	bl	__aeabi_idivmod
	cmp	r1, #5
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r2, .L118
	mov	r3, #0
.L108:
	ldr	r1, [r2, r3, asl #2]
	add	r0, r3, #1
	ldrsh	r4, [r1, #6]
	add	r6, r3, #3
	cmp	r4, #0
	mov	ip, r3, asl #2
	add	r5, r0, #1
	add	r3, r3, #4
	ldr	r4, .L118+4
	ble	.L117
	ldr	r1, [r2, r0, asl #2]
	mov	ip, r0, asl #2
	ldrsh	r0, [r1, #6]
	cmp	r0, #0
	ble	.L117
	ldr	r1, [r2, r5, asl #2]
	mov	ip, r5, asl #2
	ldrsh	lr, [r1, #6]
	cmp	lr, #0
	ble	.L117
	ldr	r1, [r2, r6, asl #2]
	mov	ip, r6, asl #2
	ldrsh	r0, [r1, #6]
	cmp	r0, #0
	ble	.L117
	cmp	r3, #20
	bne	.L108
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L117:
	mov	r5, r4
	ldr	r0, [r5], ip
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r6, [r5, #52]
	bl	rand
	mov	r7, r0
	ldr	r0, .L118+8
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #64
	mov	r0, r7
	bl	__aeabi_idivmod
	mov	r0, r6
	mov	r3, r1, asl #16
	mov	r1, r3, asr #16
	bl	_ZN8MiniCoin4setYEs
	ldr	r0, .L118+8
	ldr	r6, [r5, #52]
	bl	_ZN6CInput14getScreenWidthEv
	mov	r2, r0, asl #16
	add	r1, r2, #32768000
	mov	r0, r6
	mov	r1, r1, asr #16
	bl	_ZN8MiniCoin4setXEs
	ldr	r0, [r4, #0]
	ldr	r1, [r5, #52]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	_ZN14spritesManager9addSpriteEP7sprites
.L119:
	.align	2
.L118:
	.word	.LANCHOR0+52
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z15generaMiniCoinsi, .-_Z15generaMiniCoinsi
	.section	.text._Z11generaClawsi,"ax",%progbits
	.align	2
	.global	_Z11generaClawsi
	.hidden	_Z11generaClawsi
	.type	_Z11generaClawsi, %function
_Z11generaClawsi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bl	rand
	mov	r1, r4
	bl	__aeabi_idivmod
	cmp	r1, #5
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r4, .L134
	ldr	r3, [r4, #8]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	movle	r5, #0
	ble	.L124
	ldr	r3, [r4, #12]
	ldrsh	r0, [r3, #6]
	cmp	r0, #0
	movle	r5, #1
	ble	.L124
	ldr	r3, [r4, #16]
	ldrsh	ip, [r3, #6]
	cmp	ip, #0
	movle	r5, #2
	ble	.L124
	ldr	r3, [r4, #20]
	ldrsh	lr, [r3, #6]
	cmp	lr, #0
	movle	r5, #3
	ble	.L124
	ldr	r3, [r4, #24]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	movle	r5, #4
	ble	.L124
	ldr	r3, [r4, #28]
	ldrsh	r0, [r3, #6]
	cmp	r0, #0
	movle	r5, r1
	ble	.L124
	ldr	r3, [r4, #32]
	ldrsh	r1, [r3, #6]
	cmp	r1, #0
	movle	r5, #6
	ble	.L124
	ldr	r3, [r4, #36]
	ldrsh	ip, [r3, #6]
	cmp	ip, #0
	movle	r5, #7
	ble	.L124
	ldr	r3, [r4, #40]
	ldrsh	lr, [r3, #6]
	cmp	lr, #0
	movle	r5, #8
	ble	.L124
	ldr	r3, [r4, #44]
	ldrsh	r2, [r3, #6]
	cmp	r2, #0
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r5, #9
.L124:
	mov	r1, r3
	add	r5, r4, r5, asl #2
	ldr	r0, [r4, #0]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r6, [r5, #8]
	bl	rand
	mov	r7, r0
	ldr	r0, .L134+4
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #128
	mov	r0, r7
	bl	__aeabi_idivmod
	mov	r0, r6
	mov	r6, r1, asl #16
	mov	r1, r6, asr #16
	bl	_ZN5claws4setYEs
	ldr	r0, .L134+4
	ldr	r6, [r5, #8]
	bl	_ZN6CInput14getScreenWidthEv
	mov	r1, r0, asl #16
	add	r3, r1, #32768000
	mov	r0, r6
	mov	r1, r3, asr #16
	bl	_ZN5claws4setXEs
	ldr	r0, [r4, #0]
	ldr	r1, [r5, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	_ZN14spritesManager9addSpriteEP7sprites
.L135:
	.align	2
.L134:
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z11generaClawsi, .-_Z11generaClawsi
	.section	.text._Z12generaHearthv,"ax",%progbits
	.align	2
	.global	_Z12generaHearthv
	.hidden	_Z12generaHearthv
	.type	_Z12generaHearthv, %function
_Z12generaHearthv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldr	r4, .L139
	ldrb	r3, [r4, #140]	@ zero_extendqisi2
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r5, .L139+4
	ldr	r1, [r5, #4]
	ldrsh	r0, [r1, #6]
	cmp	r0, #0
	ldmgtfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r0, [r5, #0]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r6, [r5, #4]
	bl	rand
	mov	r7, r0
	mov	r0, r4
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r1, r0, #64
	mov	r0, r7
	bl	__aeabi_idivmod
	mov	r0, r6
	mov	r6, r1, asl #16
	mov	r1, r6, asr #16
	bl	_ZN9corazones4setYEs
	mov	r0, r4
	ldr	r6, [r5, #4]
	bl	_ZN6CInput14getScreenWidthEv
	mov	ip, r0, asl #16
	add	r2, ip, #13107200
	mov	r1, r2, asr #16
	mov	r0, r6
	bl	_ZN9corazones4setXEs
	ldmia	r5, {r0, r1}	@ phole ldm
	bl	_ZN14spritesManager9addSpriteEP7sprites
	mov	r1, #0
	strb	r1, [r4, #140]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L140:
	.align	2
.L139:
	.word	g_Input
	.word	.LANCHOR0
	.size	_Z12generaHearthv, .-_Z12generaHearthv
	.section	.text._Z17insertaObstaculosv,"ax",%progbits
	.align	2
	.global	_Z17insertaObstaculosv
	.hidden	_Z17insertaObstaculosv
	.type	_Z17insertaObstaculosv, %function
_Z17insertaObstaculosv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, .L287
	sub	sp, sp, #8
	ldr	r0, [r4, #0]
	bl	_ZN14spritesManager6updateEv
	ldr	r5, .L287+4
	ldr	r0, [r4, #176]
	ldr	ip, [r5, #4]
	add	r8, ip, #1
	cmp	r8, #16
	str	r8, [r5, #4]
	movgt	r8, #1
	andle	r1, r8, #255
	movgt	r1, r8
	strgt	r8, [r5, #4]
	mov	r7, r1, asl #24
	mov	r1, r7, asr #24
	bl	_ZN8Chuletas6updateEa
	ldr	r2, [r5, #8]
	ldr	r0, [r4, #172]
	add	r6, r2, #1
	cmp	r6, #16
	str	r6, [r5, #8]
	movgt	r6, #1
	andle	r1, r6, #255
	movgt	r1, r6
	ldrgt	r2, .L287+4
	ldr	r5, .L287+12
	strgt	r6, [r2, #8]
	mov	r1, r1, asl #24
	mov	r1, r1, asr #24
	bl	_ZN4Tank6updateEa
	ldr	r0, [r5, #132]
	sub	r3, r0, #1
	cmp	r3, #9
	ldrls	pc, [pc, r3, asl #2]
	b	.L146
.L157:
	.word	.L147
	.word	.L148
	.word	.L149
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
	.word	.L155
	.word	.L156
.L156:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #10
	bl	_Z15generaMiniCoinsi
	mov	r0, #40
	bl	_Z10generaTntsi
	mov	r0, #20
	bl	_Z14generaChuletasi
	mov	r2, #1
	strb	r2, [r5, #140]
.L187:
	ldr	r2, [r4, #8]
	cmp	r2, #0
	beq	.L158
	ldrh	r3, [r2, #4]
	mov	lr, r3, asl #16
	cmp	lr, #0
	ble	.L158
	add	r3, r3, #20
	mov	r0, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r0, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L250
.L158:
	ldr	r2, [r4, #12]
	cmp	r2, #0
	beq	.L161
	ldrh	r3, [r2, #4]
	mov	r0, r3, asl #16
	cmp	r0, #0
	ble	.L161
	add	r3, r3, #20
	mov	r1, r3, asl #16
	mov	r0, r1, asr #16
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L251
.L161:
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L164
	ldrh	r3, [r2, #4]
	mov	r1, r3, asl #16
	cmp	r1, #0
	ble	.L164
	add	r3, r3, #20
	mov	r6, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r6, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L252
.L164:
	ldr	r2, [r4, #20]
	cmp	r2, #0
	beq	.L167
	ldrh	r3, [r2, #4]
	mov	r6, r3, asl #16
	cmp	r6, #0
	ble	.L167
	add	r3, r3, #20
	mov	r5, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r5, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L253
.L167:
	ldr	r2, [r4, #24]
	cmp	r2, #0
	beq	.L170
	ldrh	r3, [r2, #4]
	mov	r5, r3, asl #16
	cmp	r5, #0
	ble	.L170
	add	r3, r3, #20
	mov	r7, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r7, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L254
.L170:
	ldr	r2, [r4, #28]
	cmp	r2, #0
	beq	.L173
	ldrh	r3, [r2, #4]
	mov	r7, r3, asl #16
	cmp	r7, #0
	ble	.L173
	add	r3, r3, #20
	mov	r8, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r8, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L255
.L173:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	beq	.L176
	ldrh	r3, [r2, #4]
	mov	r8, r3, asl #16
	cmp	r8, #0
	ble	.L176
	add	r3, r3, #20
	mov	ip, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, ip, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L256
.L176:
	ldr	r2, [r4, #36]
	cmp	r2, #0
	beq	.L179
	ldrh	r3, [r2, #4]
	mov	ip, r3, asl #16
	cmp	ip, #0
	ble	.L179
	add	r3, r3, #20
	mov	r1, r3, asl #16
	mov	r0, r1, asr #16
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L257
.L179:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	beq	.L182
	ldrh	r3, [r2, #4]
	mov	r1, r3, asl #16
	cmp	r1, #0
	ble	.L182
	add	r3, r3, #20
	mov	r6, r3, asl #16
	ldrsh	r1, [r2, #6]
	ldrsh	r3, [r2, #10]
	mov	r0, r6, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L258
.L182:
	ldr	r2, [r4, #44]
	cmp	r2, #0
	beq	.L186
	ldrh	r3, [r2, #4]
	mov	r5, r3, asl #16
	cmp	r5, #0
	ble	.L186
	add	r0, r3, #20
	mov	lr, r0, asl #16
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	mov	r0, lr, asr #16
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L259
.L186:
	ldr	r6, .L287+8
	mov	r5, #0
	mov	r8, r6
	b	.L192
.L189:
	add	r5, r5, #4
	ldr	r2, [r6, r5]
	cmp	r2, #0
	beq	.L232
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L232
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L260
.L232:
	add	r7, r5, #4
	ldr	r2, [r6, r7]
	cmp	r2, #0
	beq	.L236
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L236
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L261
.L236:
	add	r7, r5, #8
	ldr	r2, [r6, r7]
	cmp	r2, #0
	beq	.L240
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L240
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L262
.L240:
	add	r5, r5, #12
	cmp	r5, #80
	beq	.L263
.L192:
	ldr	r2, [r6, r5]
	cmp	r2, #0
	beq	.L189
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L189
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	beq	.L189
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L249
	ldr	r0, [r8, r5]
	ldr	ip, [r0, #16]
	ldr	r7, [ip, #72]
	ldrb	lr, [r7, #4]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L191
	ldr	r0, .L287+12
	bl	_ZN6CInput8playCoinEv
.L249:
	ldr	r0, [r8, r5]
.L191:
	mov	r1, #0
	bl	_ZN7sprites8setPauseEb
	b	.L189
.L148:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #30
	bl	_Z15generaMiniCoinsi
	b	.L187
.L149:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #50
	bl	_Z11generaClawsi
	mov	r0, #30
	bl	_Z15generaMiniCoinsi
	mov	r0, #50
	bl	_Z10generaTntsi
	b	.L187
.L150:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #20
	bl	_Z15generaMiniCoinsi
	mov	r0, #40
	bl	_Z10generaTntsi
	mov	r0, #50
	bl	_Z10generaTanki
	b	.L187
.L151:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #20
	bl	_Z15generaMiniCoinsi
	mov	r0, #40
	bl	_Z10generaTntsi
	mov	r0, #40
	bl	_Z10generaTanki
	b	.L187
.L152:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #50
	bl	_Z11generaClawsi
	mov	r0, #20
	bl	_Z15generaMiniCoinsi
	mov	r0, #50
	bl	_Z10generaTntsi
	mov	r0, #30
	bl	_Z10generaTanki
	b	.L187
.L153:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #10
	bl	_Z15generaMiniCoinsi
	mov	r0, #40
	bl	_Z10generaTntsi
	mov	r0, #30
	bl	_Z10generaTanki
	b	.L187
.L154:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #50
	bl	_Z11generaClawsi
	mov	r0, #10
	bl	_Z15generaMiniCoinsi
	mov	r0, #50
	bl	_Z10generaTntsi
	mov	r6, #1
	mov	r0, #70
	bl	_Z14generaChuletasi
	strb	r6, [r5, #140]
	b	.L187
.L155:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #40
	bl	_Z11generaClawsi
	mov	r0, #10
	bl	_Z15generaMiniCoinsi
	mov	r0, #40
	bl	_Z10generaTntsi
	mov	r0, #30
	bl	_Z14generaChuletasi
	mov	r3, #1
	strb	r3, [r5, #140]
	b	.L187
.L146:
	bl	_Z9endOfGamev
	b	.L187
.L147:
	bl	_Z12generaHearthv
	bl	_Z14generaMaxiCoinv
	mov	r0, #50
	bl	_Z11generaClawsi
	mov	r0, #30
	bl	_Z15generaMiniCoinsi
	b	.L187
.L263:
	ldr	r2, [r4, #4]
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L193
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L264
.L193:
	ldr	r2, [r4, #132]
	cmp	r2, #0
	beq	.L195
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L195
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L265
.L195:
	ldr	r2, [r4, #136]
	cmp	r2, #0
	beq	.L198
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L198
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L266
.L198:
	ldr	r2, [r4, #140]
	cmp	r2, #0
	beq	.L201
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L201
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L267
.L201:
	ldr	r2, [r4, #144]
	cmp	r2, #0
	beq	.L204
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L204
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L268
.L204:
	ldr	r2, [r4, #148]
	cmp	r2, #0
	beq	.L207
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L207
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L269
.L207:
	ldr	r2, [r4, #152]
	cmp	r2, #0
	beq	.L210
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L210
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L270
.L210:
	ldr	r2, [r4, #156]
	cmp	r2, #0
	beq	.L213
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L213
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L271
.L213:
	ldr	r2, [r4, #160]
	cmp	r2, #0
	beq	.L216
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L216
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L272
.L216:
	ldr	r2, [r4, #164]
	cmp	r2, #0
	beq	.L219
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L219
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L273
.L219:
	ldr	r2, [r4, #168]
	cmp	r2, #0
	beq	.L222
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L222
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L274
.L222:
	ldr	r2, [r4, #48]
	ldrsh	r0, [r2, #4]
	cmp	r0, #0
	ble	.L224
	ldrsh	r3, [r2, #10]
	ldrsh	r1, [r2, #6]
	ldrsh	r2, [r2, #8]
	bl	_Z12BaconCollidessss
	cmp	r0, #0
	bne	.L275
.L224:
	ldr	r2, [r4, #172]
	ldrsh	r0, [r2, #68]
	cmp	r0, #0
	ble	.L226
	ldrsh	r3, [r2, #62]
	ldrsh	r1, [r2, #60]
	mov	lr, #20
	ldrsh	r2, [r2, #70]
	str	lr, [sp, #0]
	bl	_Z13BaconCollide2ssssa
	cmp	r0, #0
	bne	.L276
.L226:
	ldr	r2, [r4, #176]
	ldrsh	r0, [r2, #68]
	cmp	r0, #0
	ble	.L230
	ldrsh	r3, [r2, #62]
	ldrsh	r1, [r2, #60]
	mov	ip, #90
	ldrsh	r2, [r2, #70]
	str	ip, [sp, #0]
	bl	_Z13BaconCollide2ssssa
	cmp	r0, #0
	bne	.L277
.L230:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L261:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L278
	ldr	r0, [r8, r7]
	ldr	r3, [r0, #16]
	ldr	r1, [r3, #72]
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L238
	ldr	r0, .L287+12
	bl	_ZN6CInput8playCoinEv
	ldr	r0, [r8, r7]
.L238:
	mov	r1, #0
	bl	_ZN7sprites8setPauseEb
	b	.L236
.L262:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L279
	ldr	r0, [r8, r7]
	ldr	ip, [r0, #16]
	ldr	r2, [ip, #72]
	ldrb	lr, [r2, #4]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L242
	ldr	r0, .L287+12
	bl	_ZN6CInput8playCoinEv
	ldr	r0, [r8, r7]
.L242:
	mov	r1, #0
	bl	_ZN7sprites8setPauseEb
	b	.L240
.L260:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L280
	ldr	r0, [r8, r5]
	ldr	r2, [r0, #16]
	ldr	lr, [r2, #72]
	ldrb	r7, [lr, #4]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L234
	ldr	r0, .L287+12
	bl	_ZN6CInput8playCoinEv
	ldr	r0, [r8, r5]
.L234:
	mov	r1, #0
	bl	_ZN7sprites8setPauseEb
	b	.L232
.L280:
	ldr	r0, [r8, r5]
	b	.L234
.L279:
	ldr	r0, [r8, r7]
	b	.L242
.L278:
	ldr	r0, [r8, r7]
	b	.L238
.L277:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r1, r3, #65536
	mov	r1, r1, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L281
.L229:
	ldr	r1, [r4, #176]
	ldrh	r3, [r1, #68]
	sub	ip, r3, #800
	strh	ip, [r1, #68]	@ movhi
	ldr	lr, [r4, #176]
	ldrh	r2, [lr, #60]
	sub	r0, r2, #800
	strh	r0, [lr, #60]	@ movhi
	b	.L230
.L264:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r1, r0, asl #16
	add	r0, r1, #65536
	mov	r1, r0, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L282
.L194:
	ldr	r0, [r4, #4]
	ldrh	r1, [r0, #4]
	sub	ip, r1, #400
	strh	ip, [r0, #4]	@ movhi
	ldr	r3, [r4, #4]
	ldrh	lr, [r3, #6]
	sub	r2, lr, #400
	strh	r2, [r3, #6]	@ movhi
	b	.L193
.L275:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L283
.L225:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getCoinsEv
	mov	ip, r0, asl #16
	add	r0, ip, #13107200
	mov	r1, r0, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setCoinsEs
	ldr	r3, [r4, #48]
	ldrh	r1, [r3, #4]
	sub	r2, r1, #400
	strh	r2, [r3, #4]	@ movhi
	ldr	r0, [r4, #48]
	ldrh	ip, [r0, #6]
	sub	r1, ip, #400
	strh	r1, [r0, #6]	@ movhi
	b	.L224
.L276:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r2, r3, #65536
	mov	r1, r2, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L284
.L227:
	ldr	r3, [r4, #172]
	ldrh	r2, [r3, #68]
	sub	lr, r2, #600
	strh	lr, [r3, #68]	@ movhi
	ldr	r0, [r4, #172]
	ldrh	ip, [r0, #60]
	sub	r1, ip, #600
	strh	r1, [r0, #60]	@ movhi
	b	.L226
.L256:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r1, r0, asl #16
	sub	r2, r1, #65536
	mov	r1, r2, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L177
.L178:
	ldr	r7, [r4, #32]
	ldrh	r8, [r7, #4]
	sub	r5, r8, #400
	strh	r5, [r7, #4]	@ movhi
	ldr	r0, [r4, #32]
	ldrh	r6, [r0, #6]
	sub	lr, r6, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L176
.L257:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r6, r0, asl #16
	sub	r2, r6, #65536
	mov	r1, r2, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L180
.L181:
	ldr	r8, [r4, #36]
	ldrh	ip, [r8, #4]
	sub	r7, ip, #400
	strh	r7, [r8, #4]	@ movhi
	ldr	r0, [r4, #36]
	ldrh	r5, [r0, #6]
	sub	lr, r5, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L179
.L258:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r5, r0, asl #16
	sub	r2, r5, #65536
	mov	r1, r2, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L183
.L184:
	ldr	ip, [r4, #40]
	ldrh	r1, [ip, #4]
	sub	r8, r1, #400
	strh	r8, [ip, #4]	@ movhi
	ldr	r0, [r4, #40]
	ldrh	r7, [r0, #6]
	sub	lr, r7, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L182
.L259:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r8, r0, asl #16
	sub	r7, r8, #65536
	mov	r1, r7, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L285
.L188:
	ldr	r3, [r4, #44]
	ldrh	r5, [r3, #4]
	sub	r2, r5, #400
	strh	r2, [r3, #4]	@ movhi
	ldr	r1, [r4, #44]
	ldrh	r6, [r1, #6]
	sub	ip, r6, #400
	strh	ip, [r1, #6]	@ movhi
	b	.L186
.L250:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r6, r0, asl #16
	sub	r1, r6, #65536
	mov	r1, r1, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L159
.L160:
	ldr	ip, [r4, #8]
	ldrh	lr, [ip, #4]
	sub	r8, lr, #400
	strh	r8, [ip, #4]	@ movhi
	ldr	r7, [r4, #8]
	ldrh	r2, [r7, #6]
	sub	r5, r2, #400
	strh	r5, [r7, #6]	@ movhi
	b	.L158
.L251:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r5, r0, asl #16
	sub	r6, r5, #65536
	mov	r1, r6, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L162
.L163:
	ldr	lr, [r4, #12]
	ldrh	r0, [lr, #4]
	sub	ip, r0, #400
	strh	ip, [lr, #4]	@ movhi
	ldr	r8, [r4, #12]
	ldrh	r2, [r8, #6]
	sub	r7, r2, #400
	strh	r7, [r8, #6]	@ movhi
	b	.L161
.L265:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r2, r3, #65536
	mov	r1, r2, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L196
.L197:
	ldr	r3, [r4, #132]
	ldrh	r2, [r3, #4]
	sub	r1, r2, #400
	strh	r1, [r3, #4]	@ movhi
	ldr	ip, [r4, #132]
	ldrh	r0, [ip, #6]
	sub	lr, r0, #400
	strh	lr, [ip, #6]	@ movhi
	b	.L195
.L266:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r1, r0, asl #16
	sub	ip, r1, #65536
	mov	r1, ip, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L199
.L200:
	ldr	ip, [r4, #136]
	ldrh	r1, [ip, #4]
	sub	r2, r1, #400
	strh	r2, [ip, #4]	@ movhi
	ldr	r0, [r4, #136]
	ldrh	r3, [r0, #6]
	sub	lr, r3, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L198
.L252:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r7, r0, asl #16
	sub	r5, r7, #65536
	mov	r1, r5, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L165
.L166:
	ldr	r0, [r4, #16]
	ldrh	r1, [r0, #4]
	sub	lr, r1, #400
	strh	lr, [r0, #4]	@ movhi
	ldr	ip, [r4, #16]
	ldrh	r2, [ip, #6]
	sub	r8, r2, #400
	strh	r8, [ip, #6]	@ movhi
	b	.L164
.L253:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r8, r0, asl #16
	sub	r7, r8, #65536
	mov	r1, r7, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L168
.L169:
	ldr	r1, [r4, #20]
	ldrh	r6, [r1, #4]
	sub	r0, r6, #400
	strh	r0, [r1, #4]	@ movhi
	ldr	lr, [r4, #20]
	ldrh	r2, [lr, #6]
	sub	ip, r2, #400
	strh	ip, [lr, #6]	@ movhi
	b	.L167
.L254:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	ip, r0, asl #16
	sub	r8, ip, #65536
	mov	r1, r8, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L171
.L172:
	ldr	r6, [r4, #24]
	ldrh	r5, [r6, #4]
	sub	r1, r5, #400
	strh	r1, [r6, #4]	@ movhi
	ldr	r0, [r4, #24]
	ldrh	r2, [r0, #6]
	sub	lr, r2, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L170
.L255:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r2, r0, asl #16
	sub	ip, r2, #65536
	mov	r1, ip, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L174
.L175:
	ldr	r5, [r4, #28]
	ldrh	r7, [r5, #4]
	sub	r6, r7, #400
	strh	r6, [r5, #4]	@ movhi
	ldr	r0, [r4, #28]
	ldrh	r1, [r0, #6]
	sub	lr, r1, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L173
.L267:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r0, r3, #65536
	mov	r1, r0, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L202
.L203:
	ldr	r0, [r4, #140]
	ldrh	r3, [r0, #4]
	sub	r1, r3, #400
	strh	r1, [r0, #4]	@ movhi
	ldr	ip, [r4, #140]
	ldrh	r2, [ip, #6]
	sub	lr, r2, #400
	strh	lr, [ip, #6]	@ movhi
	b	.L201
.L268:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r2, r0, asl #16
	sub	ip, r2, #65536
	mov	r1, ip, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L205
.L206:
	ldr	r3, [r4, #144]
	ldrh	r2, [r3, #4]
	sub	ip, r2, #400
	strh	ip, [r3, #4]	@ movhi
	ldr	r1, [r4, #144]
	ldrh	r0, [r1, #6]
	sub	lr, r0, #400
	strh	lr, [r1, #6]	@ movhi
	b	.L204
.L288:
	.align	2
.L287:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR0+52
	.word	g_Input
.L269:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	ip, r0, asl #16
	sub	r1, ip, #65536
	mov	r1, r1, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L208
.L209:
	ldr	r1, [r4, #148]
	ldrh	ip, [r1, #4]
	sub	r2, ip, #400
	strh	r2, [r1, #4]	@ movhi
	ldr	r0, [r4, #148]
	ldrh	r3, [r0, #6]
	sub	lr, r3, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L207
.L270:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r0, r3, #65536
	mov	r1, r0, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L211
.L212:
	ldr	r0, [r4, #152]
	ldrh	r3, [r0, #4]
	sub	ip, r3, #400
	strh	ip, [r0, #4]	@ movhi
	ldr	r1, [r4, #152]
	ldrh	r2, [r1, #6]
	sub	lr, r2, #400
	strh	lr, [r1, #6]	@ movhi
	b	.L210
.L271:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r2, r0, asl #16
	sub	r1, r2, #65536
	mov	r1, r1, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L214
.L215:
	ldr	r3, [r4, #156]
	ldrh	r2, [r3, #4]
	sub	r1, r2, #400
	strh	r1, [r3, #4]	@ movhi
	ldr	ip, [r4, #156]
	ldrh	r0, [ip, #6]
	sub	lr, r0, #400
	strh	lr, [ip, #6]	@ movhi
	b	.L213
.L272:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r1, r0, asl #16
	sub	ip, r1, #65536
	mov	r1, ip, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L217
.L218:
	ldr	ip, [r4, #160]
	ldrh	r1, [ip, #4]
	sub	r2, r1, #400
	strh	r2, [ip, #4]	@ movhi
	ldr	r0, [r4, #160]
	ldrh	r3, [r0, #6]
	sub	lr, r3, #400
	strh	lr, [r0, #6]	@ movhi
	b	.L216
.L273:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r3, r0, asl #16
	sub	r0, r3, #65536
	mov	r1, r0, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L220
.L221:
	ldr	r0, [r4, #164]
	ldrh	r3, [r0, #4]
	sub	r1, r3, #400
	strh	r1, [r0, #4]	@ movhi
	ldr	ip, [r4, #164]
	ldrh	r2, [ip, #6]
	sub	lr, r2, #400
	strh	lr, [ip, #6]	@ movhi
	b	.L219
.L274:
	ldr	r0, .L287+12
	bl	_ZN6CInput8getLifesEv
	mov	r2, r0, asl #16
	sub	ip, r2, #65536
	mov	r1, ip, asr #16
	ldr	r0, .L287+12
	bl	_ZN6CInput8setLifesEs
	bl	_Z10BaconBlendv
	ldr	r0, .L287+12
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L286
.L223:
	ldr	r3, [r4, #168]
	ldrh	r2, [r3, #4]
	sub	ip, r2, #400
	strh	ip, [r3, #4]	@ movhi
	ldr	r1, [r4, #168]
	ldrh	r0, [r1, #6]
	sub	lr, r0, #400
	strh	lr, [r1, #6]	@ movhi
	b	.L222
.L281:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L229
.L282:
	ldr	r0, .L287+12
	bl	_ZN6CInput8playLifeEv
	b	.L194
.L284:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L227
.L283:
	ldr	r0, .L287+12
	bl	_ZN6CInput12playMaxiCoinEv
	b	.L225
.L217:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L218
.L214:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L215
.L211:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L212
.L208:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L209
.L286:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L223
.L220:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L221
.L180:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L181
.L177:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L178
.L162:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L163
.L159:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L160
.L285:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L188
.L183:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L184
.L205:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L206
.L202:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L203
.L174:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L175
.L171:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L172
.L168:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L169
.L165:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L166
.L199:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L200
.L196:
	ldr	r0, .L287+12
	bl	_ZN6CInput9playClashEv
	b	.L197
	.size	_Z17insertaObstaculosv, .-_Z17insertaObstaculosv
	.section	.text._Z5ciclov,"ax",%progbits
	.align	2
	.global	_Z5ciclov
	.hidden	_Z5ciclov
	.type	_Z5ciclov, %function
_Z5ciclov:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r0, .L299
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	bne	.L296
.L290:
	ldr	r6, .L299+4
	ldr	r7, .L299+8
	ldr	r4, .L299+12
	ldr	r5, .L299+16
	b	.L295
.L291:
	ldrb	r8, [r6, #12]	@ zero_extendqisi2
	cmp	r8, #0
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}
.L298:
	bl	s3eDeviceBacklightOn
	ldr	r0, .L299
	bl	_ZN6CInput11updateSoundEv
	mov	r0, r8
	bl	s3eDeviceYield
	bl	s3eTimerGetMs
	bl	_Z11BaconUpdatev
	bl	_Z11FondoUpdatev
	mov	r0, #3
	ldr	r3, [r7, #28]
	blx	r3
	ldr	r0, [r4, #0]
	ldr	r2, [r0, #0]
	bic	ip, r2, #2048
	str	ip, [r0, #0]
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #0]
	bic	r0, r1, #4096
	str	r0, [r3, #0]
	ldr	ip, [r4, #0]
	ldr	r2, [ip, #0]
	bic	r1, r2, #8192
	str	r1, [ip, #0]
	ldr	r3, [r4, #0]
	ldr	r0, [r3, #0]
	bic	ip, r0, #16384
	str	ip, [r3, #0]
	bl	_Z11FondoRenderv
	bl	_Z16LifeStatusRenderv
	bl	_Z11BaconRenderv
	bl	_Z17insertaObstaculosv
	ldr	r0, [r5, #0]
	bl	_ZN14spritesManager6renderEv
	ldr	r0, [r5, #176]
	bl	_ZN8Chuletas6renderEv
	ldr	r0, [r5, #172]
	bl	_ZN4Tank6renderEv
	ldr	r1, [r4, #0]
	ldr	r2, [r1, #0]
	orr	r0, r2, #2048
	str	r0, [r1, #0]
	ldr	r3, [r4, #0]
	ldr	ip, [r3, #0]
	orr	r1, ip, #4096
	str	r1, [r3, #0]
	ldr	r0, [r4, #0]
	ldr	r2, [r0, #0]
	orr	ip, r2, #8192
	str	ip, [r0, #0]
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #0]
	orr	r2, r1, #16384
	str	r2, [r3, #0]
	bl	_Z14FontLifeRenderv
	bl	_Z15FontCoinsRenderv
	bl	_Z9IwGxFlushv
	bl	_Z15IwGxSwapBuffersv
.L295:
	bl	s3eDeviceCheckQuitRequest
	cmp	r0, #0
	ldr	r0, .L299
	bne	.L297
	bl	_ZN6CInput8getLifesEv
	mov	r0, r0, asl #16
	cmp	r0, #0
	bgt	.L291
	bl	_Z8gameOverv
	ldrb	r8, [r6, #12]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L298
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L297:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L296:
	ldr	r0, .L299
	bl	_ZN6CInput8playSongEv
	b	.L290
.L300:
	.align	2
.L299:
	.word	g_Input
	.word	.LANCHOR1
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.word	.LANCHOR0
	.size	_Z5ciclov, .-_Z5ciclov
	.section	.text._Z4menuv,"ax",%progbits
	.align	2
	.global	_Z4menuv
	.hidden	_Z4menuv
	.type	_Z4menuv, %function
_Z4menuv:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #28
	bl	_Z8MenuInitv
	ldr	r0, .L334
	bl	_ZN6CInput7gameOffEv
	ldr	r5, .L334
	bl	_Z10MenuRenderv
	ldr	r8, .L334+4
	bl	_Z11MusicRenderv
.L330:
	ldr	r0, .L334
	bl	_ZN6CInput7getGameEv
	cmp	r0, #0
	bne	.L331
	bl	s3eTimerGetMs
	mov	r6, r0
	mov	r7, r1
	add	r4, r0, #40
	b	.L303
.L305:
	bl	s3eTimerGetMs
	subs	r0, r4, r0
	bmi	.L304
	bl	s3eDeviceYield
.L303:
	bl	s3eTimerGetMs
	mov	r2, r0
	mov	r3, r1
	subs	r2, r2, r6
	sbc	r3, r3, r7
	cmp	r3, #0
	cmpeq	r2, #39
	bls	.L305
.L304:
	ldr	r0, .L334
	bl	_ZNK6CInput13getTouchCountEv
	cmp	r0, #0
	beq	.L330
	ldr	r6, [r5, #4]
	ldr	r4, [r5, #8]
	sub	r6, r6, #500
	cmp	r6, #250
	movhi	r3, #0
	movls	r3, #1
	cmp	r4, #400
	movgt	r3, #0
	cmp	r3, #0
	beq	.L306
	cmp	r4, #199
	bgt	.L332
.L306:
	cmp	r6, r8
	movhi	r6, #0
	movls	r6, #1
	cmp	r4, #190
	movgt	r6, #0
	cmp	r6, #0
	beq	.L330
	cmp	r4, #9
	ble	.L330
	ldr	r0, .L334
	bl	_ZN6CInput6gameOnEv
	b	.L330
.L331:
	mov	r0, #255
	mov	r3, r0
	mov	r1, r0
	mov	r2, r0
	bl	_Z15IwGxSetColClearhhhh
	mov	r0, #128
	mov	r2, r0
	mov	r1, r0
	bl	_Z18IwGxPrintSetColourhhh
	ldr	r0, .L334
	bl	_ZN6CInput9initTimerEv
	ldr	r0, .L334
	bl	_ZN6CInput12setTotalTimeEv
	ldr	r0, .L334
	bl	_ZN6CInput17getAccelerometerYEv
	mov	r1, r0	@ float
	ldr	r0, .L334
	bl	_ZN6CInput11setPosInitYEf
	bl	_Z10SplashInitv
	ldr	r0, .L334+8
	bl	_Z12SplashUpdatePc
	bl	_Z12SplashRenderv
	bl	_Z12MenuShutDownv
	ldr	r1, .L334+12
	ldrb	r0, [r1, #0]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L333
.L309:
	bl	_Z14SplashShutDownv
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	_Z5ciclov
.L332:
	ldr	r0, .L334
	bl	_ZN6CInput8getSoundEv
	cmp	r0, #0
	beq	.L307
	bl	_Z13MusicShutDownv
	ldr	r0, .L334+16
	bl	_Z9MusicInitPc
	bl	_Z11MusicRenderv
	ldr	r0, .L334
	bl	_ZN6CInput8soundOffEv
	b	.L306
.L333:
	mov	r0, #88
	bl	_Znwj
	mov	r7, #0
	ldr	r8, .L334+20
	mvn	r3, #99	@ movhi
	mov	ip, #1	@ movhi
	mov	r4, #64	@ movhi
	ldr	r5, .L334+24
	mov	sl, #2	@ movhi
	mov	r6, #128	@ movhi
	mvn	r9, #149	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	str	r5, [r0, #72]
	strh	sl, [r0, #12]	@ movhi
	strh	r4, [r0, #76]	@ movhi
	strh	r4, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	ldr	r4, .L334+28
	mov	fp, r0
	bl	_ZN7sprites4initEv
	ldr	r0, .L334+32
	str	r0, [fp, #0]
	mov	r0, fp
	bl	_ZN9corazones4initEv
	str	fp, [r4, #4]
	mov	r0, #88
	bl	_Znwj
	ldr	fp, .L334+36
	mov	r2, #1	@ movhi
	mov	r1, #2	@ movhi
	mov	sl, #2	@ movhi
	strh	r2, [r0, #8]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	mov	r5, r0
	strh	r9, [r0, #4]	@ movhi
	str	fp, [r0, #72]
	strh	r6, [r0, #76]	@ movhi
	strh	r6, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	ldr	r6, .L334+40
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r5
	str	r6, [r5, #0]
	bl	_ZN5claws4initEv
	str	r5, [r4, #8]
	mov	r0, #88
	bl	_Znwj
	mov	r9, #128	@ movhi
	mvn	r3, #149	@ movhi
	mov	ip, #1	@ movhi
	mov	r5, r0
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	sl, [r0, #12]	@ movhi
	str	fp, [r0, #72]
	strh	r9, [r0, #76]	@ movhi
	strh	r9, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r5
	str	r6, [r5, #0]
	bl	_ZN5claws4initEv
	str	r5, [r4, #12]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mov	r3, #2	@ movhi
	mvn	r2, #149	@ movhi
	mov	r1, #1	@ movhi
	mvn	r9, #149	@ movhi
	mov	r5, #1	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	sl, r0
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	str	fp, [r0, #72]
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, sl
	str	r6, [sl, #0]
	bl	_ZN5claws4initEv
	str	sl, [r4, #16]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mov	r2, #2	@ movhi
	strh	r2, [r0, #12]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	sl, r0
	strh	r9, [r0, #4]	@ movhi
	strh	r5, [r0, #8]	@ movhi
	str	fp, [r0, #72]
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, sl
	str	r6, [sl, #0]
	bl	_ZN5claws4initEv
	str	sl, [r4, #20]
	mov	r0, #88
	bl	_Znwj
	mov	r5, #128	@ movhi
	mvn	r3, #149	@ movhi
	mov	ip, #1	@ movhi
	mov	r9, #2	@ movhi
	mov	sl, r0
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	r9, [r0, #12]	@ movhi
	str	fp, [r0, #72]
	strh	r5, [r0, #76]	@ movhi
	strh	r5, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, sl
	str	r6, [sl, #0]
	bl	_ZN5claws4initEv
	str	sl, [r4, #24]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mov	r3, #2	@ movhi
	mvn	r2, #149	@ movhi
	mov	r1, #1	@ movhi
	mvn	r5, #149	@ movhi
	mov	sl, #1	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	r9, r0
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	str	fp, [r0, #72]
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r9
	str	r6, [r9, #0]
	bl	_ZN5claws4initEv
	str	r9, [r4, #28]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mov	r2, #2	@ movhi
	strh	r2, [r0, #12]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	r9, r0
	strh	r5, [r0, #4]	@ movhi
	strh	sl, [r0, #8]	@ movhi
	str	fp, [r0, #72]
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r9
	str	r6, [r9, #0]
	bl	_ZN5claws4initEv
	str	r9, [r4, #32]
	mov	r0, #88
	bl	_Znwj
	mov	sl, #128	@ movhi
	mvn	r3, #149	@ movhi
	mov	ip, #1	@ movhi
	mov	r5, #2	@ movhi
	mov	r9, r0
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	str	fp, [r0, #72]
	strh	sl, [r0, #76]	@ movhi
	strh	sl, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r9
	str	r6, [r9, #0]
	bl	_ZN5claws4initEv
	str	r9, [r4, #36]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mov	r3, #2	@ movhi
	mvn	r2, #149	@ movhi
	mov	r1, #1	@ movhi
	mvn	sl, #149	@ movhi
	mov	r9, #1	@ movhi
	strh	r3, [r0, #12]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	r5, r0
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	str	fp, [r0, #72]
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r5
	str	r6, [r5, #0]
	bl	_ZN5claws4initEv
	str	r5, [r4, #40]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mov	r2, #2	@ movhi
	strh	r2, [r0, #12]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	r5, r0
	str	fp, [r0, #72]
	strh	sl, [r0, #4]	@ movhi
	strh	r9, [r0, #8]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, r5
	str	r6, [r5, #0]
	bl	_ZN5claws4initEv
	str	r5, [r4, #44]
	mov	r0, #88
	bl	_Znwj
	mov	r9, #128	@ movhi
	ldr	r3, .L334+44
	mvn	ip, #149	@ movhi
	mov	fp, #1	@ movhi
	mov	sl, #2	@ movhi
	str	r3, [r0, #72]
	strh	ip, [r0, #4]	@ movhi
	strh	fp, [r0, #8]	@ movhi
	strh	sl, [r0, #12]	@ movhi
	strh	r9, [r0, #76]	@ movhi
	strh	r9, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strb	r7, [r0, #14]
	mov	r5, r0
	ldr	fp, .L334+48
	bl	_ZN7sprites4initEv
	ldr	r9, .L334+52
	ldr	r2, .L334+56
	str	r2, [r5, #0]
	mov	r0, r5
	add	sl, r4, #52
	bl	_ZN4Coin4initEv
	str	r5, [r4, #48]
.L318:
	mov	r0, #88
	bl	_Znwj
	mov	r4, #64	@ movhi
	mvn	ip, #99	@ movhi
	mov	r2, #1	@ movhi
	mov	r1, #2	@ movhi
	mov	r6, #1
	mov	r5, r0
	strh	ip, [r0, #4]	@ movhi
	strh	r2, [r0, #8]	@ movhi
	strh	r1, [r0, #12]	@ movhi
	strb	r6, [r0, #14]
	strh	r4, [r0, #76]	@ movhi
	strh	r4, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	mov	r0, r5
	str	r9, [r5, #0]
	bl	_ZN8MiniCoin4initEv
	str	r5, [sl, r7]
	mov	r0, #88
	bl	_Znwj
	mov	r6, #64	@ movhi
	mvn	r3, #99	@ movhi
	mov	ip, #1	@ movhi
	mov	r2, #2	@ movhi
	mov	r1, #1
	mvn	r5, #99	@ movhi
	mov	r4, r0
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	r2, [r0, #12]	@ movhi
	strb	r1, [r0, #14]
	strh	r6, [r0, #76]	@ movhi
	strh	r6, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	add	r6, r7, #4
	mov	r0, r4
	str	r9, [r4, #0]
	bl	_ZN8MiniCoin4initEv
	str	r4, [sl, r6]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #64	@ movhi
	mov	r2, #1
	mov	r3, #1	@ movhi
	mov	ip, #2	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	strb	r2, [r0, #14]
	mov	r4, r0
	strh	r3, [r0, #8]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	str	r8, [r0, #0]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	add	r5, r6, #4
	mov	r0, r4
	str	r9, [r4, #0]
	bl	_ZN8MiniCoin4initEv
	str	r4, [sl, r5]
	mov	r0, #88
	bl	_Znwj
	mov	r4, #1
	mov	ip, #64	@ movhi
	mvn	r3, #99	@ movhi
	mov	r5, #2
	mov	r6, r0
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r4, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [r6, #0]
	add	r2, r7, #12
	mov	r0, r6
	add	r7, r7, #16
	str	r2, [sp, #20]
	bl	_ZN8MiniCoin4initEv
	ldr	r1, [sp, #20]
	cmp	r7, #80
	str	r6, [sl, r1]
	ldr	r6, .L334+28
	bne	.L318
	mov	r0, #88
	bl	_Znwj
	mov	r7, #0
	ldr	fp, .L334+60
	mvn	ip, #149	@ movhi
	mov	r9, #128	@ movhi
	strh	ip, [r0, #4]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	strh	r9, [r0, #76]	@ movhi
	strh	r9, [r0, #78]	@ movhi
	ldr	r9, .L334+64
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #132]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mvn	r2, #149	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #136]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mvn	r3, #149	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #140]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mvn	r2, #149	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #144]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mvn	r3, #149	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #148]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mvn	r2, #149	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #152]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mvn	r3, #149	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #156]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mvn	r2, #149	@ movhi
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #160]
	mov	r0, #88
	bl	_Znwj
	mov	ip, #128	@ movhi
	mvn	r3, #149	@ movhi
	strh	r3, [r0, #4]	@ movhi
	strh	ip, [r0, #76]	@ movhi
	strh	ip, [r0, #78]	@ movhi
	mov	sl, r0
	str	r8, [r0, #0]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	str	fp, [r0, #72]
	bl	_ZN7sprites4initEv
	str	r9, [sl, #0]
	mov	r0, sl
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #164]
	mov	r0, #88
	bl	_Znwj
	mov	r1, #128	@ movhi
	mvn	r2, #149	@ movhi
	mov	sl, r0
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0, #76]	@ movhi
	strh	r1, [r0, #78]	@ movhi
	str	r8, [r0, #0]
	str	fp, [r0, #72]
	strh	r4, [r0, #8]	@ movhi
	strh	r5, [r0, #12]	@ movhi
	strb	r7, [r0, #14]
	bl	_ZN7sprites4initEv
	mov	r0, sl
	str	r9, [sl, #0]
	bl	_ZN3Tnt4initEv
	str	sl, [r6, #168]
	mov	r0, #108
	bl	_Znwj
	mov	r1, r7
	mov	r2, #108
	mov	r8, r0
	bl	memset
	ldr	ip, .L334+68
	mov	r2, #256
	ldr	r3, .L334+72
	str	r3, [r8, #0]
	mov	r0, r8
	str	ip, [sp, #0]
	mov	r3, r2
	str	r8, [r6, #172]
	ldr	r1, .L334+76
	stmib	sp, {r4, r5, r7}	@ phole stm
	bl	_ZN4Tank4InitEPcsssssb
	mov	r0, #108
	bl	_Znwj
	mov	r1, r7
	mov	r2, #108
	mov	r8, r0
	bl	memset
	mov	r2, #512
	ldr	r0, .L334+80
	str	r0, [r8, #0]
	ldr	ip, .L334+84
	str	r8, [r6, #176]
	mov	r0, r8
	ldr	r1, .L334+88
	mov	r3, r2
	str	ip, [sp, #0]
	stmib	sp, {r4, r5, r7}	@ phole stm
	bl	_ZN8Chuletas4InitEPcsssssb
	b	.L309
.L307:
	bl	_Z13MusicShutDownv
	ldr	r0, .L334+92
	bl	_Z9MusicInitPc
	bl	_Z11MusicRenderv
	ldr	r0, .L334
	bl	_ZN6CInput7soundOnEv
	b	.L306
.L335:
	.align	2
.L334:
	.word	g_Input
	.word	770
	.word	.LC5
	.word	.LANCHOR1
	.word	.LC3
	.word	_ZTV7sprites+8
	.word	.LC6
	.word	.LANCHOR0
	.word	_ZTV9corazones+8
	.word	.LC7
	.word	_ZTV5claws+8
	.word	.LC8
	.word	.LC9
	.word	_ZTV8MiniCoin+8
	.word	_ZTV4Coin+8
	.word	.LC10
	.word	_ZTV3Tnt+8
	.word	-300
	.word	_ZTV4Tank+8
	.word	.LC11
	.word	_ZTV8Chuletas+8
	.word	-600
	.word	.LC12
	.word	.LC4
	.size	_Z4menuv, .-_Z4menuv
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bl	_Z8IwGxInitv
	bl	_Z8Iw2DInitv
	mov	r0, #0
	bl	time
	bl	srand
	ldr	r4, .L377
	ldr	r0, .L377+4
	bl	_ZN6CInput4InitEv
	bl	_Z14LifeStatusInitv
	bl	_Z8FontInitv
	bl	_Z9FondoInitv
	bl	_Z9BaconInitv
	ldr	r0, .L377+8
	bl	_Z9MusicInitPc
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L337
	mov	r5, #0
.L366:
	strb	r5, [r4, #12]
	bl	_Z4menuv
	ldrb	r0, [r4, #12]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L366
.L337:
	ldr	r4, .L377+12
	ldmia	r4, {r0, r1}	@ phole ldm
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L339
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L339:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #8]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L340
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #20]
	blx	r5
.L340:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #132]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #132]
	cmp	r0, #0
	beq	.L341
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L341:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #12]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L342
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L342:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #136]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #136]
	cmp	r0, #0
	beq	.L343
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L343:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #16]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #16]
	cmp	r0, #0
	beq	.L344
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #20]
	blx	r5
.L344:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #140]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #140]
	cmp	r0, #0
	beq	.L345
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L345:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #20]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L346
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L346:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #144]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #144]
	cmp	r0, #0
	beq	.L347
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L347:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #24]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #24]
	cmp	r0, #0
	beq	.L348
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #20]
	blx	r5
.L348:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #148]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #148]
	cmp	r0, #0
	beq	.L349
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L349:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #28]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.L350
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L350:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #152]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #152]
	cmp	r0, #0
	beq	.L351
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L351:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #32]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.L352
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #20]
	blx	r5
.L352:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #156]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #156]
	cmp	r0, #0
	beq	.L353
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L353:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #36]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #36]
	cmp	r0, #0
	beq	.L354
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L354:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #160]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #160]
	cmp	r0, #0
	beq	.L355
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L355:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #40]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #40]
	cmp	r0, #0
	beq	.L356
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #20]
	blx	r5
.L356:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #164]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #164]
	cmp	r0, #0
	beq	.L357
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L357:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #44]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #44]
	cmp	r0, #0
	beq	.L358
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L358:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #168]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #168]
	cmp	r0, #0
	beq	.L359
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #20]
	blx	r1
.L359:
	ldr	r5, .L377+16
	mov	r6, #0
.L361:
	ldr	r0, [r4, #0]
	ldr	r1, [r5, r6]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.L360
	ldr	ip, [r0, #0]
	ldr	r7, [ip, #20]
	blx	r7
.L360:
	add	r6, r6, #4
	ldr	r0, [r4, #0]
	ldr	r1, [r5, r6]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r5, r6]
	cmp	r0, #0
	beq	.L369
	ldr	r7, [r0, #0]
	ldr	r2, [r7, #20]
	blx	r2
.L369:
	add	r7, r6, #4
	ldr	r0, [r4, #0]
	ldr	r1, [r5, r7]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L371
	ldr	r3, [r0, #0]
	ldr	ip, [r3, #20]
	blx	ip
.L371:
	add	r7, r6, #8
	ldr	r0, [r4, #0]
	ldr	r1, [r5, r7]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r5, r7]
	cmp	r0, #0
	beq	.L373
	ldr	lr, [r0, #0]
	ldr	r1, [lr, #20]
	blx	r1
.L373:
	add	r6, r6, #12
	cmp	r6, #80
	bne	.L361
	ldr	r0, [r4, #172]
	cmp	r0, #0
	beq	.L362
	ldr	r6, [r0, #0]
	ldr	r5, [r6, #4]
	blx	r5
.L362:
	ldr	r0, [r4, #0]
	ldr	r1, [r4, #48]
	bl	_ZN14spritesManager12removeSpriteEP7sprites
	ldr	r0, [r4, #48]
	cmp	r0, #0
	beq	.L363
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #20]
	blx	r3
.L363:
	ldr	r0, [r4, #176]
	cmp	r0, #0
	beq	.L364
	ldr	r1, [r0, #0]
	ldr	r4, [r1, #4]
	blx	r4
.L364:
	ldr	r0, .L377+4
	bl	_ZN6CInput7ReleaseEv
	bl	_Z13FondoShutDownv
	bl	_Z13BaconShutDownv
	bl	_Z12FontShutDownv
	bl	_Z14SplashShutDownv
	bl	_Z18LifeStatusShutDownv
	bl	_Z17IwGxFontTerminatev
	bl	_Z13IwGxTerminatev
	bl	_Z13Iw2DTerminatev
	mov	r0, #0
	bl	s3eDeviceExit
.L378:
	.align	2
.L377:
	.word	.LANCHOR1
	.word	g_Input
	.word	.LC4
	.word	.LANCHOR0
	.word	.LANCHOR0+52
	.size	main, .-main
	.hidden	g_ButtonsHead
	.global	g_ButtonsHead
	.hidden	g_ButtonsTail
	.global	g_ButtonsTail
	.hidden	g_Cursorkey
	.global	g_Cursorkey
	.hidden	spriteManager
	.global	spriteManager
	.hidden	probObs
	.global	probObs
	.hidden	num
	.global	num
	.hidden	size
	.global	size
	.hidden	part
	.global	part
	.hidden	corazon
	.global	corazon
	.hidden	garras
	.global	garras
	.hidden	tnts
	.global	tnts
	.hidden	maxiCoin
	.global	maxiCoin
	.hidden	miniCoins
	.global	miniCoins
	.hidden	tank
	.global	tank
	.hidden	tankStep
	.global	tankStep
	.hidden	chuletas
	.global	chuletas
	.hidden	chuletasStep
	.global	chuletasStep
	.hidden	menuB
	.global	menuB
	.hidden	initMenu
	.global	initMenu
	.hidden	obstaclesTimer
	.global	obstaclesTimer
	.hidden	ProbRuleta
	.global	ProbRuleta
	.hidden	_ZTV4Tank
	.weak	_ZTV4Tank
	.section	.rodata._ZTV4Tank,"aG",%progbits,_ZTV4Tank,comdat
	.align	3
	.type	_ZTV4Tank, %object
	.size	_ZTV4Tank, 16
_ZTV4Tank:
	.word	0
	.word	_ZTI4Tank
	.word	_ZN4TankD1Ev
	.word	_ZN4TankD0Ev
	.hidden	_ZTI4Tank
	.weak	_ZTI4Tank
	.section	.rodata._ZTI4Tank,"aG",%progbits,_ZTI4Tank,comdat
	.align	2
	.type	_ZTI4Tank, %object
	.size	_ZTI4Tank, 8
_ZTI4Tank:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS4Tank
	.hidden	_ZTS4Tank
	.weak	_ZTS4Tank
	.section	.rodata._ZTS4Tank,"aG",%progbits,_ZTS4Tank,comdat
	.align	2
	.type	_ZTS4Tank, %object
	.size	_ZTS4Tank, 6
_ZTS4Tank:
	.ascii	"4Tank\000"
	.hidden	_ZTV8Chuletas
	.weak	_ZTV8Chuletas
	.section	.rodata._ZTV8Chuletas,"aG",%progbits,_ZTV8Chuletas,comdat
	.align	3
	.type	_ZTV8Chuletas, %object
	.size	_ZTV8Chuletas, 16
_ZTV8Chuletas:
	.word	0
	.word	_ZTI8Chuletas
	.word	_ZN8ChuletasD1Ev
	.word	_ZN8ChuletasD0Ev
	.hidden	_ZTI8Chuletas
	.weak	_ZTI8Chuletas
	.section	.rodata._ZTI8Chuletas,"aG",%progbits,_ZTI8Chuletas,comdat
	.align	2
	.type	_ZTI8Chuletas, %object
	.size	_ZTI8Chuletas, 8
_ZTI8Chuletas:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS8Chuletas
	.hidden	_ZTS8Chuletas
	.weak	_ZTS8Chuletas
	.section	.rodata._ZTS8Chuletas,"aG",%progbits,_ZTS8Chuletas,comdat
	.align	2
	.type	_ZTS8Chuletas, %object
	.size	_ZTS8Chuletas, 10
_ZTS8Chuletas:
	.ascii	"8Chuletas\000"
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	initMenu, %object
	.size	initMenu, 1
initMenu:
	.byte	1
	.space	3
	.type	chuletasStep, %object
	.size	chuletasStep, 4
chuletasStep:
	.word	2
	.type	tankStep, %object
	.size	tankStep, 4
tankStep:
	.word	2
	.type	menuB, %object
	.size	menuB, 1
menuB:
	.byte	1
	.space	3
	.type	part, %object
	.size	part, 4
part:
	.word	1
	.type	ProbRuleta, %object
	.size	ProbRuleta, 4
ProbRuleta:
	.word	10
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"go\000"
	.space	1
.LC1:
	.ascii	"continue\000"
	.space	3
.LC2:
	.ascii	"http://www.facebook.com/Baconbb10\000"
	.space	2
.LC3:
	.ascii	"./textures/musicOf.jpg\000"
	.space	1
.LC4:
	.ascii	"./textures/musicOn.jpg\000"
	.space	1
.LC5:
	.ascii	"loading\000"
.LC6:
	.ascii	"corazones\000"
	.space	2
.LC7:
	.ascii	"claws\000"
	.space	2
.LC8:
	.ascii	"./textures/monedas200pts.png\000"
	.space	3
.LC9:
	.ascii	"coins\000"
	.space	2
.LC10:
	.ascii	"tnts\000"
	.space	3
.LC11:
	.ascii	"./textures/tank.png\000"
.LC12:
	.ascii	"./textures/chuletas.png\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	spriteManager, %object
	.size	spriteManager, 4
spriteManager:
	.space	4
	.type	corazon, %object
	.size	corazon, 4
corazon:
	.space	4
	.type	garras, %object
	.size	garras, 40
garras:
	.space	40
	.type	maxiCoin, %object
	.size	maxiCoin, 4
maxiCoin:
	.space	4
	.type	miniCoins, %object
	.size	miniCoins, 80
miniCoins:
	.space	80
	.type	tnts, %object
	.size	tnts, 40
tnts:
	.space	40
	.type	tank, %object
	.size	tank, 4
tank:
	.space	4
	.type	chuletas, %object
	.size	chuletas, 4
chuletas:
	.space	4
	.type	g_ButtonsHead, %object
	.size	g_ButtonsHead, 4
g_ButtonsHead:
	.space	4
	.type	g_ButtonsTail, %object
	.size	g_ButtonsTail, 4
g_ButtonsTail:
	.space	4
	.type	g_Cursorkey, %object
	.size	g_Cursorkey, 4
g_Cursorkey:
	.space	4
	.type	probObs, %object
	.size	probObs, 4
probObs:
	.space	4
	.type	num, %object
	.size	num, 4
num:
	.space	4
	.type	size, %object
	.size	size, 4
size:
	.space	4
	.type	obstaclesTimer, %object
	.size	obstaclesTimer, 4
obstaclesTimer:
	.space	4
	.hidden	_ZTV8Chuletas
	.hidden	_ZTV4Tank
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
