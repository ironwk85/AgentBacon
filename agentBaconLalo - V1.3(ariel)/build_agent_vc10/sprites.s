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
	.file	"sprites.cpp"
	.section	.text._ZN7sprites8getPauseEv,"ax",%progbits
	.align	2
	.global	_ZN7sprites8getPauseEv
	.hidden	_ZN7sprites8getPauseEv
	.type	_ZN7sprites8getPauseEv, %function
_ZN7sprites8getPauseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #14]	@ zero_extendqisi2
	bx	lr
	.size	_ZN7sprites8getPauseEv, .-_ZN7sprites8getPauseEv
	.section	.text._ZN7sprites8setPauseEb,"ax",%progbits
	.align	2
	.global	_ZN7sprites8setPauseEb
	.hidden	_ZN7sprites8setPauseEb
	.type	_ZN7sprites8setPauseEb, %function
_ZN7sprites8setPauseEb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strb	r1, [r0, #14]
	cmp	r1, #0
	ldr	r1, [r0, #16]
	ldr	r3, [r1, #72]
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	orrne	r2, r2, #1
	biceq	r2, r2, #1
	strb	r2, [r3, #0]
	bx	lr
	.size	_ZN7sprites8setPauseEb, .-_ZN7sprites8setPauseEb
	.section	.text._ZN7sprites4setYEs,"ax",%progbits
	.align	2
	.global	_ZN7sprites4setYEs
	.hidden	_ZN7sprites4setYEs
	.type	_ZN7sprites4setYEs, %function
_ZN7sprites4setYEs:
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
	.size	_ZN7sprites4setYEs, .-_ZN7sprites4setYEs
	.section	.text._ZN7sprites4setXEs,"ax",%progbits
	.align	2
	.global	_ZN7sprites4setXEs
	.hidden	_ZN7sprites4setXEs
	.type	_ZN7sprites4setXEs, %function
_ZN7sprites4setXEs:
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
	.size	_ZN7sprites4setXEs, .-_ZN7sprites4setXEs
	.section	.text._ZN7sprites6updateEv,"ax",%progbits
	.align	2
	.global	_ZN7sprites6updateEv
	.hidden	_ZN7sprites6updateEv
	.type	_ZN7sprites6updateEv, %function
_ZN7sprites6updateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.size	_ZN7sprites6updateEv, .-_ZN7sprites6updateEv
	.section	.text._ZN14spritesManager5beginEv,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager5beginEv
	.hidden	_ZN14spritesManager5beginEv
	.type	_ZN14spritesManager5beginEv, %function
_ZN14spritesManager5beginEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	bx	lr
	.size	_ZN14spritesManager5beginEv, .-_ZN14spritesManager5beginEv
	.section	.text._ZN14spritesManager3endEv,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager3endEv
	.hidden	_ZN14spritesManager3endEv
	.type	_ZN14spritesManager3endEv, %function
_ZN14spritesManager3endEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN14spritesManager3endEv, .-_ZN14spritesManager3endEv
	.section	.text._ZN14spritesManager6renderEv,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager6renderEv
	.hidden	_ZN14spritesManager6renderEv
	.type	_ZN14spritesManager6renderEv, %function
_ZN14spritesManager6renderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, [r0, #4]
	cmp	r4, #0
	beq	.L33
.L30:
	ldr	r3, [r4, #0]
	ldrsh	r2, [r3, #6]
	mov	r0, r3
	cmp	r2, #0
	blt	.L29
	ldr	r1, [r3, #0]
	ldr	r3, [r1, #12]
	blx	r3
.L29:
	ldr	r4, [r4, #4]
	cmp	r4, #0
	bne	.L30
.L33:
	ldmfd	sp!, {r4, pc}
	.size	_ZN14spritesManager6renderEv, .-_ZN14spritesManager6renderEv
	.section	.text._ZN14spritesManager12removeSpriteEP7sprites,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager12removeSpriteEP7sprites
	.hidden	_ZN14spritesManager12removeSpriteEP7sprites
	.type	_ZN14spritesManager12removeSpriteEP7sprites, %function
_ZN14spritesManager12removeSpriteEP7sprites:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	cmp	r0, #0
	bne	.L44
	ldmfd	sp!, {r4, pc}
.L46:
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.L49
.L44:
	ldr	r3, [r0, #0]
	cmp	r3, r1
	bne	.L46
	ldr	ip, [r0, #8]
	cmp	ip, #0
	ldreq	ip, [r0, #4]
	ldrne	r2, [r0, #4]
	streq	ip, [r4, #4]
	strne	r2, [ip, #4]
	ldr	r2, [r0, #4]
	ldreq	ip, [r0, #8]
	cmp	r2, #0
	strne	ip, [r2, #8]
	streq	ip, [r4, #8]
	bl	_ZdlPv
	ldr	r1, [r4, #0]
	sub	r0, r1, #1
	str	r0, [r4, #0]
	ldmfd	sp!, {r4, pc}
.L49:
	ldmfd	sp!, {r4, pc}
	.size	_ZN14spritesManager12removeSpriteEP7sprites, .-_ZN14spritesManager12removeSpriteEP7sprites
	.section	.text._ZN14spritesManager9addSpriteEP7sprites,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager9addSpriteEP7sprites
	.hidden	_ZN14spritesManager9addSpriteEP7sprites
	.type	_ZN14spritesManager9addSpriteEP7sprites, %function
_ZN14spritesManager9addSpriteEP7sprites:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, [r0, #4]
	mov	r4, r0
	cmp	r5, #0
	mov	r6, r1
	mov	r0, #12
	beq	.L56
	bl	_Znwj
	mov	r3, #0
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r6, [r0, #0]
	ldr	ip, [r4, #8]
	str	r0, [ip, #4]
	ldr	r1, [r4, #8]
	ldr	r2, [r1, #4]
	str	r1, [r2, #8]
	ldr	r0, [r4, #8]
	ldr	r3, [r0, #4]
	ldr	r0, [r4, #0]
	str	r3, [r4, #8]
	add	lr, r0, #1
	str	lr, [r4, #0]
	str	r4, [r6, #84]
	ldmfd	sp!, {r4, r5, r6, pc}
.L56:
	bl	_Znwj
	str	r5, [r0, #8]
	str	r6, [r0, #0]
	str	r5, [r0, #4]
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	ldr	r0, [r4, #0]
	add	lr, r0, #1
	str	lr, [r4, #0]
	str	r4, [r6, #84]
	ldmfd	sp!, {r4, r5, r6, pc}
	.size	_ZN14spritesManager9addSpriteEP7sprites, .-_ZN14spritesManager9addSpriteEP7sprites
	.section	.text._ZN7sprites6renderEv,"ax",%progbits
	.align	2
	.global	_ZN7sprites6renderEv
	.hidden	_ZN7sprites6renderEv
	.type	_ZN7sprites6renderEv, %function
_ZN7sprites6renderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r5, r0
	ldr	r0, [r0, #16]
	bl	_Z15IwGxSetMaterialP11CIwMaterial
	add	r0, r5, #40
	mov	r1, #0
	bl	_Z15IwGxSetUVStreamP8CIwFVec2i
	ldr	r4, .L60
	mov	r0, #0
	mov	r1, r0
	bl	_Z16IwGxSetColStreamP9CIwColourj
	mov	r1, #4
	add	r0, r5, #24
	ldr	ip, [r4, #16]
	mov	r2, #3
	blx	ip
	ldr	r3, .L60+4
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
.L61:
	.align	2
.L60:
	.word	g_IwGxFuncTable
	.word	g_IwGxState
	.size	_ZN7sprites6renderEv, .-_ZN7sprites6renderEv
	.section	.text._ZN7sprites6updateEb,"ax",%progbits
	.align	2
	.global	_ZN7sprites6updateEb
	.hidden	_ZN7sprites6updateEb
	.type	_ZN7sprites6updateEb, %function
_ZN7sprites6updateEb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #16]
	ldr	r1, [r3, #72]
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	cmp	r2, #15
	movne	r0, #0
	ldmnefd	sp!, {r4, pc}
	mov	r4, #1
	strb	r4, [r0, #14]
	ldr	r3, [r3, #72]
	mov	r1, #0
	ldrb	lr, [r3, #0]	@ zero_extendqisi2
	orr	ip, lr, r4
	strb	ip, [r3, #0]
	ldr	r0, [r0, #16]
	bl	_ZN11CIwMaterial12SetAnimCelIDEh
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
	.size	_ZN7sprites6updateEb, .-_ZN7sprites6updateEb
	.global	__aeabi_uidiv
	.section	.text._ZN7sprites4initEv,"ax",%progbits
	.align	2
	.global	_ZN7sprites4initEv
	.hidden	_ZN7sprites4initEv
	.type	_ZN7sprites4initEv, %function
_ZN7sprites4initEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	flds	s14, .L116
	flds	s15, .L116+4
	mov	r4, r0
	ldrh	lr, [r4, #8]
	ldrh	r0, [r0, #4]
	ldrh	r2, [r4, #76]
	ldrh	r3, [r4, #78]
	add	ip, r2, r0
	add	r5, r3, lr
	mov	r1, ip, asl #16
	mov	r3, r5, asl #16
	mov	r2, r1, lsr #16
	mov	ip, r3, lsr #16
	strh	lr, [r4, #34]	@ movhi
	strh	r2, [r4, #36]	@ movhi
	strh	ip, [r4, #30]	@ movhi
	fsts	s14, [r4, #48]
	fsts	s15, [r4, #52]
	strh	r2, [r4, #6]	@ movhi
	strh	ip, [r4, #10]	@ movhi
	strh	lr, [r4, #26]	@ movhi
	strh	r2, [r4, #32]	@ movhi
	strh	ip, [r4, #38]	@ movhi
	fsts	s14, [r4, #40]
	fsts	s14, [r4, #44]
	fsts	s15, [r4, #56]
	fsts	s14, [r4, #60]
	fsts	s15, [r4, #64]
	fsts	s15, [r4, #68]
	strh	r0, [r4, #28]	@ movhi
	strh	r0, [r4, #24]	@ movhi
	mov	r0, #96
	bl	_Znwj
	mov	r5, r0
	bl	_ZN11CIwMaterialC1Ev
	str	r5, [r4, #16]
	ldr	r1, [r5, #0]
	mov	r0, r5
	ldr	r3, [r1, #36]
	ldr	r1, .L116+8
	blx	r3
	ldr	r5, [r4, #72]
	ldr	r1, .L116+12
	mov	r0, r5
	bl	strcmp
	cmp	r0, #0
	beq	.L113
	mov	r0, r5
	ldr	r1, .L116+16
	bl	strcmp
	cmp	r0, #0
	beq	.L114
	mov	r0, r5
	ldr	r1, .L116+20
	bl	strcmp
	cmp	r0, #0
	beq	.L115
	mov	r0, r5
	ldr	r1, .L116+24
	bl	strcmp
	cmp	r0, #0
	bne	.L85
	ldr	r6, .L116+28
	ldr	r3, [r4, #16]
	ldr	ip, [r6, #128]
	str	ip, [r3, #44]
	ldr	r0, [r4, #16]
	bl	_ZN11CIwMaterial10CreateAnimEv
	ldr	r5, [r4, #16]
	ldrb	r1, [r4, #76]	@ zero_extendqisi2
	ldr	r0, [r5, #72]
	strb	r1, [r0, #5]
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L86
	ldrh	r0, [r3, #32]
	bl	__aeabi_uidiv
	ldr	r3, [r5, #72]
	and	r1, r0, #255
	strb	r1, [r3, #3]
	ldr	ip, [r5, #72]
	ldrb	r2, [ip, #2]	@ zero_extendqisi2
	cmp	r2, #0
	streqb	r1, [ip, #2]
.L86:
	ldr	r5, [r4, #16]
	ldrb	r1, [r4, #78]	@ zero_extendqisi2
	ldr	lr, [r5, #72]
	strb	r1, [lr, #6]
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L87
	ldr	r7, [r5, #72]
	ldrh	r2, [r3, #34]
	ldrb	r0, [r7, #3]	@ zero_extendqisi2
	mul	r0, r2, r0
	bl	__aeabi_uidiv
	and	r0, r0, #255
	strb	r0, [r7, #2]
	ldr	r1, [r5, #72]
	ldrb	ip, [r1, #3]	@ zero_extendqisi2
	cmp	ip, #0
	streqb	r0, [r1, #3]
.L87:
	ldr	ip, [r4, #16]
	ldrb	lr, [r4, #12]	@ zero_extendqisi2
	ldr	r1, [ip, #72]
	mov	r3, #0
	strb	lr, [r1, #1]
	strb	lr, [r1, #7]
	ldrb	r0, [r4, #14]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [r4, #16]
	ldrne	r0, [r0, #72]
	ldrneb	lr, [r0, #0]	@ zero_extendqisi2
	orrne	lr, lr, #1
	strneb	lr, [r0, #0]
	strb	r3, [r6, #114]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L113:
	ldr	lr, .L116+28
	ldr	r5, [r4, #16]
	ldr	r1, [lr, #116]
	str	r1, [r5, #44]
	strb	r0, [lr, #112]
.L110:
	ldr	r0, [r4, #16]
	bl	_ZN11CIwMaterial10CreateAnimEv
	ldr	r5, [r4, #16]
	ldrb	r1, [r4, #76]	@ zero_extendqisi2
	ldr	r0, [r5, #72]
	strb	r1, [r0, #5]
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L89
	ldrh	r0, [r3, #32]
	bl	__aeabi_uidiv
	ldr	r1, [r5, #72]
	and	ip, r0, #255
	strb	ip, [r1, #3]
	ldr	r3, [r5, #72]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cmp	r2, #0
	streqb	ip, [r3, #2]
.L89:
	ldr	r5, [r4, #16]
	ldrb	r1, [r4, #78]	@ zero_extendqisi2
	ldr	lr, [r5, #72]
	strb	r1, [lr, #6]
	ldr	r3, [r5, #44]
	cmp	r3, #0
	beq	.L90
	ldr	r6, [r5, #72]
	ldrh	r2, [r3, #34]
	ldrb	r0, [r6, #3]	@ zero_extendqisi2
	mul	r0, r2, r0
	bl	__aeabi_uidiv
	and	r0, r0, #255
	strb	r0, [r6, #2]
	ldr	ip, [r5, #72]
	ldrb	r3, [ip, #3]	@ zero_extendqisi2
	cmp	r3, #0
	streqb	r0, [ip, #3]
.L90:
	ldr	ip, [r4, #16]
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
	ldr	r0, [ip, #72]
	strb	r1, [r0, #1]
	strb	r1, [r0, #7]
	ldrb	lr, [r4, #14]	@ zero_extendqisi2
	cmp	lr, #0
	ldrne	lr, [r4, #16]
	ldrne	lr, [lr, #72]
	ldrneb	r1, [lr, #0]	@ zero_extendqisi2
	orrne	r1, r1, #1
	strneb	r1, [lr, #0]
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L114:
	ldr	ip, .L116+28
	ldr	r2, [r4, #16]
	ldr	r3, [ip, #120]
	str	r3, [r2, #44]
	strb	r0, [ip, #113]
	b	.L110
.L85:
	mov	r0, #196
	bl	_Znwj
	mov	r5, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r5
	str	r5, [r4, #20]
	ldr	r1, [r4, #72]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r4, #20]
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #64]
	blx	r3
	ldr	r2, [r4, #16]
	ldr	r5, [r4, #20]
	str	r5, [r2, #44]
	b	.L110
.L115:
	ldr	lr, .L116+28
	ldr	r5, [r4, #16]
	ldr	r1, [lr, #124]
	str	r1, [r5, #44]
	strb	r0, [lr, #115]
	b	.L110
.L117:
	.align	2
.L116:
	.word	0
	.word	1048576000
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	g_Input
	.size	_ZN7sprites4initEv, .-_ZN7sprites4initEv
	.section	.text._ZN14spritesManager6updateEv,"ax",%progbits
	.align	2
	.global	_ZN14spritesManager6updateEv
	.hidden	_ZN14spritesManager6updateEv
	.type	_ZN14spritesManager6updateEv, %function
_ZN14spritesManager6updateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r0, #4]
	mov	r6, #0
	cmp	r4, #0
	mov	r7, r0
	mov	r8, r6
	beq	.L156
.L124:
	ldr	r3, [r4, #0]
	ldrsh	r2, [r3, #6]
	mov	r0, r3
	cmp	r2, #0
	blt	.L121
	ldr	r1, [r3, #0]
	ldr	r3, [r1, #4]
	blx	r3
	subs	r5, r0, #0
	beq	.L157
.L121:
	ldr	r4, [r4, #4]
.L160:
	cmp	r4, #0
	bne	.L124
.L156:
	mov	r5, r6
	cmp	r5, #0
	ldr	r8, .L162
	beq	.L158
.L138:
	ldr	r4, [r7, #4]
	cmp	r4, #0
	beq	.L127
	ldr	r0, [r5, #0]
	ldr	ip, [r4, #0]
	cmp	ip, r0
	bne	.L154
	b	.L128
.L137:
	ldr	r3, [r4, #0]
	cmp	r3, r0
	beq	.L128
.L154:
	ldr	r4, [r4, #4]
	cmp	r4, #0
	bne	.L137
.L127:
	ldr	r5, [r5, #4]
.L161:
	cmp	r5, #0
	bne	.L138
.L158:
	cmp	r6, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r0, r6
.L146:
	ldr	ip, [r0, #8]
	mov	r5, r6
	cmp	ip, #0
	ldrne	r2, [r0, #4]
	ldreq	r4, [r0, #4]
	strne	r2, [ip, #4]
	ldrne	r4, [r0, #4]
	moveq	r5, r4
	cmp	r4, #0
	strne	ip, [r4, #8]
	bl	_ZdlPv
	cmp	r4, #0
	mov	r6, r5
	mov	r0, r4
	bne	.L146
	cmp	r5, #0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	mov	r3, r5
.L152:
	ldr	lr, [r3, #8]
	mov	r0, r3
	cmp	lr, #0
	ldrne	r1, [r3, #4]
	strne	r1, [lr, #4]
	ldr	r4, [r3, #4]
	cmp	r4, #0
	strne	lr, [r4, #8]
	bl	_ZdlPv
	cmp	r4, #0
	mov	r3, r4
	bne	.L152
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L157:
	cmp	r6, #0
	mov	r0, #12
	beq	.L159
	bl	_Znwj
	ldr	r2, [r4, #0]
	stmib	r0, {r5, r8}	@ phole stm
	str	r0, [r8, #4]
	str	r2, [r0, #0]
	mov	r8, r0
	ldr	r4, [r4, #4]
	b	.L160
.L128:
	cmp	r0, #0
	beq	.L130
	str	r8, [r0, #0]
	bl	_ZdlPv
.L130:
	ldr	lr, [r4, #8]
	mov	r0, r4
	cmp	lr, #0
	ldreq	lr, [r4, #4]
	ldrne	r2, [r4, #4]
	streq	lr, [r7, #4]
	strne	r2, [lr, #4]
	ldr	r2, [r4, #4]
	ldreq	lr, [r4, #8]
	cmp	r2, #0
	strne	lr, [r2, #8]
	streq	lr, [r7, #8]
	bl	_ZdlPv
	ldr	r0, [r7, #0]
	sub	r1, r0, #1
	str	r1, [r7, #0]
	ldr	r5, [r5, #4]
	b	.L161
.L159:
	bl	_Znwj
	mov	r8, r0
	ldr	r0, [r4, #0]
	str	r6, [r8, #4]
	str	r6, [r8, #8]
	str	r0, [r8, #0]
	mov	r6, r8
	ldr	r4, [r4, #4]
	b	.L160
.L163:
	.align	2
.L162:
	.word	.LANCHOR0+8
	.size	_ZN14spritesManager6updateEv, .-_ZN14spritesManager6updateEv
	.hidden	_ZTV7sprites
	.global	_ZTV7sprites
	.hidden	_ZTS7sprites
	.global	_ZTS7sprites
	.hidden	_ZTI7sprites
	.global	_ZTI7sprites
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV7sprites, %object
	.size	_ZTV7sprites, 24
_ZTV7sprites:
	.word	0
	.word	_ZTI7sprites
	.word	_ZN7sprites4initEv
	.word	_ZN7sprites6updateEv
	.word	_ZN7sprites6updateEb
	.word	_ZN7sprites6renderEv
	.type	_ZTS7sprites, %object
	.size	_ZTS7sprites, 9
_ZTS7sprites:
	.ascii	"7sprites\000"
	.space	3
	.type	_ZTI7sprites, %object
	.size	_ZTI7sprites, 8
_ZTI7sprites:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS7sprites
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Cel\000"
.LC1:
	.ascii	"coins\000"
	.space	2
.LC2:
	.ascii	"corazones\000"
	.space	2
.LC3:
	.ascii	"claws\000"
	.space	2
.LC4:
	.ascii	"tnts\000"
	.hidden	_ZTV7sprites
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
