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
	.file	"Musica.cpp"
	.section	.text._Z11MusicUpdatev,"ax",%progbits
	.align	2
	.global	_Z11MusicUpdatev
	.hidden	_Z11MusicUpdatev
	.type	_Z11MusicUpdatev, %function
_Z11MusicUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.size	_Z11MusicUpdatev, .-_Z11MusicUpdatev
	.section	.text._GLOBAL__I_s_TextureMusic,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_TextureMusic, %function
_GLOBAL__I_s_TextureMusic:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_TextureMusic, .-_GLOBAL__I_s_TextureMusic
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_TextureMusic(target1)
	.section	.text._Z11MusicRenderv,"ax",%progbits
	.align	2
	.global	_Z11MusicRenderv
	.hidden	_Z11MusicRenderv
	.type	_Z11MusicRenderv, %function
_Z11MusicRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
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
	bne	.L6
	mov	r2, #1
	mov	r0, #4
	strb	r2, [r3, #1280]
	mov	r2, r0
	ldr	r3, [r4, #32]
	blx	r3
.L6:
	bl	_Z9IwGxFlushv
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z15IwGxSwapBuffersv
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_Z11MusicRenderv, .-_Z11MusicRenderv
	.section	.text._Z13MusicShutDownv,"ax",%progbits
	.align	2
	.global	_Z13MusicShutDownv
	.hidden	_Z13MusicShutDownv
	.type	_Z13MusicShutDownv, %function
_Z13MusicShutDownv:
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
	.size	_Z13MusicShutDownv, .-_Z13MusicShutDownv
	.section	.text._Z9MusicInitPc,"ax",%progbits
	.align	2
	.global	_Z9MusicInitPc
	.hidden	_Z9MusicInitPc
	.type	_Z9MusicInitPc, %function
_Z9MusicInitPc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, r0
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
	mov	r1, r6
	str	r5, [r4, #52]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #52]
	ldr	ip, [r0, #0]
	ldr	r1, [ip, #64]
	blx	r1
	ldr	r3, [r4, #0]
	ldr	r2, [r4, #52]
	str	r2, [r3, #44]
	ldmfd	sp!, {r4, r5, r6, pc}
.L28:
	.align	2
.L27:
	.word	0
	.word	1065353216
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LC0
	.size	_Z9MusicInitPc, .-_Z9MusicInitPc
	.hidden	s_TextureMusic
	.global	s_TextureMusic
	.hidden	anim_xyMusic
	.global	anim_xyMusic
	.hidden	s_MaterialMusic
	.global	s_MaterialMusic
	.hidden	cel_UVsMusic
	.global	cel_UVsMusic
	.hidden	animXLeftMusic
	.global	animXLeftMusic
	.hidden	animXRightMusic
	.global	animXRightMusic
	.hidden	animYTopMusic
	.global	animYTopMusic
	.hidden	animYBottomMusic
	.global	animYBottomMusic
	.data
	.align	1
	.set	.LANCHOR1,. + 0
	.type	animXLeftMusic, %object
	.size	animXLeftMusic, 2
animXLeftMusic:
	.short	496
	.type	animYTopMusic, %object
	.size	animYTopMusic, 2
animYTopMusic:
	.short	212
	.type	animXRightMusic, %object
	.size	animXRightMusic, 2
animXRightMusic:
	.short	754
	.type	animYBottomMusic, %object
	.size	animYBottomMusic, 2
animYBottomMusic:
	.short	422
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"MusicMaterial\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_MaterialMusic, %object
	.size	s_MaterialMusic, 4
s_MaterialMusic:
	.space	4
	.type	cel_UVsMusic, %object
	.size	cel_UVsMusic, 32
cel_UVsMusic:
	.space	32
	.type	anim_xyMusic, %object
	.size	anim_xyMusic, 16
anim_xyMusic:
	.space	16
	.type	s_TextureMusic, %object
	.size	s_TextureMusic, 4
s_TextureMusic:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
