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
	.file	"Tnt.cpp"
	.section	.text._ZN3TntD1Ev,"axG",%progbits,_ZN3TntD1Ev,comdat
	.align	2
	.weak	_ZN3TntD1Ev
	.hidden	_ZN3TntD1Ev
	.type	_ZN3TntD1Ev, %function
_ZN3TntD1Ev:
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
	.size	_ZN3TntD1Ev, .-_ZN3TntD1Ev
	.section	.text._ZN3Tnt15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN3Tnt15checkColisionesEv
	.hidden	_ZN3Tnt15checkColisionesEv
	.type	_ZN3Tnt15checkColisionesEv, %function
_ZN3Tnt15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN3Tnt15checkColisionesEv, .-_ZN3Tnt15checkColisionesEv
	.section	.text._ZN3Tnt4initEv,"ax",%progbits
	.align	2
	.global	_ZN3Tnt4initEv
	.hidden	_ZN3Tnt4initEv
	.type	_ZN3Tnt4initEv, %function
_ZN3Tnt4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	str	r3, [r0, #80]
	bx	lr
	.size	_ZN3Tnt4initEv, .-_ZN3Tnt4initEv
	.section	.text._ZN3Tnt6updateEv,"ax",%progbits
	.align	2
	.global	_ZN3Tnt6updateEv
	.hidden	_ZN3Tnt6updateEv
	.type	_ZN3Tnt6updateEv, %function
_ZN3Tnt6updateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
	ldrh	ip, [r0, #4]
	ldr	r1, [r3, #136]
	ldrh	r2, [r0, #6]
	rsb	ip, r1, ip
	mov	r1, ip, asl #16
	mov	ip, r1, lsr #16
	strh	ip, [r0, #4]	@ movhi
	ldr	r3, [r3, #136]
	ldrh	r1, [r0, #8]
	rsb	r2, r3, r2
	mov	r3, r2, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [r0, #10]
	strh	r3, [r0, #30]	@ movhi
	strh	r1, [r0, #34]	@ movhi
	strh	r2, [r0, #36]	@ movhi
	strh	ip, [r0, #28]	@ movhi
	strh	r2, [r0, #6]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r3, [r0, #10]	@ movhi
	strh	ip, [r0, #24]	@ movhi
	strh	r1, [r0, #26]	@ movhi
	strh	r2, [r0, #32]	@ movhi
	strh	r3, [r0, #38]	@ movhi
	mov	r0, #1
	bx	lr
.L16:
	.align	2
.L15:
	.word	g_Input
	.size	_ZN3Tnt6updateEv, .-_ZN3Tnt6updateEv
	.section	.text._ZN3TntD0Ev,"axG",%progbits,_ZN3TntD0Ev,comdat
	.align	2
	.weak	_ZN3TntD0Ev
	.hidden	_ZN3TntD0Ev
	.type	_ZN3TntD0Ev, %function
_ZN3TntD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L19
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r3, [r0, #0]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L20:
	.align	2
.L19:
	.word	_ZTV7sprites+8
	.size	_ZN3TntD0Ev, .-_ZN3TntD0Ev
	.section	.text._ZN3Tnt4setXEs,"ax",%progbits
	.align	2
	.global	_ZN3Tnt4setXEs
	.hidden	_ZN3Tnt4setXEs
	.type	_ZN3Tnt4setXEs, %function
_ZN3Tnt4setXEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN7sprites4setXEs
	.size	_ZN3Tnt4setXEs, .-_ZN3Tnt4setXEs
	.section	.text._ZN3Tnt4setYEs,"ax",%progbits
	.align	2
	.global	_ZN3Tnt4setYEs
	.hidden	_ZN3Tnt4setYEs
	.type	_ZN3Tnt4setYEs, %function
_ZN3Tnt4setYEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN7sprites4setYEs
	.size	_ZN3Tnt4setYEs, .-_ZN3Tnt4setYEs
	.hidden	_ZTV3Tnt
	.global	_ZTV3Tnt
	.hidden	_ZTS3Tnt
	.global	_ZTS3Tnt
	.hidden	_ZTI3Tnt
	.global	_ZTI3Tnt
	.section	.rodata
	.align	3
	.type	_ZTV3Tnt, %object
	.size	_ZTV3Tnt, 32
_ZTV3Tnt:
	.word	0
	.word	_ZTI3Tnt
	.word	_ZN3Tnt4initEv
	.word	_ZN3Tnt6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.word	_ZN3TntD1Ev
	.word	_ZN3TntD0Ev
	.type	_ZTS3Tnt, %object
	.size	_ZTS3Tnt, 5
_ZTS3Tnt:
	.ascii	"3Tnt\000"
	.space	3
	.type	_ZTI3Tnt, %object
	.size	_ZTI3Tnt, 12
_ZTI3Tnt:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS3Tnt
	.word	_ZTI7sprites
	.hidden	_ZTV3Tnt
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
