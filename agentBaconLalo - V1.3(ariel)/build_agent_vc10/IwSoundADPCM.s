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
	.file	"IwSoundADPCM.cpp"
	.section	.text._ZN15CIwChannelADPCM4InitEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM4InitEv
	.hidden	_ZN15CIwChannelADPCM4InitEv
	.type	_ZN15CIwChannelADPCM4InitEv, %function
_ZN15CIwChannelADPCM4InitEv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L8
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r6, [r1, #0]
	ldr	r2, .L8+4
	mov	r4, r6, asl #1
	add	ip, r4, r6
	mov	r5, r6, asl #2
	mov	r1, r6, asr #3
	add	r9, r5, r6
	mov	r3, ip, asl #1
	rsb	fp, r6, r6, asl #3
	ldr	r8, .L8+8
	add	r0, r1, r9, asr #2
	add	r7, r1, r6, asr #2
	add	r9, r1, r3, asr #2
	add	r6, r1, r4, asr #2
	add	fp, r1, fp, asr #2
	add	r4, r1, ip, asr #2
	mov	sl, #1
	add	ip, r1, r5, asr #2
	sub	sp, sp, #32
	add	r3, r2, #32
	mov	r5, #4
	str	sl, [r8, #0]
	str	r7, [r2, #68]
	str	r6, [r2, #72]
	str	r4, [r2, #76]
	str	ip, [r2, #80]
	str	r0, [r2, #84]
	str	r9, [r2, #88]
	str	fp, [r2, #92]
	str	r1, [r2, #64]
.L2:
	ldr	r6, .L8
	add	r1, r5, #4
	ldr	r4, [r6, r5]
	ldr	ip, [r6, r1]
	mov	r9, r4, asl #1
	add	sl, r9, r4
	mov	fp, ip, asl #2
	mov	r7, ip, asl #1
	mov	r8, r4, asl #2
	add	r6, r7, ip
	add	r5, r8, r4
	add	r0, fp, ip
	mov	r2, sl, asl #1
	str	r5, [sp, #12]
	str	r0, [sp, #20]
	str	r2, [sp, #16]
	mov	r0, r4, asr #3
	mov	r5, r6, asl #1
	rsb	r2, r4, r4, asl #3
	str	r5, [sp, #24]
	str	fp, [sp, #4]
	add	r2, r0, r2, asr #2
	rsb	fp, ip, ip, asl #3
	add	r5, r1, #4
	mov	r1, ip, asr #3
	str	r2, [r3, #92]
	add	r2, r1, fp, asr #2
	ldr	fp, [sp, #12]
	str	r2, [sp, #28]
	add	fp, r0, fp, asr #2
	str	fp, [r3, #84]
	ldr	fp, [sp, #16]
	add	r2, r3, #32
	add	fp, r0, fp, asr #2
	str	fp, [r3, #88]
	ldr	fp, [sp, #20]
	add	r4, r0, r4, asr #2
	add	fp, r1, fp, asr #2
	str	fp, [sp, #20]
	ldr	fp, [sp, #24]
	add	r9, r0, r9, asr #2
	add	fp, r1, fp, asr #2
	str	fp, [sp, #24]
	add	fp, r1, ip, asr #2
	ldr	ip, [sp, #4]
	str	fp, [sp, #12]
	add	sl, r0, sl, asr #2
	add	fp, r1, ip, asr #2
	add	r8, r0, r8, asr #2
	str	r4, [r3, #68]
	str	r0, [r3, #64]
	str	r9, [r3, #72]
	str	sl, [r3, #76]
	str	r8, [r3, #80]
	ldr	ip, [sp, #12]
	str	fp, [r2, #80]
	ldr	r0, [sp, #20]
	ldr	r4, [sp, #24]
	add	r7, r1, r7, asr #2
	add	r6, r1, r6, asr #2
	ldr	fp, [sp, #28]
	cmp	r5, #356
	str	ip, [r2, #68]
	str	r7, [r2, #72]
	str	r6, [r2, #76]
	str	r0, [r2, #84]
	str	r4, [r2, #88]
	add	r3, r2, #32
	str	fp, [r2, #92]
	str	r1, [r2, #64]
	bne	.L2
	add	sp, sp, #32
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	_ZN15CIwChannelADPCM4InitEv, .-_ZN15CIwChannelADPCM4InitEv
	.section	.text._ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.hidden	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.type	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi, %function
_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	sub	sp, sp, #64
	ldrh	r7, [r0, #16]
	ldr	sl, [r0, #0]
	ldr	r6, [r0, #8]
	ldr	r4, [r0, #12]
	cmp	r2, #0
	str	r7, [sp, #20]
	ldrb	r9, [r0, #23]	@ zero_extendqisi2
	ldrh	r7, [r0, #20]
	ldrb	ip, [r0, #22]	@ zero_extendqisi2
	ldr	r8, [sp, #96]
	ldr	r5, [sp, #100]
	str	r9, [sp, #28]
	beq	.L11
	mov	ip, ip, asl #24
	mov	ip, ip, asr #24
	cmp	r8, #7
	str	ip, [sp, #24]
	bgt	.L12
	cmp	r5, #0
	bne	.L13
	and	fp, r1, #3
	mov	fp, fp, lsr #1
	cmp	fp, r2
	movcs	fp, r2
	cmp	fp, #0
	sub	r8, r2, #1
	moveq	ip, r1
	beq	.L15
	sub	r9, fp, #1
	and	r9, r9, #3
	str	r9, [sp, #12]
	mov	ip, r1
	mov	r9, #1
	cmp	fp, #1
	strh	r5, [ip], #2	@ movhi
	sub	r8, r8, #1
	str	r9, [sp, #16]
	bls	.L234
	ldr	r9, [sp, #12]
	cmp	r9, #0
	beq	.L257
	cmp	r9, #1
	beq	.L226
	cmp	r9, #2
	movne	r9, #2
	strne	r9, [sp, #16]
	mov	r9, #0	@ movhi
	strneh	r5, [ip], #2	@ movhi
	strh	r9, [ip], #2	@ movhi
	ldr	r5, [sp, #16]
	subne	r8, r8, #1
	add	r9, r5, #1
	sub	r8, r8, #1
	str	r9, [sp, #16]
.L226:
	ldr	r9, [sp, #16]
	sub	r8, r8, #1
	add	r5, r9, #1
	cmp	fp, r5
	mov	r9, #0	@ movhi
	str	r5, [sp, #16]
	strh	r9, [ip], #2	@ movhi
	bls	.L234
.L257:
	ldr	r9, [sp, #16]
	str	r3, [sp, #12]
.L16:
	add	r9, r9, #4
	mov	r3, #0	@ movhi
	mov	r5, ip
	cmp	fp, r9
	strh	r3, [r5], #2	@ movhi
	sub	r8, r8, #4
	strh	r3, [ip, #2]	@ movhi
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [ip, #6]	@ movhi
	add	ip, ip, #8
	bhi	.L16
	ldr	r3, [sp, #12]
.L234:
	cmp	fp, r2
	beq	.L13
.L15:
	rsb	r5, fp, r2
	mov	r9, r5, lsr #1
	str	r5, [sp, #36]
	movs	r5, r9, asl #1
	str	r9, [sp, #12]
	str	r5, [sp, #32]
	beq	.L18
	add	fp, r1, fp, asl #1
	str	fp, [sp, #16]
	sub	r5, r9, #1
	cmp	r9, #1
	and	r9, r5, #3
	ldr	r5, [sp, #16]
	mov	fp, #0
	str	fp, [r5, #0]
	mov	r5, #1
	str	r5, [sp, #52]
	bls	.L235
	cmp	r9, #0
	beq	.L255
	cmp	r9, #1
	beq	.L224
	cmp	r9, #2
	ldrne	r9, [sp, #16]
	movne	r5, #2
	strne	r5, [sp, #52]
	strne	fp, [r9, #4]
	ldr	r9, [sp, #52]
	ldr	r5, [sp, #52]
	add	r9, r9, #1
	str	r9, [sp, #52]
	ldr	r9, [sp, #16]
	mov	r5, r5, asl #2
	str	r5, [sp, #40]
	str	fp, [r9, r5]
.L224:
	ldr	r5, [sp, #52]
	mov	r9, r5, asl #2
	ldr	r5, [sp, #52]
	str	r9, [sp, #40]
	add	r9, r5, #1
	ldr	r5, [sp, #12]
	str	r9, [sp, #52]
	cmp	r5, r9
	ldr	r5, [sp, #16]
	ldr	r9, [sp, #40]
	str	fp, [r5, r9]
	bls	.L235
.L255:
	ldr	r5, [sp, #52]
	mov	r9, r8
	str	ip, [sp, #40]
	str	r6, [sp, #44]
	ldr	ip, [sp, #16]
	str	r7, [sp, #48]
	str	r3, [sp, #16]
.L19:
	str	fp, [ip, r5, asl #2]
	ldr	r3, [sp, #12]
	add	r6, r5, #1
	add	r7, r5, #3
	add	r5, r5, #4
	add	r8, r6, #1
	cmp	r3, r5
	str	fp, [ip, r6, asl #2]
	str	fp, [ip, r8, asl #2]
	str	fp, [ip, r7, asl #2]
	bhi	.L19
	ldr	ip, [sp, #40]
	ldr	r6, [sp, #44]
	ldr	r7, [sp, #48]
	ldr	r3, [sp, #16]
	mov	r8, r9
.L235:
	ldr	r9, [sp, #32]
	ldr	r5, [sp, #36]
	add	ip, ip, r9, asl #1
	cmp	r5, r9
	rsb	r8, r9, r8
	beq	.L13
.L18:
	sub	r9, r8, #1
	mov	fp, #0	@ movhi
	cmn	r9, #1
	strh	fp, [ip, #0]	@ movhi
	and	r8, r8, #3
	mov	r5, #2
	beq	.L13
	cmp	r8, #0
	beq	.L253
	cmp	r8, #1
	beq	.L222
	cmp	r8, #2
	movne	r5, #0	@ movhi
	strneh	r5, [ip, #2]	@ movhi
	subne	r9, r9, #1
	movne	r5, #4
	mov	r8, #0	@ movhi
	strh	r8, [ip, r5]	@ movhi
	sub	r9, r9, #1
	add	r5, r5, #2
.L222:
	sub	r9, r9, #1
	mov	fp, #0	@ movhi
	cmn	r9, #1
	strh	fp, [ip, r5]	@ movhi
	add	r5, r5, #2
	beq	.L13
.L253:
	mov	fp, r7
	str	r6, [sp, #12]
	str	r3, [sp, #16]
.L20:
	add	r6, r5, #2
	sub	r9, r9, #4
	mov	r3, #0	@ movhi
	add	r7, r5, #6
	add	r8, r6, #2
	cmn	r9, #1
	strh	r3, [ip, r5]	@ movhi
	strh	r3, [ip, r6]	@ movhi
	add	r5, r5, #8
	strh	r3, [ip, r8]	@ movhi
	strh	r3, [ip, r7]	@ movhi
	bne	.L20
	ldr	r6, [sp, #12]
	ldr	r3, [sp, #16]
	mov	r7, fp
.L13:
	add	r5, r1, r2, asl #1
	rsb	r8, r3, #0
	mov	ip, r6
.L236:
	tst	r4, #1
	beq	.L23
.L24:
	cmp	ip, r3
	blt	.L27
	subs	r2, r2, #1
	rsb	ip, r3, ip
	beq	.L29
	sub	r6, r2, #1
	cmp	r3, ip
	and	r9, r6, #3
	bgt	.L27
	subs	r2, r6, #0
	add	ip, ip, r8
	beq	.L29
	cmp	r9, #0
	beq	.L219
	cmp	r9, #1
	beq	.L220
	cmp	r9, #2
	beq	.L221
	cmp	r3, ip
	bgt	.L27
	add	ip, ip, r8
	sub	r2, r2, #1
.L221:
	cmp	r3, ip
	bgt	.L27
	add	ip, ip, r8
	sub	r2, r2, #1
.L220:
	cmp	r3, ip
	bgt	.L27
	subs	r2, r2, #1
	add	ip, ip, r8
	beq	.L29
.L219:
	cmp	r3, ip
	bgt	.L27
	add	ip, ip, r8
	sub	r2, r2, #1
	cmp	r3, ip
	mov	r6, r2
	bgt	.L27
	add	ip, ip, r8
	cmp	r3, ip
	sub	r2, r2, #1
	bgt	.L27
	add	ip, ip, r8
	cmp	r3, ip
	sub	r2, r6, #2
	bgt	.L27
	subs	r2, r6, #3
	add	ip, ip, r8
	bne	.L219
.L29:
	ldr	r3, [sp, #24]
	strb	r3, [r0, #22]
	str	sl, [r0, #0]
	str	ip, [r0, #8]
	str	r4, [r0, #12]
	ldr	r2, [sp, #20]
	rsb	r5, r1, r5
	strh	r2, [r0, #16]	@ movhi
	strh	r7, [r0, #20]	@ movhi
	ldr	ip, [sp, #28]
	mov	r5, r5, asr #1
	strb	ip, [r0, #23]
.L11:
	mov	r0, r5
	add	sp, sp, #64
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L12:
	cmp	r5, #0
	bne	.L273
	mov	ip, r6
	mov	r5, r1
	rsb	r6, r3, #0
	str	r6, [sp, #12]
	str	r1, [sp, #36]
.L90:
	cmp	r4, #0
	beq	.L66
	tst	r4, #1
	ldreq	r6, .L280
	beq	.L84
	ldrb	r9, [sl, #0]	@ zero_extendqisi2
	str	r9, [sp, #16]
.L68:
	mov	r7, r7, asl #16
	cmp	r3, ip
	str	r7, [sp, #32]
	mov	r1, r7, asr #16
	bgt	.L74
	ldr	r6, [sp, #20]
	rsb	ip, r3, ip
	mov	r7, r6, asl #16
	rsb	r7, r1, r7, asr #16
	mul	r6, ip, r7
	subs	r2, r2, #1
	add	r6, r1, r6, asr #12
	mul	r6, r8, r6
	mov	r6, r6, asr #8
	strh	r6, [r5], #2	@ movhi
	beq	.L76
	ldr	fp, [sp, #12]
	rsb	r6, r3, ip
	sub	r9, r2, #1
	cmp	r3, ip
	mul	r6, r7, r6
	mul	r7, fp, r7
	and	fp, r9, #3
	bgt	.L74
	add	r2, r1, r6, asr #12
	mul	r2, r8, r2
	add	r6, r6, r7
	str	r2, [sp, #40]
	subs	r2, r9, #0
	ldr	r9, [sp, #40]
	mov	r9, r9, asr #8
	str	r9, [sp, #40]
	strh	r9, [r5], #2	@ movhi
	ldr	r9, [sp, #12]
	add	ip, ip, r9
	beq	.L265
	cmp	fp, #0
	beq	.L267
	cmp	fp, #1
	beq	.L232
	cmp	fp, #2
	beq	.L233
	cmp	r3, ip
	bgt	.L74
	add	r9, r1, r6, asr #12
	mul	r9, r8, r9
	ldr	fp, [sp, #12]
	sub	r2, r2, #1
	add	ip, ip, fp
	add	r6, r6, r7
	mov	fp, r9, asr #8
	strh	fp, [r5], #2	@ movhi
.L233:
	cmp	r3, ip
	bgt	.L74
	add	r9, r1, r6, asr #12
	mul	r9, r8, r9
	ldr	fp, [sp, #12]
	mov	r9, r9, asr #8
	add	ip, ip, fp
	sub	r2, r2, #1
	add	r6, r6, r7
	strh	r9, [r5], #2	@ movhi
.L232:
	cmp	r3, ip
	bgt	.L74
	add	fp, r1, r6, asr #12
	mul	fp, r8, fp
	subs	r2, r2, #1
	mov	r9, fp, asr #8
	strh	r9, [r5], #2	@ movhi
	ldr	r9, [sp, #12]
	add	r6, r6, r7
	add	ip, ip, r9
	beq	.L265
.L267:
	str	r4, [sp, #48]
	str	r0, [sp, #52]
.L72:
	add	r4, r1, r6, asr #12
	mul	r4, r8, r4
	cmp	r3, ip
	mov	r4, r4, asr #8
	bgt	.L269
	ldr	fp, [sp, #12]
	add	r6, r6, r7
	add	r9, r1, r6, asr #12
	add	ip, ip, fp
	mul	r9, r8, r9
	add	fp, r6, r7
	strh	r4, [r5], #2	@ movhi
	add	r4, r1, fp, asr #12
	mul	r4, r8, r4
	mov	r0, r9, asr #8
	str	r0, [sp, #40]
	add	r0, fp, r7
	mov	r9, r4, asr #8
	add	r4, r1, r0, asr #12
	mul	r4, r8, r4
	sub	r2, r2, #1
	cmp	r3, ip
	str	r9, [sp, #44]
	mov	fp, r4, asr #8
	add	r6, r0, r7
	mov	r4, r5
	mov	r9, r2
	bgt	.L269
	ldr	r0, [sp, #12]
	sub	r2, r2, #1
	add	ip, ip, r0
	cmp	r3, ip
	ldr	r0, [sp, #40]
	strh	r0, [r5], #2	@ movhi
	bgt	.L269
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #44]
	add	ip, ip, r0
	cmp	r3, ip
	strh	r2, [r5, #0]	@ movhi
	sub	r2, r9, #2
	add	r5, r4, #4
	bgt	.L269
	strh	fp, [r4, #4]	@ movhi
	ldr	r5, [sp, #12]
	subs	r2, r9, #3
	add	ip, ip, r5
	add	r5, r4, #6
	bne	.L72
	ldr	r4, [sp, #48]
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #36]
.L241:
	ldr	fp, [sp, #32]
	mov	r7, fp, lsr #16
	b	.L29
.L27:
	add	ip, ip, #4096
	cmp	r3, ip
	sub	r4, r4, #1
	add	sl, sl, #1
	ble	.L274
.L23:
	cmp	r4, #0
	subne	r4, r4, #1
	addne	ip, ip, #4096
	bne	.L24
	ldr	r6, [r0, #4]
	cmp	sl, r6
	bcs	.L275
	ldr	r9, [r0, #36]
	ldr	r4, [r0, #28]
	cmp	r9, #0
	addne	sl, r9, r4
	add	r4, sl, r4
	cmp	r4, r6
	ldr	r7, [r0, #24]
	ldr	fp, [r0, #32]
	subhi	r4, r6, #4
	str	sl, [r0, #36]
	rsb	r6, r7, fp
	ldrb	r9, [sl, #2]	@ zero_extendqisi2
	rsbhi	r4, sl, r4
	mov	fp, #0
	str	r9, [sp, #24]
	subls	r4, r7, #1
	movhi	r4, r4, asl #1
	ldrh	r7, [sl, #0]
	str	r6, [r0, #32]
	add	sl, sl, #4
	str	fp, [sp, #28]
	b	.L236
.L273:
	rsb	ip, r3, #0
	rsb	r9, r3, #4096
	mov	r5, r1
	str	ip, [sp, #12]
	str	r9, [sp, #60]
	str	r1, [sp, #40]
.L64:
	cmp	r4, #0
	moveq	ip, r6
	beq	.L40
	tst	r4, #1
	beq	.L41
	ldrb	r1, [sl, #0]	@ zero_extendqisi2
	str	r1, [sp, #36]
.L42:
	mov	ip, r7, asl #16
	cmp	r3, r6
	str	ip, [sp, #44]
	movgt	ip, ip, asr #16
	strgt	ip, [sp, #16]
	bgt	.L49
	ldr	fp, [sp, #20]
	ldr	ip, [sp, #44]
	mov	r9, fp, asl #16
	mov	r1, ip, asr #16
	rsb	ip, r3, r6
	ldr	r6, [sp, #12]
	rsb	r7, r1, r9, asr #16
	mul	r6, r7, r6
	sub	fp, r2, #1
	tst	fp, #1
	str	r1, [sp, #16]
	str	r6, [sp, #32]
	mul	r1, ip, r7
	bne	.L237
.L259:
	str	r4, [sp, #48]
	str	sl, [sp, #52]
	str	r0, [sp, #56]
.L50:
	ldr	r0, [sp, #16]
	ldrsh	r6, [r5, #0]
	add	r9, r0, r1, asr #12
	mul	r9, r8, r9
	ldr	fp, [sp, #12]
	add	r9, r6, r9, asr #8
	add	r4, r9, #32768
	mov	r7, r4, lsr #16
	ldr	r4, [sp, #32]
	ldr	r6, [sp, #16]
	mov	sl, r7, asl #16
	add	r1, r1, r4
	add	r0, ip, fp
	cmp	sl, #0
	sub	r2, r2, #1
	add	sl, r6, r1, asr #12
	add	r7, r0, r3
	add	r1, r1, r4
	mul	sl, r8, sl
	mov	r6, ip
	mov	r4, r2
	beq	.L46
	ldr	fp, .L280+4
	cmp	r9, fp
	movlt	r9, fp
	ldr	fp, .L280+8
	cmp	r9, fp
	movge	r9, fp
.L46:
	cmp	r4, #0
	strh	r9, [r5], #2	@ movhi
	mov	r9, r5
	beq	.L276
	ldr	fp, [sp, #12]
	cmp	r3, r7
	add	ip, r0, fp
	add	fp, ip, r3
	bgt	.L270
	ldrsh	r7, [r5, #0]
	add	sl, r7, sl, asr #8
	add	r9, sl, #32768
	mov	r2, r9, lsr #16
	mov	r6, r2, asl #16
	cmp	r6, #0
	sub	r2, r4, #1
	mov	r6, r0
	beq	.L174
	ldr	r0, .L280+4
	ldr	r4, .L280+8
	cmp	sl, r0
	movlt	sl, r0
	cmp	sl, r4
	movge	sl, r4
.L174:
	cmp	r3, fp
	strh	sl, [r5], #2	@ movhi
	ble	.L50
.L270:
	ldr	r4, [sp, #48]
	ldr	sl, [sp, #52]
	ldr	r0, [sp, #56]
.L49:
	ldr	r7, [sp, #36]
	ldr	r9, [sp, #24]
	mov	r1, r7, asr #4
	and	r7, r1, #7
	add	fp, r7, r9, asl #3
	add	ip, fp, #16
	ldr	fp, .L280
	tst	r1, #8
	ldr	r9, [sp, #16]
	ldr	r1, [fp, ip, asl #2]
	ldr	ip, [fp, r7, asl #2]
	rsbne	r7, r1, r9
	addeq	r7, r9, r1
	add	r9, r7, #32768
	mov	r1, r9, lsr #16
	ldr	r9, [sp, #24]
	mov	r1, r1, asl #16
	add	ip, ip, r9
	cmp	ip, #88
	movge	ip, #88
	cmp	r1, #0
	bic	r1, ip, ip, asr #31
	sub	r4, r4, #1
	add	sl, sl, #1
	str	r1, [sp, #24]
	beq	.L53
	ldr	r1, .L280+4
	ldr	ip, .L280+8
	cmp	r7, r1
	movlt	r7, r1
	cmp	r7, ip
	movge	r7, ip
.L53:
	add	ip, r6, #4096
	mov	r7, r7, asl #16
	cmp	r3, ip
	mov	r7, r7, lsr #16
	bgt	.L54
	ldr	r9, [sp, #16]
	mov	r1, r7, asl #16
	mov	r1, r1, asr #16
	sub	ip, r2, #1
	str	ip, [sp, #48]
	rsb	ip, r1, r9
	ldr	r9, [sp, #60]
	str	r1, [sp, #20]
	add	r6, r9, r6
	ldr	r1, [sp, #48]
	ldr	r9, [sp, #12]
	tst	r1, #1
	mul	r9, ip, r9
	mul	r1, r6, ip
	str	r9, [sp, #16]
	str	r1, [sp, #36]
	beq	.L271
	ldr	ip, [sp, #20]
	add	r2, ip, r1, asr #12
	mul	r9, r8, r2
	ldrsh	r1, [r5, #0]
	ldr	r2, [sp, #48]
	add	r1, r1, r9, asr #8
	add	ip, r1, #32768
	mov	r9, ip, lsr #16
	mov	ip, r9, asl #16
	cmp	ip, #0
	str	r1, [sp, #32]
	mov	ip, r6
	beq	.L163
	mov	r9, r1
	ldr	r1, .L280+4
	cmp	r9, r1
	movlt	r9, r1
	ldr	r1, .L280+8
	cmp	r1, r9
	movge	r1, r9
	str	r1, [sp, #32]
.L163:
	ldr	r9, [sp, #12]
	strh	r1, [r5], #2	@ movhi
	add	r6, r6, r9
	add	r9, r6, r3
	cmp	r3, r9
	ldr	r1, [sp, #16]
	ldr	r9, [sp, #36]
	add	r9, r9, r1
	str	r9, [sp, #36]
	movle	r1, r9
	bgt	.L54
.L271:
	str	r7, [sp, #32]
	str	r4, [sp, #36]
	str	sl, [sp, #48]
	str	r0, [sp, #52]
	str	fp, [sp, #56]
.L57:
	ldr	fp, [sp, #20]
	ldrsh	r0, [r5, #0]
	add	ip, fp, r1, asr #12
	mul	ip, r8, ip
	ldr	r7, [sp, #12]
	add	r0, r0, ip, asr #8
	add	r9, r0, #32768
	mov	sl, r9, lsr #16
	ldr	r9, [sp, #16]
	mov	ip, sl, asl #16
	cmp	ip, #0
	add	ip, r1, r9
	add	r9, fp, ip, asr #12
	ldr	fp, [sp, #16]
	add	r4, r6, r7
	add	r1, ip, fp
	mov	ip, r6
	add	r6, r4, r7
	add	r7, r6, r3
	sub	r2, r2, #1
	str	r7, [sp, #4]
	add	sl, r4, r3
	mul	r9, r8, r9
	mov	r7, r2
	beq	.L55
	ldr	fp, .L280+4
	cmp	r0, fp
	movlt	r0, fp
	ldr	fp, .L280+8
	cmp	r0, fp
	movge	r0, fp
.L55:
	cmp	r7, #0
	strh	r0, [r5], #2	@ movhi
	beq	.L277
	cmp	r3, sl
	bgt	.L272
	ldrsh	r2, [r5, #0]
	mov	ip, r4
	add	r9, r2, r9, asr #8
	add	fp, r9, #32768
	mov	sl, fp, lsr #16
	mov	r0, sl, asl #16
	cmp	r0, #0
	sub	r2, r7, #1
	beq	.L167
	ldr	r7, .L280+4
	ldr	r4, .L280+8
	cmp	r9, r7
	movlt	r9, r7
	cmp	r9, r4
	movge	r9, r4
.L167:
	ldr	r0, [sp, #4]
	strh	r9, [r5], #2	@ movhi
	cmp	r3, r0
	ble	.L57
.L272:
	ldr	r7, [sp, #32]
	ldr	r4, [sp, #36]
	ldr	sl, [sp, #48]
	ldr	r0, [sp, #52]
	ldr	fp, [sp, #56]
.L54:
	cmp	r4, #0
	bgt	.L58
	ldr	r6, [sp, #44]
	mov	r6, r6, lsr #16
	str	r6, [sp, #20]
.L40:
	ldr	r1, [r0, #4]
	cmp	sl, r1
	bcs	.L278
	ldr	r4, [r0, #36]
	ldr	r6, [r0, #28]
	cmp	r4, #0
	addne	sl, r4, r6
	add	r9, sl, r6
	cmp	r9, r1
	ldr	fp, [r0, #24]
	ldr	r7, [r0, #32]
	subhi	r4, r1, #4
	str	sl, [r0, #36]
	rsb	r1, fp, r7
	ldrb	r9, [sl, #2]	@ zero_extendqisi2
	rsbhi	r4, sl, r4
	subls	r4, fp, #1
	mov	fp, #0
	str	r9, [sp, #24]
	movhi	r4, r4, asl #1
	ldrh	r7, [sl, #0]
	mov	r6, ip
	str	r1, [r0, #32]
	add	sl, sl, #4
	str	fp, [sp, #28]
	b	.L64
.L237:
	ldr	r2, [sp, #16]
	ldrsh	r6, [r5, #0]
	add	r9, r2, r1, asr #12
	mul	r9, r8, r9
	mov	r2, fp
	add	r9, r6, r9, asr #8
	add	r7, r9, #32768
	mov	fp, r7, lsr #16
	mov	r6, fp, asl #16
	cmp	r6, #0
	mov	r6, ip
	beq	.L170
	ldr	r7, .L280+4
	ldr	fp, .L280+8
	cmp	r9, r7
	movlt	r9, r7
	cmp	r9, fp
	movge	r9, fp
.L170:
	ldr	r7, [sp, #12]
	strh	r9, [r5], #2	@ movhi
	add	ip, ip, r7
	add	fp, ip, r3
	ldr	r9, [sp, #32]
	cmp	r3, fp
	add	r1, r1, r9
	ble	.L259
	b	.L49
.L264:
	ldr	r7, [sp, #40]
	ldr	r4, [sp, #44]
	ldr	r0, [sp, #52]
	ldr	r6, [sp, #48]
.L80:
	cmp	r4, #0
	bgt	.L84
	ldr	r1, [sp, #32]
	mov	r6, r1, lsr #16
	str	r6, [sp, #20]
.L66:
	ldr	r1, [r0, #4]
	cmp	sl, r1
	bcs	.L279
	ldr	r4, [r0, #36]
	ldr	r9, [r0, #28]
	cmp	r4, #0
	addne	sl, r4, r9
	add	r6, sl, r9
	cmp	r6, r1
	ldr	fp, [r0, #24]
	ldr	r7, [r0, #32]
	subhi	r4, r1, #4
	str	sl, [r0, #36]
	rsb	r6, fp, r7
	ldrb	r9, [sl, #2]	@ zero_extendqisi2
	rsbhi	r4, sl, r4
	subls	r4, fp, #1
	mov	fp, #0
	str	r9, [sp, #24]
	movhi	r4, r4, asl #1
	ldrh	r7, [sl, #0]
	str	r6, [r0, #32]
	add	sl, sl, #4
	str	fp, [sp, #28]
	b	.L90
.L84:
	ldrb	r1, [sl, #0]	@ zero_extendqisi2
	ldr	fp, [sp, #24]
	and	r9, r1, #7
	str	r1, [sp, #16]
	add	r1, r9, fp, asl #3
	add	r1, r1, #16
	ldr	fp, [sp, #16]
	ldr	r1, [r6, r1, asl #2]
	tst	fp, #8
	mov	fp, r7, asl #16
	rsbne	r1, r1, fp, asr #16
	addeq	r1, r1, fp, asr #16
	add	r7, r1, #32768
	ldr	r9, [r6, r9, asl #2]
	mov	r6, r7, lsr #16
	mov	r7, r6, asl #16
	cmp	r7, #0
	beq	.L71
	ldr	r7, .L280+4
	ldr	r6, .L280+8
	cmp	r1, r7
	movlt	r1, r7
	cmp	r1, r6
	movge	r1, r6
.L71:
	ldr	r7, [sp, #24]
	mov	r6, r1, asl #16
	add	r9, r9, r7
	cmp	r9, #88
	movge	r9, #88
	bic	r9, r9, r9, asr #31
	mov	fp, fp, lsr #16
	sub	r4, r4, #1
	str	r9, [sp, #24]
	mov	r7, r6, lsr #16
	add	ip, ip, #4096
	str	fp, [sp, #20]
	b	.L68
.L41:
	ldr	fp, .L280
	mov	ip, r6
.L58:
	ldrb	r1, [sl, #0]	@ zero_extendqisi2
	ldr	r9, [sp, #24]
	str	r1, [sp, #36]
	and	r6, r1, #7
	add	r1, r6, r9, asl #3
	ldr	r9, [sp, #36]
	add	r1, r1, #16
	tst	r9, #8
	ldr	r9, [fp, r1, asl #2]
	mov	r1, r7, asl #16
	rsbne	r7, r9, r1, asr #16
	addeq	r7, r9, r1, asr #16
	ldr	r6, [fp, r6, asl #2]
	add	fp, r7, #32768
	mov	r9, fp, lsr #16
	mov	fp, r9, asl #16
	cmp	fp, #0
	beq	.L45
	ldr	r9, .L280+4
	ldr	fp, .L280+8
	cmp	r7, r9
	movlt	r7, r9
	cmp	r7, fp
	movge	r7, fp
.L45:
	ldr	fp, [sp, #24]
	mov	r7, r7, asl #16
	add	r9, r6, fp
	cmp	r9, #88
	movge	r9, #88
	bic	r6, r9, r9, asr #31
	str	r6, [sp, #24]
	add	r6, ip, #4096
	mov	ip, r1, lsr #16
	sub	r4, r4, #1
	mov	r7, r7, lsr #16
	str	ip, [sp, #20]
	b	.L42
.L276:
	add	r3, sp, #44
	ldmia	r3, {r3, r4, sl}	@ phole ldm
	ldr	r0, [sp, #56]
	ldr	r1, [sp, #40]
	mov	r7, r3, lsr #16
	b	.L29
.L274:
	subs	r2, r2, #1
	rsb	ip, r3, ip
	beq	.L29
	sub	r6, r2, #1
	cmp	r3, ip
	and	r9, r6, #3
	bgt	.L23
	subs	r2, r6, #0
	add	ip, ip, r8
	beq	.L29
	cmp	r9, #0
	beq	.L92
	cmp	r9, #1
	beq	.L217
	cmp	r9, #2
	beq	.L218
	cmp	r3, ip
	bgt	.L23
	add	ip, ip, r8
	sub	r2, r2, #1
.L218:
	cmp	r3, ip
	bgt	.L23
	add	ip, ip, r8
	sub	r2, r2, #1
.L217:
	cmp	r3, ip
	bgt	.L23
	subs	r2, r2, #1
	add	ip, ip, r8
	beq	.L29
.L92:
	cmp	r3, ip
	bgt	.L23
	add	ip, ip, r8
	sub	r2, r2, #1
	cmp	r3, ip
	mov	r6, r2
	bgt	.L23
	add	ip, ip, r8
	cmp	r3, ip
	sub	r2, r2, #1
	bgt	.L23
	add	ip, ip, r8
	cmp	r3, ip
	sub	r2, r6, #2
	bgt	.L23
	subs	r2, r6, #3
	add	ip, ip, r8
	bne	.L92
	b	.L29
.L269:
	ldr	r4, [sp, #48]
	ldr	r0, [sp, #52]
.L74:
	ldr	r9, [sp, #16]
	ldr	fp, [sp, #24]
	mov	r6, r9, asr #4
	and	r9, r6, #7
	tst	r6, #8
	add	r7, r9, fp, asl #3
	ldr	r6, .L280
	add	r7, r7, #16
	ldr	fp, [r6, r7, asl #2]
	ldr	r7, [r6, r9, asl #2]
	rsbne	fp, fp, r1
	addeq	fp, r1, fp
	str	r7, [sp, #16]
	ldr	r9, [sp, #24]
	add	r7, fp, #32768
	str	fp, [sp, #20]
	ldr	fp, [sp, #16]
	mov	r7, r7, lsr #16
	add	fp, fp, r9
	mov	r9, fp
	cmp	r9, #88
	movge	r9, #88
	mov	r7, r7, asl #16
	bic	r9, r9, r9, asr #31
	cmp	r7, #0
	sub	r4, r4, #1
	add	sl, sl, #1
	str	fp, [sp, #16]
	str	r9, [sp, #24]
	beq	.L79
	ldr	fp, [sp, #20]
	ldr	r7, .L280+4
	ldr	r9, .L280+8
	cmp	fp, r7
	movlt	fp, r7
	cmp	r9, fp
	movge	r9, fp
	str	r9, [sp, #20]
.L79:
	ldr	fp, [sp, #20]
	add	ip, ip, #4096
	mov	r7, fp, asl #16
	cmp	r3, ip
	mov	r7, r7, lsr #16
	bgt	.L80
	mov	r9, r7, asl #16
	mov	fp, r9, asr #16
	rsb	ip, r3, ip
	rsb	r9, fp, r1
	mul	r1, ip, r9
	subs	r2, r2, #1
	add	r1, fp, r1, asr #12
	mul	r1, r8, r1
	str	fp, [sp, #44]
	mov	r1, r1, asr #8
	strh	r1, [r5], #2	@ movhi
	beq	.L81
	rsb	r1, r3, ip
	mul	r1, r9, r1
	sub	fp, r2, #1
	str	r1, [sp, #16]
	ldr	r1, [sp, #12]
	cmp	r3, ip
	mul	r1, r9, r1
	and	r9, fp, #3
	str	r1, [sp, #20]
	str	r9, [sp, #48]
	bgt	.L80
	ldr	r9, [sp, #44]
	ldr	r1, [sp, #16]
	add	r2, r9, r1, asr #12
	mul	r9, r8, r2
	subs	r2, fp, #0
	mov	fp, r9, asr #8
	strh	fp, [r5], #2	@ movhi
	ldr	r1, [sp, #12]
	ldr	fp, [sp, #16]
	ldr	r9, [sp, #20]
	add	ip, ip, r1
	add	r1, fp, r9
	beq	.L260
	ldr	fp, [sp, #48]
	cmp	fp, #0
	beq	.L262
	cmp	fp, #1
	beq	.L229
	cmp	fp, #2
	beq	.L230
	cmp	r3, ip
	bgt	.L80
	ldr	fp, [sp, #44]
	sub	r2, r2, #1
	add	r9, fp, r1, asr #12
	ldr	fp, [sp, #12]
	mul	r9, r8, r9
	add	ip, ip, fp
	ldr	fp, [sp, #20]
	mov	r9, r9, asr #8
	add	r1, r1, fp
	strh	r9, [r5], #2	@ movhi
.L230:
	cmp	r3, ip
	bgt	.L80
	ldr	fp, [sp, #44]
	sub	r2, r2, #1
	add	r9, fp, r1, asr #12
	ldr	fp, [sp, #12]
	mul	r9, r8, r9
	add	ip, ip, fp
	ldr	fp, [sp, #20]
	mov	r9, r9, asr #8
	add	r1, r1, fp
	strh	r9, [r5], #2	@ movhi
.L229:
	cmp	r3, ip
	bgt	.L80
	ldr	fp, [sp, #44]
	subs	r2, r2, #1
	add	r9, fp, r1, asr #12
	mul	r9, r8, r9
	mov	r9, r9, asr #8
	strh	r9, [r5], #2	@ movhi
	ldr	r9, [sp, #12]
	ldr	fp, [sp, #20]
	add	ip, ip, r9
	add	r1, r1, fp
	beq	.L260
.L262:
	ldr	fp, [sp, #44]
	str	r4, [sp, #44]
	ldr	r4, [sp, #20]
	str	r7, [sp, #40]
	str	r0, [sp, #52]
	str	r6, [sp, #48]
.L82:
	add	r0, fp, r1, asr #12
	mul	r0, r8, r0
	cmp	r3, ip
	mov	r6, r0, asr #8
	bgt	.L264
	add	r7, r1, r4
	ldr	r9, [sp, #12]
	strh	r6, [r5], #2	@ movhi
	add	r6, fp, r7, asr #12
	mul	r6, r8, r6
	add	r1, r7, r4
	add	r7, r1, r4
	mov	r0, r6, asr #8
	add	r6, fp, r7, asr #12
	add	ip, ip, r9
	mul	r6, r8, r6
	add	r9, fp, r1, asr #12
	mul	r9, r8, r9
	sub	r2, r2, #1
	str	r0, [sp, #20]
	cmp	r3, ip
	mov	r0, r6, asr #8
	add	r1, r7, r4
	mov	r9, r9, asr #8
	str	r0, [sp, #16]
	mov	r6, r5
	mov	r7, r2
	bgt	.L264
	ldr	r0, [sp, #12]
	sub	r2, r2, #1
	add	ip, ip, r0
	cmp	r3, ip
	ldr	r0, [sp, #20]
	strh	r0, [r5], #2	@ movhi
	bgt	.L264
	ldr	r2, [sp, #12]
	strh	r9, [r5, #0]	@ movhi
	add	ip, ip, r2
	cmp	r3, ip
	sub	r2, r7, #2
	add	r5, r6, #4
	bgt	.L264
	subs	r2, r7, #3
	ldr	r7, [sp, #16]
	strh	r7, [r6, #4]	@ movhi
	ldr	r5, [sp, #12]
	add	ip, ip, r5
	add	r5, r6, #6
	bne	.L82
	ldr	r7, [sp, #40]
	ldr	r4, [sp, #44]
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #36]
.L240:
	ldr	r3, [sp, #32]
	mov	r2, r3, lsr #16
	str	r2, [sp, #20]
	b	.L29
.L265:
	ldr	r1, [sp, #36]
	b	.L241
.L277:
	ldr	r3, [sp, #44]
	ldr	r7, [sp, #32]
	mov	r2, r3, lsr #16
	ldr	r4, [sp, #36]
	ldr	sl, [sp, #48]
	ldr	r0, [sp, #52]
	ldr	r1, [sp, #40]
	str	r2, [sp, #20]
	b	.L29
.L76:
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #36]
	mov	r7, r2, lsr #16
	b	.L29
.L279:
	ldr	r8, [sp, #104]
	mov	sl, #1
	ldr	r1, [sp, #36]
	str	sl, [r8, #0]
	mov	sl, #0
	b	.L29
.L278:
	ldr	r8, [sp, #104]
	mov	sl, #1
	ldr	r1, [sp, #40]
	str	sl, [r8, #0]
	mov	sl, #0
	b	.L29
.L260:
	ldr	r1, [sp, #36]
	b	.L240
.L275:
	ldr	r6, [sp, #104]
	mov	r2, #1
	str	r2, [r6, #0]
	mov	sl, r4
	b	.L29
.L81:
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #36]
	mov	fp, r3, lsr #16
	str	fp, [sp, #20]
	b	.L29
.L281:
	.align	2
.L280:
	.word	.LANCHOR1
	.word	-32768
	.word	32767
	.size	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi, .-_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	.global	__aeabi_idiv
	.section	.text._ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo,"ax",%progbits
	.align	2
	.global	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.hidden	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.type	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo, %function
_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, [r0, #0]
	sub	sp, sp, #28
	cmp	r6, #0
	mov	r5, r0
	mov	r4, r1
	ldr	fp, [r1, #4]
	ldr	r9, [r1, #8]
	ldr	sl, [r1, #12]
	beq	.L286
.L283:
	mov	r1, #1
	ldr	r0, [r4, #0]
	bl	s3eSoundChannelGetInt
	mov	r6, r0
	mov	r0, #1
	bl	s3eSoundGetInt
	mov	r1, #3
	mov	r7, r0
	ldr	r0, [r4, #0]
	bl	s3eSoundChannelGetInt
	mov	r1, r7
	mov	r7, #0
	mov	r8, r0
	mov	r0, r6, asl #12
	add	r6, sp, #24
	str	r7, [r6, #-4]!
	bl	__aeabi_idiv
	mov	r2, r9
	mov	r1, fp
	stmia	sp, {r8, sl}	@ phole stm
	str	r6, [sp, #8]
	mov	r3, r0
	mov	r0, r5
	bl	_ZN15CIwChannelADPCM22GenerateADPCMAudioFastEPsiiiiPi
	ldr	r2, [sp, #20]
	cmp	r2, r7
	movne	r2, #1
	strneb	r2, [r4, #28]
	strne	r7, [r5, #0]
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L286:
	ldr	r3, [r1, #16]
	str	r3, [r0, #0]
	ldr	lr, [r1, #20]
	ldr	ip, [r1, #16]
	bic	r8, lr, #1
	add	r0, ip, r8, asl #1
	str	r0, [r5, #4]
	mov	r1, #2
	ldr	r0, [r4, #0]
	bl	s3eSoundChannelGetInt
	ldr	r7, [r0, #36]
	str	r7, [r5, #24]
	ldr	r1, [r0, #40]
	str	r1, [r5, #28]
	ldr	r2, [r0, #20]
	str	r2, [r5, #32]
	strh	r6, [r5, #20]	@ movhi
	strb	r6, [r5, #22]
	str	r6, [r5, #36]
	str	r6, [r5, #8]
	str	r6, [r5, #12]
	strh	r6, [r5, #16]	@ movhi
	strb	r6, [r5, #23]
	b	.L283
	.size	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo, .-_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.hidden	_ZN15CIwChannelADPCM13isInitializedE
	.global	_ZN15CIwChannelADPCM13isInitializedE
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	_ZL13stepsizeTable, %object
	.size	_ZL13stepsizeTable, 356
_ZL13stepsizeTable:
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	16
	.word	17
	.word	19
	.word	21
	.word	23
	.word	25
	.word	28
	.word	31
	.word	34
	.word	37
	.word	41
	.word	45
	.word	50
	.word	55
	.word	60
	.word	66
	.word	73
	.word	80
	.word	88
	.word	97
	.word	107
	.word	118
	.word	130
	.word	143
	.word	157
	.word	173
	.word	190
	.word	209
	.word	230
	.word	253
	.word	279
	.word	307
	.word	337
	.word	371
	.word	408
	.word	449
	.word	494
	.word	544
	.word	598
	.word	658
	.word	724
	.word	796
	.word	876
	.word	963
	.word	1060
	.word	1166
	.word	1282
	.word	1411
	.word	1552
	.word	1707
	.word	1878
	.word	2066
	.word	2272
	.word	2499
	.word	2749
	.word	3024
	.word	3327
	.word	3660
	.word	4026
	.word	4428
	.word	4871
	.word	5358
	.word	5894
	.word	6484
	.word	7132
	.word	7845
	.word	8630
	.word	9493
	.word	10442
	.word	11487
	.word	12635
	.word	13899
	.word	15289
	.word	16818
	.word	18500
	.word	20350
	.word	22385
	.word	24623
	.word	27086
	.word	29794
	.word	32767
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	_ZL6sTable, %object
	.size	_ZL6sTable, 2912
_ZL6sTable:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	0
	.space	2844
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN15CIwChannelADPCM13isInitializedE, %object
	.size	_ZN15CIwChannelADPCM13isInitializedE, 4
_ZN15CIwChannelADPCM13isInitializedE:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
