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
	.file	"Fondo.cpp"
	.section	.text._Z13FondoShutDownv,"ax",%progbits
	.align	2
	.global	_Z13FondoShutDownv
	.hidden	_Z13FondoShutDownv
	.type	_Z13FondoShutDownv, %function
_Z13FondoShutDownv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L6
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L2
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #4]
	blx	r3
.L2:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
	ldmfd	sp!, {r4, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.size	_Z13FondoShutDownv, .-_Z13FondoShutDownv
	.section	.text._GLOBAL__I_s_Texturef,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_Texturef, %function
_GLOBAL__I_s_Texturef:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_Texturef, .-_GLOBAL__I_s_Texturef
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_Texturef(target1)
	.section	.text._Z11FondoRenderv,"ax",%progbits
	.align	2
	.global	_Z11FondoRenderv
	.hidden	_Z11FondoRenderv
	.type	_Z11FondoRenderv, %function
_Z11FondoRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L13
	ldr	r4, .L13+4
	ldr	r0, [r5, #4]
	bl	_Z15IwGxSetMaterialP11CIwMaterial
	add	r0, r5, #8
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	mov	r1, #4
	add	r0, r5, #40
	ldr	ip, [r4, #16]
	mov	r2, #3
	blx	ip
	ldr	r3, .L13+8
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
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_Z11FondoRenderv, .-_Z11FondoRenderv
	.global	__aeabi_uidiv
	.section	.text._Z11FondoUpdatev,"ax",%progbits
	.align	2
	.global	_Z11FondoUpdatev
	.hidden	_Z11FondoUpdatev
	.type	_Z11FondoUpdatev, %function
_Z11FondoUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L19
	stmfd	sp!, {r4, lr}
	ldr	r0, .L19+4
	ldr	r4, [r1, #4]
	bl	_ZN6CInput11getVelocityEv
	ldr	r3, [r4, #72]
	and	r1, r0, #255
	strb	r1, [r3, #5]
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L16
	ldrh	r0, [r3, #32]
	bl	__aeabi_uidiv
	ldr	r3, [r4, #72]
	and	r0, r0, #255
	strb	r0, [r3, #3]
	ldr	ip, [r4, #72]
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	cmp	r2, #0
	streqb	r0, [ip, #2]
.L16:
	ldr	r0, .L19+4
	bl	_ZN6CInput7advanceEv
	cmp	r0, #0
	beq	.L17
	ldr	r0, .L19+4
	bl	_ZN6CInput11getVelocityEv
	sub	r1, r0, #500
	ldr	r0, .L19+4
	bl	_ZN6CInput11setVelocityEi
.L17:
	mov	r0, #1
	ldmfd	sp!, {r4, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	g_Input
	.size	_Z11FondoUpdatev, .-_Z11FondoUpdatev
	.section	.text._Z9FondoInitv,"ax",%progbits
	.align	2
	.global	_Z9FondoInitv
	.hidden	_Z9FondoInitv
	.type	_Z9FondoInitv, %function
_Z9FondoInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r0, .L32+12
	bl	_ZN6CInput16getSurfaceHeightEv
	ldr	r4, .L32+16
	flds	s15, .L32
	flds	s13, .L32+4
	flds	s14, .L32+8
	mov	r1, #0	@ movhi
	strh	r1, [r4, #40]	@ movhi
	strh	r1, [r4, #42]	@ movhi
	mov	r2, #1280	@ movhi
	mov	ip, #0	@ movhi
	mov	r3, #1280	@ movhi
	strh	r2, [r4, #48]	@ movhi
	mov	r5, #0	@ movhi
	fsts	s13, [r4, #32]
	fsts	s15, [r4, #16]
	fsts	s14, [r4, #20]
	fsts	s15, [r4, #8]
	fsts	s15, [r4, #12]
	fsts	s13, [r4, #24]
	fsts	s15, [r4, #28]
	fsts	s14, [r4, #36]
	strh	ip, [r4, #44]	@ movhi
	strh	r3, [r4, #52]	@ movhi
	strh	r5, [r4, #50]	@ movhi
	mov	r1, r0, asl #16
	mov	r2, r1, lsr #16
	strh	r2, [r4, #46]	@ movhi
	strh	r2, [r4, #54]	@ movhi
	mov	r0, #96
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #4]
	ldr	r3, [r5, #0]
	ldr	r1, .L32+20
	mov	r0, r5
	ldr	r5, [r3, #36]
	blx	r5
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r5
	ldr	r1, .L32+24
	str	r5, [r4, #0]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #0]
	ldr	ip, [r0, #0]
	ldr	r1, [ip, #64]
	blx	r1
	ldr	r0, [r4, #4]
	ldr	r2, [r4, #0]
	str	r2, [r0, #44]
	ldr	r0, [r4, #4]
	bl	_ZN11CIwMaterial10CreateAnimEv
	ldr	r0, .L32+12
	ldr	r4, [r4, #4]
	bl	_ZN6CInput11getVelocityEv
	ldr	r3, [r4, #72]
	and	r1, r0, #255
	strb	r1, [r3, #5]
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	ldrh	r0, [r3, #32]
	bl	__aeabi_uidiv
	ldr	r2, [r4, #72]
	and	r0, r0, #255
	strb	r0, [r2, #3]
	ldr	ip, [r4, #72]
	ldrb	r3, [ip, #2]	@ zero_extendqisi2
	cmp	r3, #0
	streqb	r0, [ip, #2]
	ldmfd	sp!, {r3, r4, r5, pc}
.L33:
	.align	2
.L32:
	.word	0
	.word	1056964608
	.word	1065353216
	.word	g_Input
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.size	_Z9FondoInitv, .-_Z9FondoInitv
	.hidden	s_Texturef
	.global	s_Texturef
	.hidden	anim_xyf
	.global	anim_xyf
	.hidden	scroll_UVs
	.global	scroll_UVs
	.hidden	s_MaterialScroll
	.global	s_MaterialScroll
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Scroll\000"
	.space	1
.LC1:
	.ascii	"./textures/fondo.jpg\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_Texturef, %object
	.size	s_Texturef, 4
s_Texturef:
	.space	4
	.type	s_MaterialScroll, %object
	.size	s_MaterialScroll, 4
s_MaterialScroll:
	.space	4
	.type	scroll_UVs, %object
	.size	scroll_UVs, 32
scroll_UVs:
	.space	32
	.type	anim_xyf, %object
	.size	anim_xyf, 16
anim_xyf:
	.space	16
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
