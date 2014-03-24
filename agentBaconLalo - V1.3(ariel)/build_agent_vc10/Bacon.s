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
	.file	"Bacon.cpp"
	.section	.text._Z12BaconCollidessss,"ax",%progbits
	.align	2
	.global	_Z12BaconCollidessss
	.hidden	_Z12BaconCollidessss
	.type	_Z12BaconCollidessss, %function
_Z12BaconCollidessss:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L13
	stmfd	sp!, {r4, r5}
	ldrh	r4, [ip, #0]
	add	r2, r2, #30
	mov	r4, r4, asl #16
	cmp	r1, r4, asr #16
	sub	r3, r3, #30
	blt	.L2
	ldrsh	r5, [ip, #2]
	cmp	r5, r1
	blt	.L2
	ldrsh	r1, [ip, #4]
	cmp	r2, r1
	bge	.L11
.L3:
	cmp	r3, r1
	blt	.L2
	ldrsh	r1, [ip, #6]
	cmp	r3, r1
	ble	.L4
.L2:
	cmp	r0, r4, asr #16
	blt	.L5
	ldrsh	r1, [ip, #2]
	ldr	r4, .L13
	cmp	r1, r0
	blt	.L5
	ldrsh	r1, [r4, #4]
	cmp	r2, r1
	bge	.L12
.L6:
	cmp	r3, r1
	blt	.L5
	ldrsh	r2, [ip, #6]
	cmp	r3, r2
	movgt	r0, #0
	movle	r0, #1
	b	.L7
.L5:
	mov	r0, #0
.L7:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L11:
	ldrsh	r5, [ip, #6]
	cmp	r2, r5
	bgt	.L3
.L4:
	mov	r0, #1
	b	.L7
.L12:
	ldrsh	r0, [r4, #6]
	cmp	r2, r0
	bgt	.L6
	mov	r0, #1
	b	.L7
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	_Z12BaconCollidessss, .-_Z12BaconCollidessss
	.section	.text._Z13BaconCollide2ssssa,"ax",%progbits
	.align	2
	.global	_Z13BaconCollide2ssssa
	.hidden	_Z13BaconCollide2ssssa
	.type	_Z13BaconCollide2ssssa, %function
_Z13BaconCollide2ssssa:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}
	ldr	r4, .L24
	ldrsb	ip, [sp, #8]
	ldrsh	r5, [r4, #2]
	add	r0, ip, r0
	cmp	r0, r5
	add	r2, ip, r2
	rsb	r3, ip, r3
	bge	.L16
	cmp	r5, r1
	bge	.L16
	ldrsh	ip, [r4, #4]
	cmp	r2, ip
	bge	.L17
	cmp	r3, ip
	bgt	.L18
.L17:
	ldrsh	ip, [r4, #6]
	cmp	r2, ip
	bge	.L16
	cmp	r3, ip
	bgt	.L18
.L16:
	ldrsh	r5, [r4, #0]
	cmp	r0, r5
	bge	.L19
	cmp	r1, r5
	ble	.L19
	ldr	r1, .L24
	ldrsh	r1, [r1, #4]
	cmp	r2, r1
	bge	.L20
	cmp	r3, r1
	bgt	.L18
.L20:
	ldrsh	r0, [r4, #6]
	cmp	r2, r0
	blt	.L23
.L19:
	mov	r0, #0
.L21:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L23:
	cmp	r3, r0
	movle	r0, #0
	movgt	r0, #1
	b	.L21
.L18:
	mov	r0, #1
	b	.L21
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.size	_Z13BaconCollide2ssssa, .-_Z13BaconCollide2ssssa
	.section	.text._Z10BaconBlendv,"ax",%progbits
	.align	2
	.global	_Z10BaconBlendv
	.hidden	_Z10BaconBlendv
	.type	_Z10BaconBlendv, %function
_Z10BaconBlendv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L28
	mov	r2, #10	@ movhi
	strh	r2, [r3, #0]	@ movhi
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.size	_Z10BaconBlendv, .-_Z10BaconBlendv
	.section	.text._GLOBAL__I_s_Texture,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_s_Texture, %function
_GLOBAL__I_s_Texture:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_GLOBAL__I_s_Texture, .-_GLOBAL__I_s_Texture
	.section	.init_array,"aw",%init_array
	.align	2
	.word	_GLOBAL__I_s_Texture(target1)
	.section	.text._Z11BaconRenderv,"ax",%progbits
	.align	2
	.global	_Z11BaconRenderv
	.hidden	_Z11BaconRenderv
	.type	_Z11BaconRenderv, %function
_Z11BaconRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L35
	ldr	r4, .L35+4
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
	ldr	r3, .L35+8
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
.L36:
	.align	2
.L35:
	.word	.LANCHOR1
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_Z11BaconRenderv, .-_Z11BaconRenderv
	.section	.text._Z11BaconUpdatev,"ax",%progbits
	.align	2
	.global	_Z11BaconUpdatev
	.hidden	_Z11BaconUpdatev
	.type	_Z11BaconUpdatev, %function
_Z11BaconUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	fstmfdd	sp!, {d8}
	ldr	r0, .L77+12
	bl	_ZN6CInput24getAccelerometerVelocityEv
	flds	s0, .L77
	flds	s14, .L77+4
	fmsr	s15, r0
	fcmpes	s15, s0
	fdivs	s16, s15, s14
	fmstat
	bgt	.L74
	flds	s9, .L77+8
	fcmpes	s15, s9
	fmstat
	ldrpl	r3, .L77+16
	bmi	.L75
.L46:
	ldrh	r2, [r3, #0]
	ldr	r3, .L77+16
	mov	lr, r2, asl #16
	cmp	lr, #0
	ble	.L62
	ldr	ip, [r3, #4]
	tst	r2, #1
	ldr	lr, [ip, #16]
	bic	r0, lr, #458752
	orreq	r0, r0, #131072
	orrne	r0, r0, #327680
	str	r0, [ip, #16]
	ldrh	r1, [r3, #0]
	sub	r2, r1, #1
	strh	r2, [r3, #0]	@ movhi
.L62:
	bl	_Z14IwGxTickUpdatev
	mov	r0, #1
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r4, pc}
.L75:
	ldr	r2, .L77+20
	ldrsh	ip, [r2, #4]
	fmsr	s11, ip	@ int
	fsitos	s10, s11
	fadds	s15, s16, s10
	fcmpezs	s15
	fmstat
	bpl	.L72
	ldr	r3, .L77+16
	ldrh	r0, [r2, #0]
	ldrh	r1, [r2, #2]
	mov	lr, #128	@ movhi
	mov	ip, #0	@ movhi
	strh	r0, [r3, #44]	@ movhi
	strh	r1, [r3, #52]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	lr, [r2, #6]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	mov	r0, #0	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	strh	r0, [r3, #50]	@ movhi
	strh	lr, [r3, #54]	@ movhi
	strh	lr, [r3, #46]	@ movhi
	b	.L46
.L74:
	ldr	r4, .L77+20
	ldr	r0, .L77+12
	ldrsh	r2, [r4, #6]
	fmsr	s2, r2	@ int
	fsitos	s17, s2
	bl	_ZN6CInput16getSurfaceHeightEv
	fadds	s17, s17, s16
	fmsr	s1, r0	@ int
	fsitos	s15, s1
	fcmpes	s17, s15
	fmstat
	bgt	.L76
	ldrsh	r1, [r4, #4]
	ldrsh	r3, [r4, #6]
	fmsr	s8, r1	@ int
	fmsr	s7, r3	@ int
	ldr	r3, .L77+16
	ldrh	r2, [r4, #0]
	fsitos	s6, s8
	fsitos	s5, s7
	ldrh	r0, [r4, #2]
	strh	r2, [r3, #44]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	strh	r0, [r3, #52]	@ movhi
	strh	r0, [r3, #48]	@ movhi
	fadds	s4, s6, s16
	fadds	s16, s5, s16
	ftosizs	s3, s4
	ftosizs	s16, s16
	fmrs	lr, s3	@ int
	fmrs	ip, s16	@ int
	mov	r1, lr, asl #16
	mov	r2, ip, asl #16
	mov	r0, r1, lsr #16
	mov	lr, r2, lsr #16
	strh	r0, [r3, #50]	@ movhi
	strh	lr, [r3, #46]	@ movhi
	strh	r0, [r4, #4]	@ movhi
	strh	lr, [r4, #6]	@ movhi
	strh	r0, [r3, #42]	@ movhi
	strh	lr, [r3, #54]	@ movhi
	b	.L46
.L72:
	ldrsh	r3, [r2, #6]
	ftosizs	s0, s15
	fmsr	s14, r3	@ int
	ldr	r3, .L77+16
	ldrh	ip, [r2, #0]
	ldrh	lr, [r2, #2]
	fsitos	s13, s14
	strh	ip, [r3, #44]	@ movhi
	strh	ip, [r3, #40]	@ movhi
	fmrs	r0, s0	@ int
	strh	lr, [r3, #52]	@ movhi
	mov	r1, r0, asl #16
	fadds	s12, s16, s13
	mov	ip, r1, lsr #16
	strh	ip, [r3, #50]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	strh	lr, [r3, #48]	@ movhi
	strh	ip, [r3, #42]	@ movhi
	ftosizs	s16, s12
	fmrs	r0, s16	@ int
	mov	r1, r0, asl #16
	mov	lr, r1, lsr #16
	strh	lr, [r3, #46]	@ movhi
	strh	lr, [r2, #6]	@ movhi
	strh	lr, [r3, #54]	@ movhi
	b	.L46
.L76:
	ldr	r0, .L77+12
	bl	_ZN6CInput16getSurfaceHeightEv
	sub	r3, r0, #128
	ldr	r0, .L77+12
	strh	r3, [r4, #4]	@ movhi
	bl	_ZN6CInput16getSurfaceHeightEv
	ldr	r3, .L77+16
	ldrh	r1, [r4, #4]
	ldrh	r2, [r4, #2]
	ldrh	ip, [r4, #0]
	strh	r1, [r3, #50]	@ movhi
	strh	r1, [r3, #42]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	strh	ip, [r3, #44]	@ movhi
	strh	ip, [r3, #40]	@ movhi
	strh	r2, [r3, #48]	@ movhi
	mov	r1, r0, asl #16
	mov	r0, r1, lsr #16
	strh	r0, [r3, #46]	@ movhi
	strh	r0, [r4, #6]	@ movhi
	strh	r0, [r3, #54]	@ movhi
	b	.L46
.L78:
	.align	2
.L77:
	.word	1101004800
	.word	1088421888
	.word	-1046478848
	.word	g_Input
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	_Z11BaconUpdatev, .-_Z11BaconUpdatev
	.section	.text._Z13BaconShutDownv,"ax",%progbits
	.align	2
	.global	_Z13BaconShutDownv
	.hidden	_Z13BaconShutDownv
	.type	_Z13BaconShutDownv, %function
_Z13BaconShutDownv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L83
	ldr	r0, [r4, #56]
	cmp	r0, #0
	beq	.L80
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #4]
	blx	r3
.L80:
	ldr	r0, [r4, #4]
	cmp	r0, #0
	beq	.L81
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
.L81:
	ldmfd	sp!, {r4, lr}
	b	_Z13IwGxTerminatev
.L84:
	.align	2
.L83:
	.word	.LANCHOR1
	.size	_Z13BaconShutDownv, .-_Z13BaconShutDownv
	.section	.text._Z9BaconInitv,"ax",%progbits
	.align	2
	.global	_Z9BaconInitv
	.hidden	_Z9BaconInitv
	.type	_Z9BaconInitv, %function
_Z9BaconInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8IwGxInitv
	flds	s14, .L97
	flds	s15, .L97+4
	ldr	r0, .L97+8
	ldr	r4, .L97+12
	ldrh	r3, [r0, #6]
	ldrh	ip, [r0, #0]
	ldrh	r1, [r0, #4]
	ldrh	r2, [r0, #2]
	mov	r0, #96
	strh	r3, [r4, #46]	@ movhi
	fsts	s14, [r4, #16]
	fsts	s15, [r4, #20]
	strh	r3, [r4, #54]	@ movhi
	fsts	s14, [r4, #8]
	fsts	s14, [r4, #12]
	fsts	s15, [r4, #24]
	fsts	s14, [r4, #28]
	fsts	s15, [r4, #32]
	fsts	s15, [r4, #36]
	strh	ip, [r4, #44]	@ movhi
	strh	ip, [r4, #40]	@ movhi
	strh	r1, [r4, #50]	@ movhi
	strh	r2, [r4, #52]	@ movhi
	strh	r1, [r4, #42]	@ movhi
	strh	r2, [r4, #48]	@ movhi
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #4]
	ldr	r2, [r5, #0]
	ldr	r1, .L97+16
	mov	r0, r5
	ldr	r5, [r2, #36]
	blx	r5
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r5
	ldr	r1, .L97+20
	str	r5, [r4, #56]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #56]
	ldr	r1, [r0, #0]
	ldr	ip, [r1, #64]
	blx	ip
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #56]
	str	r0, [r3, #44]
	ldr	r0, [r4, #4]
	bl	_ZN11CIwMaterial10CreateAnimEv
	ldr	r3, [r4, #4]
	mvn	r1, #127
	ldr	r2, [r3, #72]
	strb	r1, [r2, #5]
	ldr	r2, [r3, #44]
	cmp	r2, #0
	beq	.L94
	ldrh	r0, [r2, #32]
	ldr	ip, [r3, #72]
	mov	r2, r0, lsr #7
	and	lr, r2, #255
	strb	lr, [ip, #3]
	ldr	r3, [r3, #72]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	cmp	r1, #0
	streqb	lr, [r3, #2]
.L94:
	ldr	r3, [r4, #4]
	mvn	lr, #127
	ldr	r1, [r3, #72]
	strb	lr, [r1, #6]
	ldr	r2, [r3, #44]
	cmp	r2, #0
	beq	.L95
	ldr	lr, [r3, #72]
	ldrh	r1, [r2, #34]
	ldrb	ip, [lr, #3]	@ zero_extendqisi2
	mul	r1, ip, r1
	mov	r2, r1, lsr #7
	and	ip, r2, #255
	strb	ip, [lr, #2]
	ldr	r3, [r3, #72]
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	cmp	r0, #0
	streqb	ip, [r3, #3]
.L95:
	ldr	lr, [r4, #4]
	mov	r0, #2
	ldr	r3, [lr, #72]
	strb	r0, [r3, #1]
	strb	r0, [r3, #7]
	ldmfd	sp!, {r3, r4, r5, pc}
.L98:
	.align	2
.L97:
	.word	0
	.word	1048576000
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC0
	.word	.LC1
	.size	_Z9BaconInitv, .-_Z9BaconInitv
	.hidden	s_Texture
	.global	s_Texture
	.hidden	anim_xy
	.global	anim_xy
	.hidden	cel_UVs
	.global	cel_UVs
	.hidden	s_MaterialCel
	.global	s_MaterialCel
	.hidden	animXLeft
	.global	animXLeft
	.hidden	animXRight
	.global	animXRight
	.hidden	animYTop
	.global	animYTop
	.hidden	animYBottom
	.global	animYBottom
	.hidden	blend
	.global	blend
	.data
	.align	1
	.set	.LANCHOR0,. + 0
	.type	animXLeft, %object
	.size	animXLeft, 2
animXLeft:
	.short	100
	.type	animXRight, %object
	.size	animXRight, 2
animXRight:
	.short	228
	.type	animYTop, %object
	.size	animYTop, 2
animYTop:
	.short	250
	.type	animYBottom, %object
	.size	animYBottom, 2
animYBottom:
	.short	378
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Cel\000"
.LC1:
	.ascii	"./textures/kevinBacon.png\000"
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	blend, %object
	.size	blend, 2
blend:
	.space	2
	.space	2
	.type	s_MaterialCel, %object
	.size	s_MaterialCel, 4
s_MaterialCel:
	.space	4
	.type	cel_UVs, %object
	.size	cel_UVs, 32
cel_UVs:
	.space	32
	.type	anim_xy, %object
	.size	anim_xy, 16
anim_xy:
	.space	16
	.type	s_Texture, %object
	.size	s_Texture, 4
s_Texture:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
