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
	.file	"MiniCoin.cpp"
	.section	.text._ZN8MiniCoinD1Ev,"axG",%progbits,_ZN8MiniCoinD1Ev,comdat
	.align	2
	.weak	_ZN8MiniCoinD1Ev
	.hidden	_ZN8MiniCoinD1Ev
	.type	_ZN8MiniCoinD1Ev, %function
_ZN8MiniCoinD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	str	r3, [r0, #0]
	bx	lr
.L4:
	.align	2
.L3:
	.word	_ZTV7sprites+8
	.size	_ZN8MiniCoinD1Ev, .-_ZN8MiniCoinD1Ev
	.section	.text._ZN8MiniCoin15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN8MiniCoin15checkColisionesEv
	.hidden	_ZN8MiniCoin15checkColisionesEv
	.type	_ZN8MiniCoin15checkColisionesEv, %function
_ZN8MiniCoin15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN8MiniCoin15checkColisionesEv, .-_ZN8MiniCoin15checkColisionesEv
	.section	.text._ZN8MiniCoin4initEv,"ax",%progbits
	.align	2
	.global	_ZN8MiniCoin4initEv
	.hidden	_ZN8MiniCoin4initEv
	.type	_ZN8MiniCoin4initEv, %function
_ZN8MiniCoin4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #80]
	bx	lr
	.size	_ZN8MiniCoin4initEv, .-_ZN8MiniCoin4initEv
	.section	.text._ZN8MiniCoin4setYEs,"ax",%progbits
	.align	2
	.global	_ZN8MiniCoin4setYEs
	.hidden	_ZN8MiniCoin4setYEs
	.type	_ZN8MiniCoin4setYEs, %function
_ZN8MiniCoin4setYEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [r0, #78]
	strh	r1, [r0, #34]	@ movhi
	add	r2, r1, ip
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	ldrh	ip, [r0, #4]
	ldrh	r2, [r0, #6]
	strh	r3, [r0, #30]	@ movhi
	strh	r2, [r0, #36]	@ movhi
	strh	ip, [r0, #28]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	ip, [r0, #24]	@ movhi
	strh	r1, [r0, #26]	@ movhi
	strh	r2, [r0, #32]	@ movhi
	strh	r3, [r0, #38]	@ movhi
	bx	lr
	.size	_ZN8MiniCoin4setYEs, .-_ZN8MiniCoin4setYEs
	.section	.text._ZN8MiniCoin4setXEs,"ax",%progbits
	.align	2
	.global	_ZN8MiniCoin4setXEs
	.hidden	_ZN8MiniCoin4setXEs
	.type	_ZN8MiniCoin4setXEs, %function
_ZN8MiniCoin4setXEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [r0, #76]
	strh	r1, [r0, #28]	@ movhi
	add	r3, r1, ip
	mov	r2, r3, asl #16
	mov	r3, r2, lsr #16
	ldrh	ip, [r0, #8]
	ldrh	r2, [r0, #10]
	strh	r2, [r0, #30]	@ movhi
	strh	ip, [r0, #34]	@ movhi
	strh	r3, [r0, #36]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	strh	r3, [r0, #6]	@ movhi
	strh	r1, [r0, #24]	@ movhi
	strh	ip, [r0, #26]	@ movhi
	strh	r3, [r0, #32]	@ movhi
	strh	r2, [r0, #38]	@ movhi
	bx	lr
	.size	_ZN8MiniCoin4setXEs, .-_ZN8MiniCoin4setXEs
	.section	.text._ZN8MiniCoinD0Ev,"axG",%progbits,_ZN8MiniCoinD0Ev,comdat
	.align	2
	.weak	_ZN8MiniCoinD0Ev
	.hidden	_ZN8MiniCoinD0Ev
	.type	_ZN8MiniCoinD0Ev, %function
_ZN8MiniCoinD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0, #0]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L24:
	.align	2
.L23:
	.word	_ZTV7sprites+8
	.size	_ZN8MiniCoinD0Ev, .-_ZN8MiniCoinD0Ev
	.section	.text._ZN8MiniCoin6updateEv,"ax",%progbits
	.align	2
	.global	_ZN8MiniCoin6updateEv
	.hidden	_ZN8MiniCoin6updateEv
	.type	_ZN8MiniCoin6updateEv, %function
_ZN8MiniCoin6updateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r1, #1
	mov	r4, r0
	bl	_ZN7sprites6updateEb
	cmp	r0, #0
	ldreq	r5, .L36
	bne	.L35
.L26:
	ldr	lr, [r5, #136]
	ldrh	ip, [r4, #4]
	ldrh	r2, [r4, #6]
	rsb	r0, lr, ip
	mov	r1, r0, asl #16
	mov	r0, r1, lsr #16
	strh	r0, [r4, #4]	@ movhi
	ldr	r3, [r5, #136]
	ldrh	r1, [r4, #8]
	rsb	lr, r3, r2
	mov	ip, lr, asl #16
	mov	r2, ip, lsr #16
	ldrh	r3, [r4, #10]
	strh	r0, [r4, #28]	@ movhi
	strh	r0, [r4, #24]	@ movhi
	strh	r3, [r4, #30]	@ movhi
	strh	r1, [r4, #34]	@ movhi
	strh	r2, [r4, #36]	@ movhi
	strh	r2, [r4, #6]	@ movhi
	strh	r1, [r4, #8]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	strh	r1, [r4, #26]	@ movhi
	strh	r2, [r4, #32]	@ movhi
	strh	r3, [r4, #38]	@ movhi
	mov	r0, #1
	ldmfd	sp!, {r3, r4, r5, pc}
.L35:
	ldrh	lr, [r4, #4]
	ldrh	ip, [r4, #6]
	ldr	r5, .L36
	sub	r0, lr, #400
	sub	r3, ip, #400
	strh	r0, [r4, #4]	@ movhi
	strh	r3, [r4, #6]	@ movhi
	mov	r0, r5
	bl	_ZN6CInput8getCoinsEv
	mov	r2, r0, asl #16
	add	r1, r2, #3276800
	mov	r1, r1, asr #16
	mov	r0, r5
	bl	_ZN6CInput8setCoinsEs
	b	.L26
.L37:
	.align	2
.L36:
	.word	g_Input
	.size	_ZN8MiniCoin6updateEv, .-_ZN8MiniCoin6updateEv
	.hidden	_ZTV8MiniCoin
	.global	_ZTV8MiniCoin
	.hidden	_ZTS8MiniCoin
	.global	_ZTS8MiniCoin
	.hidden	_ZTI8MiniCoin
	.global	_ZTI8MiniCoin
	.section	.rodata
	.align	3
	.type	_ZTV8MiniCoin, %object
	.size	_ZTV8MiniCoin, 32
_ZTV8MiniCoin:
	.word	0
	.word	_ZTI8MiniCoin
	.word	_ZN8MiniCoin4initEv
	.word	_ZN8MiniCoin6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.word	_ZN8MiniCoinD1Ev
	.word	_ZN8MiniCoinD0Ev
	.type	_ZTS8MiniCoin, %object
	.size	_ZTS8MiniCoin, 10
_ZTS8MiniCoin:
	.ascii	"8MiniCoin\000"
	.space	2
	.type	_ZTI8MiniCoin, %object
	.size	_ZTI8MiniCoin, 12
_ZTI8MiniCoin:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS8MiniCoin
	.word	_ZTI7sprites
	.hidden	_ZTV8MiniCoin
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
