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
	.file	"corazones.cpp"
	.section	.text._ZN9corazonesD1Ev,"axG",%progbits,_ZN9corazonesD1Ev,comdat
	.align	2
	.weak	_ZN9corazonesD1Ev
	.hidden	_ZN9corazonesD1Ev
	.type	_ZN9corazonesD1Ev, %function
_ZN9corazonesD1Ev:
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
	.size	_ZN9corazonesD1Ev, .-_ZN9corazonesD1Ev
	.section	.text._ZN9corazones15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN9corazones15checkColisionesEv
	.hidden	_ZN9corazones15checkColisionesEv
	.type	_ZN9corazones15checkColisionesEv, %function
_ZN9corazones15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN9corazones15checkColisionesEv, .-_ZN9corazones15checkColisionesEv
	.section	.text._ZN9corazones4initEv,"ax",%progbits
	.align	2
	.global	_ZN9corazones4initEv
	.hidden	_ZN9corazones4initEv
	.type	_ZN9corazones4initEv, %function
_ZN9corazones4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #80]
	bx	lr
	.size	_ZN9corazones4initEv, .-_ZN9corazones4initEv
	.section	.text._ZN9corazones4setYEs,"ax",%progbits
	.align	2
	.global	_ZN9corazones4setYEs
	.hidden	_ZN9corazones4setYEs
	.type	_ZN9corazones4setYEs, %function
_ZN9corazones4setYEs:
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
	.size	_ZN9corazones4setYEs, .-_ZN9corazones4setYEs
	.section	.text._ZN9corazones4setXEs,"ax",%progbits
	.align	2
	.global	_ZN9corazones4setXEs
	.hidden	_ZN9corazones4setXEs
	.type	_ZN9corazones4setXEs, %function
_ZN9corazones4setXEs:
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
	.size	_ZN9corazones4setXEs, .-_ZN9corazones4setXEs
	.section	.text._ZN9corazonesD0Ev,"axG",%progbits,_ZN9corazonesD0Ev,comdat
	.align	2
	.weak	_ZN9corazonesD0Ev
	.hidden	_ZN9corazonesD0Ev
	.type	_ZN9corazonesD0Ev, %function
_ZN9corazonesD0Ev:
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
	.size	_ZN9corazonesD0Ev, .-_ZN9corazonesD0Ev
	.section	.text._ZN9corazones6updateEv,"ax",%progbits
	.align	2
	.global	_ZN9corazones6updateEv
	.hidden	_ZN9corazones6updateEv
	.type	_ZN9corazones6updateEv, %function
_ZN9corazones6updateEv:
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
	.size	_ZN9corazones6updateEv, .-_ZN9corazones6updateEv
	.hidden	_ZTV9corazones
	.global	_ZTV9corazones
	.hidden	_ZTS9corazones
	.global	_ZTS9corazones
	.hidden	_ZTI9corazones
	.global	_ZTI9corazones
	.section	.rodata
	.align	3
	.type	_ZTV9corazones, %object
	.size	_ZTV9corazones, 32
_ZTV9corazones:
	.word	0
	.word	_ZTI9corazones
	.word	_ZN9corazones4initEv
	.word	_ZN9corazones6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.word	_ZN9corazonesD1Ev
	.word	_ZN9corazonesD0Ev
	.type	_ZTS9corazones, %object
	.size	_ZTS9corazones, 11
_ZTS9corazones:
	.ascii	"9corazones\000"
	.space	1
	.type	_ZTI9corazones, %object
	.size	_ZTI9corazones, 12
_ZTI9corazones:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS9corazones
	.word	_ZTI7sprites
	.hidden	_ZTV9corazones
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
