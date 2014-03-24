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
	.file	"Splash.cpp"
	.section	.text._Z14SplashShutDownv,"ax",%progbits
	.align	2
	.global	_Z14SplashShutDownv
	.hidden	_Z14SplashShutDownv
	.type	_Z14SplashShutDownv, %function
_Z14SplashShutDownv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L8
	ldr	r0, [r4, #0]
	cmp	r0, #0
	beq	.L2
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #4]
	blx	r3
.L2:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L3
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
.L3:
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L4
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #4]
	blx	r3
.L4:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #4]
	blx	r1
	ldmfd	sp!, {r4, pc}
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	_Z14SplashShutDownv, .-_Z14SplashShutDownv
	.section	.text._GLOBAL__I_s_TextureM2,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_TextureM2, %function
_GLOBAL__I_s_TextureM2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_TextureM2, .-_GLOBAL__I_s_TextureM2
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_TextureM2(target1)
	.section	.text._Z12SplashRenderv,"ax",%progbits
	.align	2
	.global	_Z12SplashRenderv
	.hidden	_Z12SplashRenderv
	.type	_Z12SplashRenderv, %function
_Z12SplashRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L15
	ldr	r4, .L15+4
	mov	r0, #3
	ldr	r6, [r5, #28]
	blx	r6
	ldr	r3, [r4, #0]
	ldr	r6, .L15+8
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
	add	r0, r6, #16
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	ldr	r3, [r5, #16]
	mov	r1, #4
	add	r0, r6, #48
	mov	r2, #3
	blx	r3
	ldr	r3, [r4, #0]
	ldr	r1, [r3, #4]
	ands	r1, r1, #2048
	bne	.L13
	mov	r0, #4
	mov	lr, #1
	strb	lr, [r3, #1280]
	mov	r2, r0
	ldr	ip, [r5, #32]
	blx	ip
.L13:
	bl	_Z9IwGxFlushv
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z15IwGxSwapBuffersv
.L16:
	.align	2
.L15:
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.word	.LANCHOR0
	.size	_Z12SplashRenderv, .-_Z12SplashRenderv
	.section	.text._Z12SplashUpdatePc,"ax",%progbits
	.align	2
	.global	_Z12SplashUpdatePc
	.hidden	_Z12SplashUpdatePc
	.type	_Z12SplashUpdatePc, %function
_Z12SplashUpdatePc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	mov	r0, #96
	bl	_Znwj
	ldr	r4, .L26
	mov	r6, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r6, [r4, #0]
	ldr	r1, [r6, #0]
	mov	r0, r6
	ldr	r3, [r1, #36]
	ldr	r1, .L26+4
	blx	r3
	mov	r0, r5
	ldr	r1, .L26+8
	bl	strcmp
	cmp	r0, #0
	beq	.L23
	mov	r0, r5
	ldr	r1, .L26+12
	bl	strcmp
	cmp	r0, #0
	beq	.L24
	mov	r0, r5
	ldr	r1, .L26+16
	bl	strcmp
	cmp	r0, #0
	beq	.L25
	ldr	ip, [r4, #0]
	ldr	r2, [r4, #64]
	str	r2, [ip, #44]
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L23:
	ldr	r0, [r4, #12]
	ldr	lr, [r0, #0]
	ldr	ip, [lr, #64]
	blx	ip
	ldr	r0, [r4, #0]
	ldr	r2, [r4, #12]
	str	r2, [r0, #44]
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L25:
	ldr	r0, [r4, #4]
	ldr	lr, [r0, #0]
	ldr	r3, [lr, #64]
	blx	r3
	ldr	r1, [r4, #0]
	ldr	r0, [r4, #4]
	str	r0, [r1, #44]
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L24:
	ldr	r0, [r4, #8]
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #64]
	blx	r2
	ldr	r3, [r4, #0]
	ldr	r1, [r4, #8]
	str	r1, [r3, #44]
	mov	r0, #1
	ldmfd	sp!, {r4, r5, r6, pc}
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	_Z12SplashUpdatePc, .-_Z12SplashUpdatePc
	.section	.text._Z10SplashInitv,"ax",%progbits
	.align	2
	.global	_Z10SplashInitv
	.hidden	_Z10SplashInitv
	.type	_Z10SplashInitv, %function
_Z10SplashInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	flds	s14, .L38
	flds	s15, .L38+4
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r0, .L38+8
	ldr	r4, .L38+12
	ldrh	lr, [r0, #2]
	ldrh	r2, [r0, #0]
	ldrh	ip, [r4, #68]
	ldrh	r3, [r4, #70]
	mov	r0, #96
	strh	r2, [r4, #60]	@ movhi
	strh	ip, [r4, #52]	@ movhi
	strh	lr, [r4, #54]	@ movhi
	fsts	s14, [r4, #24]
	fsts	s15, [r4, #28]
	strh	ip, [r4, #48]	@ movhi
	strh	r2, [r4, #56]	@ movhi
	strh	lr, [r4, #62]	@ movhi
	fsts	s14, [r4, #16]
	fsts	s14, [r4, #20]
	fsts	s15, [r4, #32]
	fsts	s14, [r4, #36]
	fsts	s15, [r4, #40]
	fsts	s15, [r4, #44]
	strh	r3, [r4, #58]	@ movhi
	strh	r3, [r4, #50]	@ movhi
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #0]
	ldr	r1, [r5, #0]
	mov	r0, r5
	ldr	r3, [r1, #36]
	ldr	r1, .L38+16
	blx	r3
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	ldr	r1, .L38+20
	mov	r0, r5
	str	r5, [r4, #8]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	ldr	r1, .L38+24
	mov	r0, r5
	str	r5, [r4, #12]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r5
	ldr	r1, .L38+28
	str	r5, [r4, #4]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_ZN10CIwTexture12LoadFromFileEPKc
.L39:
	.align	2
.L38:
	.word	0
	.word	1065353216
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	_Z10SplashInitv, .-_Z10SplashInitv
	.hidden	s_TextureM2
	.global	s_TextureM2
	.hidden	s_TextureM2GO
	.global	s_TextureM2GO
	.hidden	s_TextureM2L
	.global	s_TextureM2L
	.hidden	s_TextureM2Continue
	.global	s_TextureM2Continue
	.hidden	anim_xym2
	.global	anim_xym2
	.hidden	s_MaterialM2
	.global	s_MaterialM2
	.hidden	cel_UVsM2
	.global	cel_UVsM2
	.hidden	animXLeftM2
	.global	animXLeftM2
	.hidden	animXRightM2
	.global	animXRightM2
	.hidden	animYTopM2
	.global	animYTopM2
	.hidden	animYBottomM2
	.global	animYBottomM2
	.data
	.align	1
	.set	.LANCHOR1,. + 0
	.type	animXRightM2, %object
	.size	animXRightM2, 2
animXRightM2:
	.short	1280
	.type	animYBottomM2, %object
	.size	animYBottomM2, 2
animYBottomM2:
	.short	768
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Material2\000"
	.space	2
.LC1:
	.ascii	"loading\000"
.LC2:
	.ascii	"go\000"
	.space	1
.LC3:
	.ascii	"continue\000"
	.space	3
.LC4:
	.ascii	"./textures/gameover.jpg\000"
.LC5:
	.ascii	"./textures/loading.jpg\000"
	.space	1
.LC6:
	.ascii	"./textures/final.jpg\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_MaterialM2, %object
	.size	s_MaterialM2, 4
s_MaterialM2:
	.space	4
	.type	s_TextureM2Continue, %object
	.size	s_TextureM2Continue, 4
s_TextureM2Continue:
	.space	4
	.type	s_TextureM2GO, %object
	.size	s_TextureM2GO, 4
s_TextureM2GO:
	.space	4
	.type	s_TextureM2L, %object
	.size	s_TextureM2L, 4
s_TextureM2L:
	.space	4
	.type	cel_UVsM2, %object
	.size	cel_UVsM2, 32
cel_UVsM2:
	.space	32
	.type	anim_xym2, %object
	.size	anim_xym2, 16
anim_xym2:
	.space	16
	.type	s_TextureM2, %object
	.size	s_TextureM2, 4
s_TextureM2:
	.space	4
	.type	animXLeftM2, %object
	.size	animXLeftM2, 2
animXLeftM2:
	.space	2
	.type	animYTopM2, %object
	.size	animYTopM2, 2
animYTopM2:
	.space	2
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
