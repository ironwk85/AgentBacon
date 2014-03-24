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
	.file	"LifeStatus.cpp"
	.section	.text._Z16LifeStatusUpdatev,"ax",%progbits
	.align	2
	.global	_Z16LifeStatusUpdatev
	.hidden	_Z16LifeStatusUpdatev
	.type	_Z16LifeStatusUpdatev, %function
_Z16LifeStatusUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.size	_Z16LifeStatusUpdatev, .-_Z16LifeStatusUpdatev
	.section	.text._GLOBAL__I_s_TextureLF,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_TextureLF, %function
_GLOBAL__I_s_TextureLF:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_TextureLF, .-_GLOBAL__I_s_TextureLF
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_TextureLF(target1)
	.section	.text._Z16LifeStatusRenderv,"ax",%progbits
	.align	2
	.global	_Z16LifeStatusRenderv
	.hidden	_Z16LifeStatusRenderv
	.type	_Z16LifeStatusRenderv, %function
_Z16LifeStatusRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L9
	ldr	r4, .L9+4
	ldr	r0, [r5, #0]
	bl	_Z15IwGxSetMaterialP11CIwMaterial
	add	r0, r5, #4
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	mov	r1, #4
	add	r0, r5, #36
	ldr	ip, [r4, #16]
	mov	r2, #3
	blx	ip
	ldr	r3, .L9+8
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
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_Z16LifeStatusRenderv, .-_Z16LifeStatusRenderv
	.section	.text._Z18LifeStatusShutDownv,"ax",%progbits
	.align	2
	.global	_Z18LifeStatusShutDownv
	.hidden	_Z18LifeStatusShutDownv
	.type	_Z18LifeStatusShutDownv, %function
_Z18LifeStatusShutDownv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L15
	ldr	r0, [r4, #52]
	cmp	r0, #0
	beq	.L12
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #4]
	blx	r3
.L12:
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L13
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
.L13:
	ldmfd	sp!, {r4, lr}
	b	_Z13IwGxTerminatev
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.size	_Z18LifeStatusShutDownv, .-_Z18LifeStatusShutDownv
	.section	.text._Z14LifeStatusInitv,"ax",%progbits
	.align	2
	.global	_Z14LifeStatusInitv
	.hidden	_Z14LifeStatusInitv
	.type	_Z14LifeStatusInitv, %function
_Z14LifeStatusInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8IwGxInitv
	flds	s14, .L27
	flds	s15, .L27+4
	ldr	r0, .L27+8
	ldr	r4, .L27+12
	ldrh	r3, [r0, #6]
	ldrh	ip, [r0, #0]
	ldrh	r1, [r0, #2]
	ldrh	r2, [r0, #4]
	mov	r0, #96
	strh	r3, [r4, #42]	@ movhi
	strh	r3, [r4, #50]	@ movhi
	strh	ip, [r4, #40]	@ movhi
	fsts	s14, [r4, #12]
	fsts	s15, [r4, #16]
	strh	ip, [r4, #36]	@ movhi
	fsts	s14, [r4, #4]
	fsts	s14, [r4, #8]
	fsts	s15, [r4, #20]
	fsts	s14, [r4, #24]
	fsts	s15, [r4, #28]
	fsts	s15, [r4, #32]
	strh	r1, [r4, #46]	@ movhi
	strh	r2, [r4, #48]	@ movhi
	strh	r1, [r4, #38]	@ movhi
	strh	r2, [r4, #44]	@ movhi
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #0]
	ldr	r2, [r5, #0]
	ldr	r1, .L27+16
	mov	r0, r5
	ldr	r5, [r2, #36]
	blx	r5
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r5
	ldr	r1, .L27+20
	str	r5, [r4, #52]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #52]
	ldr	ip, [r0, #0]
	ldr	r1, [ip, #64]
	blx	r1
	ldr	r3, [r4, #0]
	ldr	r2, [r4, #52]
	str	r2, [r3, #44]
	ldmfd	sp!, {r3, r4, r5, pc}
.L28:
	.align	2
.L27:
	.word	0
	.word	1065353216
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.size	_Z14LifeStatusInitv, .-_Z14LifeStatusInitv
	.hidden	s_TextureLF
	.global	s_TextureLF
	.hidden	anim_xyLF
	.global	anim_xyLF
	.hidden	s_MaterialLF
	.global	s_MaterialLF
	.hidden	cel_UVsLF
	.global	cel_UVsLF
	.hidden	animXLeftLF
	.global	animXLeftLF
	.hidden	animXRightLF
	.global	animXRightLF
	.hidden	animYTopLF
	.global	animYTopLF
	.hidden	animYBottomLF
	.global	animYBottomLF
	.data
	.align	1
	.set	.LANCHOR1,. + 0
	.type	animXLeftLF, %object
	.size	animXLeftLF, 2
animXLeftLF:
	.short	5
	.type	animYTopLF, %object
	.size	animYTopLF, 2
animYTopLF:
	.short	5
	.type	animXRightLF, %object
	.size	animXRightLF, 2
animXRightLF:
	.short	45
	.type	animYBottomLF, %object
	.size	animYBottomLF, 2
animYBottomLF:
	.short	93
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"lifeStatus\000"
	.space	1
.LC1:
	.ascii	"./textures/lifeStatus.png\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_MaterialLF, %object
	.size	s_MaterialLF, 4
s_MaterialLF:
	.space	4
	.type	cel_UVsLF, %object
	.size	cel_UVsLF, 32
cel_UVsLF:
	.space	32
	.type	anim_xyLF, %object
	.size	anim_xyLF, 16
anim_xyLF:
	.space	16
	.type	s_TextureLF, %object
	.size	s_TextureLF, 4
s_TextureLF:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
