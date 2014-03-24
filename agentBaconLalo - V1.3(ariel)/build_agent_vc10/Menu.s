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
	.file	"Menu.cpp"
	.section	.text._Z10MenuUpdatev,"ax",%progbits
	.align	2
	.global	_Z10MenuUpdatev
	.hidden	_Z10MenuUpdatev
	.type	_Z10MenuUpdatev, %function
_Z10MenuUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.size	_Z10MenuUpdatev, .-_Z10MenuUpdatev
	.section	.text._GLOBAL__I_s_TextureM,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_TextureM, %function
_GLOBAL__I_s_TextureM:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_TextureM, .-_GLOBAL__I_s_TextureM
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_TextureM(target1)
	.section	.text._Z10MenuRenderv,"ax",%progbits
	.align	2
	.global	_Z10MenuRenderv
	.hidden	_Z10MenuRenderv
	.type	_Z10MenuRenderv, %function
_Z10MenuRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L9
	ldr	r4, .L9+4
	mov	r0, #3
	ldr	r6, [r5, #28]
	blx	r6
	ldr	r3, [r4, #0]
	ldr	r6, .L9+8
	ldr	r0, [r3, #0]
	bic	r2, r0, #2048
	str	r2, [r3, #0]
	ldr	ip, [r4, #0]
	ldr	r1, [ip, #0]
	bic	r0, r1, #4096
	str	r0, [ip, #0]
	ldr	r3, [r4, #0]
	ldr	r2, [r3, #0]
	bic	r1, r2, #8192
	str	r1, [r3, #0]
	ldr	r0, [r4, #0]
	ldr	ip, [r0, #0]
	bic	r2, ip, #16384
	str	r2, [r0, #0]
	ldr	r0, [r6, #0]
	bl	_Z15IwGxSetMaterialP11CIwMaterial
	add	r0, r6, #4
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	ldr	r3, [r5, #16]
	mov	r1, #4
	add	r0, r6, #36
	mov	r2, #3
	blx	r3
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #4]
	ands	r1, r1, #2048
	bne	.L6
	mov	r0, #4
	mov	lr, #1
	strb	lr, [r3, #1280]
	mov	r2, r0
	ldr	ip, [r5, #32]
	blx	ip
.L6:
	bl	_Z9IwGxFlushv
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z15IwGxSwapBuffersv
.L10:
	.align	2
.L9:
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.word	.LANCHOR0
	.size	_Z10MenuRenderv, .-_Z10MenuRenderv
	.section	.text._Z12MenuShutDownv,"ax",%progbits
	.align	2
	.global	_Z12MenuShutDownv
	.hidden	_Z12MenuShutDownv
	.type	_Z12MenuShutDownv, %function
_Z12MenuShutDownv:
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
	.size	_Z12MenuShutDownv, .-_Z12MenuShutDownv
	.section	.text._Z8MenuInitv,"ax",%progbits
	.align	2
	.global	_Z8MenuInitv
	.hidden	_Z8MenuInitv
	.type	_Z8MenuInitv, %function
_Z8MenuInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8IwGxInitv
	flds	s14, .L27
	flds	s15, .L27+4
	ldr	r4, .L27+8
	ldr	r0, .L27+12
	ldrh	ip, [r4, #56]
	ldrh	r3, [r0, #2]
	ldrh	r2, [r0, #0]
	ldrh	r1, [r4, #58]
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
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.word	.LC1
	.size	_Z8MenuInitv, .-_Z8MenuInitv
	.hidden	s_TextureM
	.global	s_TextureM
	.hidden	anim_xym
	.global	anim_xym
	.hidden	s_MaterialM
	.global	s_MaterialM
	.hidden	cel_UVsM
	.global	cel_UVsM
	.hidden	animXLeftM
	.global	animXLeftM
	.hidden	animXRightM
	.global	animXRightM
	.hidden	animYTopM
	.global	animYTopM
	.hidden	animYBottomM
	.global	animYBottomM
	.data
	.align	1
	.set	.LANCHOR1,. + 0
	.type	animXRightM, %object
	.size	animXRightM, 2
animXRightM:
	.short	1280
	.type	animYBottomM, %object
	.size	animYBottomM, 2
animYBottomM:
	.short	768
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Material\000"
	.space	3
.LC1:
	.ascii	"./textures/menu.jpg\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_MaterialM, %object
	.size	s_MaterialM, 4
s_MaterialM:
	.space	4
	.type	cel_UVsM, %object
	.size	cel_UVsM, 32
cel_UVsM:
	.space	32
	.type	anim_xym, %object
	.size	anim_xym, 16
anim_xym:
	.space	16
	.type	s_TextureM, %object
	.size	s_TextureM, 4
s_TextureM:
	.space	4
	.type	animXLeftM, %object
	.size	animXLeftM, 2
animXLeftM:
	.space	2
	.type	animYTopM, %object
	.size	animYTopM, 2
animYTopM:
	.space	2
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
