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
	.file	"Coin.cpp"
	.section	.text._ZN4CoinD1Ev,"axG",%progbits,_ZN4CoinD1Ev,comdat
	.align	2
	.weak	_ZN4CoinD1Ev
	.hidden	_ZN4CoinD1Ev
	.type	_ZN4CoinD1Ev, %function
_ZN4CoinD1Ev:
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
	.size	_ZN4CoinD1Ev, .-_ZN4CoinD1Ev
	.section	.text._ZN4Coin15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN4Coin15checkColisionesEv
	.hidden	_ZN4Coin15checkColisionesEv
	.type	_ZN4Coin15checkColisionesEv, %function
_ZN4Coin15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4Coin15checkColisionesEv, .-_ZN4Coin15checkColisionesEv
	.section	.text._ZN4Coin4initEv,"ax",%progbits
	.align	2
	.global	_ZN4Coin4initEv
	.hidden	_ZN4Coin4initEv
	.type	_ZN4Coin4initEv, %function
_ZN4Coin4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #80]
	bx	lr
	.size	_ZN4Coin4initEv, .-_ZN4Coin4initEv
	.section	.text._ZN4Coin4setYEs,"ax",%progbits
	.align	2
	.global	_ZN4Coin4setYEs
	.hidden	_ZN4Coin4setYEs
	.type	_ZN4Coin4setYEs, %function
_ZN4Coin4setYEs:
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
	.size	_ZN4Coin4setYEs, .-_ZN4Coin4setYEs
	.section	.text._ZN4Coin4setXEs,"ax",%progbits
	.align	2
	.global	_ZN4Coin4setXEs
	.hidden	_ZN4Coin4setXEs
	.type	_ZN4Coin4setXEs, %function
_ZN4Coin4setXEs:
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
	.size	_ZN4Coin4setXEs, .-_ZN4Coin4setXEs
	.section	.text._ZN4CoinD0Ev,"axG",%progbits,_ZN4CoinD0Ev,comdat
	.align	2
	.weak	_ZN4CoinD0Ev
	.hidden	_ZN4CoinD0Ev
	.type	_ZN4CoinD0Ev, %function
_ZN4CoinD0Ev:
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
	.size	_ZN4CoinD0Ev, .-_ZN4CoinD0Ev
	.section	.text._ZN4Coin6updateEv,"ax",%progbits
	.align	2
	.global	_ZN4Coin6updateEv
	.hidden	_ZN4Coin6updateEv
	.type	_ZN4Coin6updateEv, %function
_ZN4Coin6updateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN7sprites6updateEv
	ldr	r2, .L31
	ldrh	r3, [r4, #4]
	ldr	r1, [r2, #136]
	ldrh	ip, [r4, #6]
	rsb	r0, r1, r3
	mov	r1, r0, asl #16
	mov	r0, r1, lsr #16
	strh	r0, [r4, #4]	@ movhi
	ldr	r3, [r2, #136]
	ldrh	r1, [r4, #8]
	rsb	r2, r3, ip
	mov	ip, r2, asl #16
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
	ldmfd	sp!, {r4, pc}
.L32:
	.align	2
.L31:
	.word	g_Input
	.size	_ZN4Coin6updateEv, .-_ZN4Coin6updateEv
	.hidden	_ZTV4Coin
	.global	_ZTV4Coin
	.hidden	_ZTS4Coin
	.global	_ZTS4Coin
	.hidden	_ZTI4Coin
	.global	_ZTI4Coin
	.section	.rodata
	.align	3
	.type	_ZTV4Coin, %object
	.size	_ZTV4Coin, 32
_ZTV4Coin:
	.word	0
	.word	_ZTI4Coin
	.word	_ZN4Coin4initEv
	.word	_ZN4Coin6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.word	_ZN4CoinD1Ev
	.word	_ZN4CoinD0Ev
	.type	_ZTS4Coin, %object
	.size	_ZTS4Coin, 6
_ZTS4Coin:
	.ascii	"4Coin\000"
	.space	2
	.type	_ZTI4Coin, %object
	.size	_ZTI4Coin, 12
_ZTI4Coin:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS4Coin
	.word	_ZTI7sprites
	.hidden	_ZTV4Coin
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
