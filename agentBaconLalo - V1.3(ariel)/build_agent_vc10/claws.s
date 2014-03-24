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
	.file	"claws.cpp"
	.section	.text._ZN5clawsD1Ev,"axG",%progbits,_ZN5clawsD1Ev,comdat
	.align	2
	.weak	_ZN5clawsD1Ev
	.hidden	_ZN5clawsD1Ev
	.type	_ZN5clawsD1Ev, %function
_ZN5clawsD1Ev:
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
	.size	_ZN5clawsD1Ev, .-_ZN5clawsD1Ev
	.section	.text._ZN5claws15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN5claws15checkColisionesEv
	.hidden	_ZN5claws15checkColisionesEv
	.type	_ZN5claws15checkColisionesEv, %function
_ZN5claws15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN5claws15checkColisionesEv, .-_ZN5claws15checkColisionesEv
	.section	.text._ZN5claws4initEv,"ax",%progbits
	.align	2
	.global	_ZN5claws4initEv
	.hidden	_ZN5claws4initEv
	.type	_ZN5claws4initEv, %function
_ZN5claws4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	str	r3, [r0, #80]
	bx	lr
	.size	_ZN5claws4initEv, .-_ZN5claws4initEv
	.section	.text._ZN5claws6updateEv,"ax",%progbits
	.align	2
	.global	_ZN5claws6updateEv
	.hidden	_ZN5claws6updateEv
	.type	_ZN5claws6updateEv, %function
_ZN5claws6updateEv:
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
	.size	_ZN5claws6updateEv, .-_ZN5claws6updateEv
	.section	.text._ZN5clawsD0Ev,"axG",%progbits,_ZN5clawsD0Ev,comdat
	.align	2
	.weak	_ZN5clawsD0Ev
	.hidden	_ZN5clawsD0Ev
	.type	_ZN5clawsD0Ev, %function
_ZN5clawsD0Ev:
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
	.size	_ZN5clawsD0Ev, .-_ZN5clawsD0Ev
	.section	.text._ZN5claws4setXEs,"ax",%progbits
	.align	2
	.global	_ZN5claws4setXEs
	.hidden	_ZN5claws4setXEs
	.type	_ZN5claws4setXEs, %function
_ZN5claws4setXEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN7sprites4setXEs
	.size	_ZN5claws4setXEs, .-_ZN5claws4setXEs
	.section	.text._ZN5claws4setYEs,"ax",%progbits
	.align	2
	.global	_ZN5claws4setYEs
	.hidden	_ZN5claws4setYEs
	.type	_ZN5claws4setYEs, %function
_ZN5claws4setYEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	_ZN7sprites4setYEs
	.size	_ZN5claws4setYEs, .-_ZN5claws4setYEs
	.hidden	_ZTV5claws
	.global	_ZTV5claws
	.hidden	_ZTS5claws
	.global	_ZTS5claws
	.hidden	_ZTI5claws
	.global	_ZTI5claws
	.section	.rodata
	.align	3
	.type	_ZTV5claws, %object
	.size	_ZTV5claws, 32
_ZTV5claws:
	.word	0
	.word	_ZTI5claws
	.word	_ZN5claws4initEv
	.word	_ZN5claws6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.word	_ZN5clawsD1Ev
	.word	_ZN5clawsD0Ev
	.type	_ZTS5claws, %object
	.size	_ZTS5claws, 7
_ZTS5claws:
	.ascii	"5claws\000"
	.space	1
	.type	_ZTI5claws, %object
	.size	_ZTI5claws, 12
_ZTI5claws:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS5claws
	.word	_ZTI7sprites
	.hidden	_ZTV5claws
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
