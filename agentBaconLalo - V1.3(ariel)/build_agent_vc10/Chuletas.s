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
	.file	"Chuletas.cpp"
	.section	.text._ZN8Chuletas15checkColisionesEv,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas15checkColisionesEv
	.hidden	_ZN8Chuletas15checkColisionesEv
	.type	_ZN8Chuletas15checkColisionesEv, %function
_ZN8Chuletas15checkColisionesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN8Chuletas15checkColisionesEv, .-_ZN8Chuletas15checkColisionesEv
	.section	.text._ZN8Chuletas6updateEa,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas6updateEa
	.hidden	_ZN8Chuletas6updateEa
	.type	_ZN8Chuletas6updateEa, %function
_ZN8Chuletas6updateEa:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r1, r1, #1
	cmp	r1, #15
	ldrls	pc, [pc, r1, asl #2]
	b	.L4
.L21:
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L4
	.word	.L12
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L18
	.word	.L19
	.word	.L20
.L12:
	flds	s15, .L84
	flds	s13, .L84+4
	flds	s14, .L84+8
.L82:
	fsts	s15, [r0, #48]
	fsts	s13, [r0, #32]
	fsts	s14, [r0, #36]
	fsts	s13, [r0, #24]
	fsts	s15, [r0, #28]
	fsts	s15, [r0, #40]
	fsts	s15, [r0, #44]
	fsts	s14, [r0, #52]
.L25:
	ldr	r3, .L84+20
	ldrh	ip, [r0, #68]
	ldr	r1, [r3, #136]
	ldrh	r2, [r0, #60]
	rsb	ip, r1, ip
	mov	r1, ip, asl #16
	mov	ip, r1, lsr #16
	strh	ip, [r0, #68]	@ movhi
	ldr	r3, [r3, #136]
	ldrh	r1, [r0, #70]
	rsb	r2, r3, r2
	mov	r3, r2, asl #16
	mov	r2, r3, lsr #16
	ldrh	r3, [r0, #62]
	strh	r3, [r0, #14]	@ movhi
	strh	r1, [r0, #18]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	r2, [r0, #60]	@ movhi
	strh	r1, [r0, #70]	@ movhi
	strh	r3, [r0, #62]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	strh	r2, [r0, #16]	@ movhi
	strh	r3, [r0, #22]	@ movhi
	mov	r0, #1
	bx	lr
.L4:
	flds	s12, .L84+12
	flds	s13, .L84+4
	flds	s14, .L84+16
	flds	s15, .L84
.L81:
	fsts	s12, [r0, #32]
	fsts	s13, [r0, #44]
	fsts	s14, [r0, #48]
	fsts	s15, [r0, #36]
	fsts	s12, [r0, #24]
	fsts	s13, [r0, #28]
	fsts	s14, [r0, #40]
	fsts	s15, [r0, #52]
	b	.L25
.L5:
	flds	s14, .L84+4
	flds	s15, .L84
.L79:
	fsts	s14, [r0, #32]
	fsts	s15, [r0, #36]
	fsts	s14, [r0, #24]
	fsts	s14, [r0, #28]
	fsts	s15, [r0, #40]
	fsts	s14, [r0, #44]
	fsts	s15, [r0, #48]
	fsts	s15, [r0, #52]
	b	.L25
.L15:
	flds	s15, .L84+8
	flds	s13, .L84
	flds	s14, .L84+12
	b	.L82
.L16:
	flds	s14, .L84+8
	flds	s15, .L84+12
	b	.L79
.L17:
	flds	s14, .L84+12
	flds	s15, .L84+16
	b	.L79
.L18:
	flds	s12, .L84+4
	flds	s13, .L84+12
	flds	s14, .L84
	flds	s15, .L84+16
	b	.L81
.L13:
	flds	s15, .L84+12
	flds	s13, .L84+8
	flds	s14, .L84+16
.L80:
	fsts	s15, [r0, #36]
	fsts	s13, [r0, #44]
	fsts	s14, [r0, #48]
	fsts	s15, [r0, #24]
	fsts	s13, [r0, #28]
	fsts	s14, [r0, #40]
	fsts	s15, [r0, #52]
	fsts	s15, [r0, #32]
	b	.L25
.L14:
	flds	s12, .L84+4
	flds	s13, .L84+8
	flds	s14, .L84
	flds	s15, .L84+12
	b	.L81
.L20:
	flds	s15, .L84+12
	flds	s13, .L84+8
	flds	s14, .L84+16
	b	.L82
.L19:
	flds	s12, .L84
	flds	s13, .L84+12
	flds	s14, .L84+8
	flds	s15, .L84+16
	b	.L81
.L10:
	flds	s14, .L84
	flds	s15, .L84+8
	b	.L79
.L11:
	flds	s15, .L84+8
	flds	s13, .L84
	flds	s14, .L84+12
	b	.L80
.L6:
	flds	s15, .L84
	flds	s13, .L84+4
	flds	s14, .L84+8
	b	.L80
.L7:
	flds	s12, .L84+8
	flds	s13, .L84+4
	flds	s14, .L84+12
	flds	s15, .L84
	b	.L81
.L85:
	.align	2
.L84:
	.word	1048576000
	.word	0
	.word	1056964608
	.word	1061158912
	.word	1065353216
	.word	g_Input
	.size	_ZN8Chuletas6updateEa, .-_ZN8Chuletas6updateEa
	.section	.text._ZN8Chuletas4setYEs,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas4setYEs
	.hidden	_ZN8Chuletas4setYEs
	.type	_ZN8Chuletas4setYEs, %function
_ZN8Chuletas4setYEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [r0, #66]
	strh	r1, [r0, #18]	@ movhi
	add	r2, r1, ip
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	ldrh	ip, [r0, #68]
	ldrh	r2, [r0, #60]
	strh	r3, [r0, #14]	@ movhi
	strh	r2, [r0, #20]	@ movhi
	strh	ip, [r0, #12]	@ movhi
	strh	r1, [r0, #70]	@ movhi
	strh	r3, [r0, #62]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	strh	r2, [r0, #16]	@ movhi
	strh	r3, [r0, #22]	@ movhi
	bx	lr
	.size	_ZN8Chuletas4setYEs, .-_ZN8Chuletas4setYEs
	.section	.text._ZN8Chuletas4setXEs,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas4setXEs
	.hidden	_ZN8Chuletas4setXEs
	.type	_ZN8Chuletas4setXEs, %function
_ZN8Chuletas4setXEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [r0, #64]
	strh	r1, [r0, #12]	@ movhi
	add	r3, r1, ip
	mov	r2, r3, asl #16
	mov	r3, r2, lsr #16
	ldrh	ip, [r0, #70]
	ldrh	r2, [r0, #62]
	strh	r2, [r0, #14]	@ movhi
	strh	ip, [r0, #18]	@ movhi
	strh	r3, [r0, #20]	@ movhi
	strh	r1, [r0, #68]	@ movhi
	strh	r3, [r0, #60]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	strh	r2, [r0, #22]	@ movhi
	bx	lr
	.size	_ZN8Chuletas4setXEs, .-_ZN8Chuletas4setXEs
	.section	.text._ZN8Chuletas6renderEv,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas6renderEv
	.hidden	_ZN8Chuletas6renderEv
	.type	_ZN8Chuletas6renderEv, %function
_ZN8Chuletas6renderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r0, [r0, #56]
	bl	_Z15IwGxSetMaterialP11CIwMaterial
	add	r0, r5, #24
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	ldr	r4, .L101
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	mov	r1, #4
	add	r0, r5, #8
	ldr	ip, [r4, #16]
	mov	r2, #3
	blx	ip
	ldr	r3, .L101+4
	ldr	r3, [r3, #0]
	ldr	r1, [r3, #4]
	ands	r1, r1, #2048
	ldmnefd	sp!, {r3, r4, r5, pc}
	mov	r0, #4
	mov	r2, #1
	strb	r2, [r3, #1280]
	mov	r2, r0
	ldr	r3, [r4, #32]
	blx	r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L102:
	.align	2
.L101:
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_ZN8Chuletas6renderEv, .-_ZN8Chuletas6renderEv
	.section	.text._ZN8Chuletas4InitEPcsssssb,"ax",%progbits
	.align	2
	.global	_ZN8Chuletas4InitEPcsssssb
	.hidden	_ZN8Chuletas4InitEPcsssssb
	.type	_ZN8Chuletas4InitEPcsssssb, %function
_ZN8Chuletas4InitEPcsssssb:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	flds	s14, .L116
	flds	s15, .L116+4
	ldrsh	lr, [sp, #24]
	ldrsh	ip, [sp, #28]
	add	r5, lr, r2
	add	r4, ip, r3
	mov	r7, r4, asl #16
	mov	r6, r5, asl #16
	mov	r4, r0
	mov	r5, r7, lsr #16
	ldrb	r0, [sp, #36]	@ zero_extendqisi2
	ldrsh	r7, [sp, #32]
	mov	r6, r6, lsr #16
	strh	lr, [r4, #12]	@ movhi
	fsts	s14, [r4, #32]
	fsts	s15, [r4, #36]
	strh	r2, [r4, #64]	@ movhi
	strh	lr, [r4, #68]	@ movhi
	strh	lr, [r4, #8]	@ movhi
	fsts	s14, [r4, #24]
	fsts	s14, [r4, #28]
	fsts	s15, [r4, #40]
	fsts	s14, [r4, #44]
	fsts	s15, [r4, #48]
	fsts	s15, [r4, #52]
	strh	r3, [r4, #66]	@ movhi
	strh	ip, [r4, #18]	@ movhi
	strh	ip, [r4, #70]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	strb	r0, [r4, #74]
	strh	r6, [r4, #20]	@ movhi
	strh	r5, [r4, #14]	@ movhi
	strh	r6, [r4, #60]	@ movhi
	strh	r5, [r4, #62]	@ movhi
	strh	r6, [r4, #16]	@ movhi
	strh	r5, [r4, #22]	@ movhi
	strh	r7, [r4, #72]	@ movhi
	mov	r0, #96
	mov	r6, r1
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #56]
	ldr	ip, [r5, #0]
	ldr	r1, .L116+8
	mov	r0, r5
	ldr	r5, [ip, #36]
	blx	r5
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r1, r6
	mov	r0, r5
	str	r5, [r4, #4]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #4]
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #64]
	blx	r3
	ldr	r2, [r4, #56]
	ldr	ip, [r4, #4]
	str	ip, [r2, #44]
	ldr	r0, [r4, #56]
	bl	_ZN11CIwMaterial10CreateAnimEv
	ldr	r3, [r4, #56]
	mov	ip, #16
	ldr	r1, [r3, #72]
	strb	ip, [r1, #2]
	ldr	r2, [r3, #72]
	ldrb	r0, [r2, #3]	@ zero_extendqisi2
	cmp	r0, #0
	streqb	ip, [r2, #3]
	ldr	r3, [r4, #56]
	mov	ip, #4
	ldr	r1, [r3, #72]
	strb	ip, [r1, #3]
	ldr	r2, [r3, #72]
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
	cmp	r0, #0
	streqb	ip, [r2, #2]
	ldr	r1, [r4, #56]
	ldrb	r2, [r4, #72]	@ zero_extendqisi2
	ldr	r0, [r1, #72]
	strb	r2, [r0, #1]
	strb	r2, [r0, #7]
	ldrb	r3, [r4, #74]	@ zero_extendqisi2
	cmp	r3, #0
	ldrne	r3, [r4, #56]
	ldrne	r3, [r3, #72]
	ldrneb	r2, [r3, #0]	@ zero_extendqisi2
	orrne	r2, r2, #1
	strneb	r2, [r3, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L117:
	.align	2
.L116:
	.word	0
	.word	1048576000
	.word	.LC0
	.size	_ZN8Chuletas4InitEPcsssssb, .-_ZN8Chuletas4InitEPcsssssb
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Cel\000"
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
