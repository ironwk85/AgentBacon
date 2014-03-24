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
	.file	"IwSoundManager.cpp"
	.section	.text._ZN15CIwSoundManager16SetMaxSoundInstsEj,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.hidden	_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.type	_ZN15CIwSoundManager16SetMaxSoundInstsEj, %function
_ZN15CIwSoundManager16SetMaxSoundInstsEj:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN15CIwSoundManager16SetMaxSoundInstsEj, .-_ZN15CIwSoundManager16SetMaxSoundInstsEj
	.section	.text._ZN15CIwSoundManager11GetFreeInstEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager11GetFreeInstEv
	.hidden	_ZN15CIwSoundManager11GetFreeInstEv
	.type	_ZN15CIwSoundManager11GetFreeInstEv, %function
_ZN15CIwSoundManager11GetFreeInstEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	ldr	r2, [r0, #16]
	cmp	r3, r2
	ldrcc	r2, [r0, #12]
	addcc	r1, r3, #1
	strcc	r1, [r0, #20]
	ldrcc	r0, [r2, r3, asl #2]
	movcs	r0, #0
	ldrcch	r3, [r0, #10]
	biccc	r3, r3, #4
	strcch	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN15CIwSoundManager11GetFreeInstEv, .-_ZN15CIwSoundManager11GetFreeInstEv
	.section	.text._ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.hidden	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.type	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst, %function
_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldrh	r2, [r1, #10]
	ldrh	r3, [r1, #16]
	orr	ip, r2, #4
	add	r3, r3, #1
	strh	ip, [r1, #10]	@ movhi
	strh	r3, [r1, #16]	@ movhi
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #12]
	sub	ip, r2, #1
	add	ip, r3, ip, asl #2
	cmp	r3, ip
	bhi	.L12
	ldr	r2, [r3, #0]
	cmp	r2, r1
	beq	.L9
	rsb	r2, r3, ip
	mov	r2, r2, lsr #2
	ands	r2, r2, #3
	beq	.L13
	add	r3, r3, #4
	cmp	ip, r3
	bcc	.L12
	ldr	r4, [r3, #0]
	cmp	r4, r1
	beq	.L37
	cmp	r2, #1
	beq	.L13
	cmp	r2, #2
	beq	.L32
	ldr	r2, [r3, #4]!
	cmp	r2, r1
	beq	.L37
.L32:
	ldr	r2, [r3, #4]!
	cmp	r2, r1
	beq	.L37
.L13:
	add	r3, r3, #4
	cmp	ip, r3
	mov	r2, r3
	bcc	.L12
	ldr	r4, [r3, #0]
	cmp	r4, r1
	beq	.L37
	ldr	r4, [r3, #4]!
	cmp	r4, r1
	beq	.L37
	ldr	r4, [r2, #8]
	add	r3, r2, #8
	cmp	r4, r1
	beq	.L37
	ldr	r4, [r2, #12]
	add	r3, r2, #12
	cmp	r4, r1
	bne	.L13
.L37:
	mov	r2, r1
.L9:
	ldr	r1, [ip, #0]
	str	r1, [r3, #0]
	str	r2, [ip, #0]
	ldr	ip, [r0, #20]
	sub	r1, ip, #1
	str	r1, [r0, #20]
.L12:
	ldmfd	sp!, {r4}
	bx	lr
	.size	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst, .-_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	.section	.text._ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi,"axG",%progbits,_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.hidden	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.type	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi, %function
_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r2, #0
	sub	sp, sp, #8
	mov	ip, r0
	ldr	r7, [sp, #40]
	ldr	r0, [sp, #44]
	beq	.L40
	ldr	r6, [ip, #8]
	cmp	r0, #0
	sub	r6, r6, #1
	ldr	r5, [ip, #0]
	ldr	r4, [ip, #12]
	mov	r0, r1
	beq	.L119
.L118:
	cmp	r5, r6
	beq	.L46
	bhi	.L158
	cmp	r2, #0
	beq	.L48
	cmp	r7, #0
	beq	.L104
	ldrsb	r8, [r5, #0]
	ldrsb	sl, [r5, #1]
	ldrsh	fp, [r0, #0]
	rsb	r9, r8, sl
	mul	r9, r4, r9
	sub	sl, r2, #1
	add	r8, r8, r9, asr #12
	mul	r8, r7, r8
	and	sl, sl, #1
	add	r8, fp, r8, asr #8
	add	r9, r8, #32768
	mov	r9, r9, lsr #16
	mov	r9, r9, asl #16
	cmp	r9, #0
	beq	.L67
	ldr	r9, .L159
	cmp	r8, r9
	movlt	r8, r9
	ldr	r9, .L159+4
	cmp	r8, r9
	movge	r8, r9
.L67:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	strh	r8, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L118
	cmp	r2, #0
	beq	.L48
	cmp	sl, #0
	beq	.L59
	ldrsb	r8, [r5, #0]
	ldrsb	r9, [r5, #1]
	ldrsh	sl, [r0, #0]
	rsb	r9, r8, r9
	mul	r9, r4, r9
	add	r8, r8, r9, asr #12
	mul	r8, r7, r8
	add	sl, sl, r8, asr #8
	add	fp, sl, #32768
	mov	fp, fp, lsr #16
	mov	fp, fp, asl #16
	cmp	fp, #0
	beq	.L69
	ldr	r8, .L159
	ldr	r9, .L159+4
	cmp	sl, r8
	movlt	sl, r8
	cmp	sl, r9
	movge	sl, r9
.L69:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L118
.L155:
	cmp	r2, #0
	beq	.L48
.L59:
	ldrsb	r8, [r5, #0]
	ldrsb	r9, [r5, #1]
	ldrsh	sl, [r0, #0]
	rsb	r9, r8, r9
	mul	r9, r4, r9
	add	r4, r4, r3
	add	r8, r8, r9, asr #12
	mul	r8, r7, r8
	add	r5, r5, r4, asr #12
	add	sl, sl, r8, asr #8
	add	r8, sl, #32768
	mov	r8, r8, lsr #16
	mov	r8, r8, asl #16
	cmp	r8, #0
	sub	r2, r2, #1
	mov	r4, r4, asl #20
	beq	.L50
	ldr	r8, .L159
	ldr	r9, .L159+4
	cmp	sl, r8
	movlt	sl, r8
	cmp	sl, r9
	movge	sl, r9
.L50:
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	mov	sl, r0
	mov	r8, r2
	bls	.L118
	ldrsb	r2, [r5, #0]
	ldrsb	r9, [r5, #1]
	ldrsh	r0, [r0, #0]
	rsb	r9, r2, r9
	mul	r9, r4, r9
	add	r2, r2, r9, asr #12
	mul	r2, r7, r2
	add	r2, r0, r2, asr #8
	add	r0, r2, #32768
	mov	r0, r0, lsr #16
	mov	r0, r0, asl #16
	cmp	r0, #0
	beq	.L72
	ldr	r0, .L159
	ldr	r9, .L159+4
	cmp	r2, r0
	movlt	r2, r0
	cmp	r2, r9
	movge	r2, r9
.L72:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	mov	r0, sl
	mov	r4, r4, asl #20
	cmp	r6, r5
	strh	r2, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r8, #1
	bhi	.L155
	b	.L118
.L44:
	mov	r5, r6
.L48:
	rsb	r0, r1, r0
	mov	r0, r0, asr #1
	str	r4, [ip, #12]
	str	r5, [ip, #0]
.L40:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L52:
	cmp	r2, #0
	beq	.L44
	ldrsb	sl, [r5, #0]
	add	r8, r4, r3
	mul	sl, r7, sl
	mov	r4, r8, asl #20
	mov	sl, sl, asr #8
	add	r5, r5, r8, asr #12
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	strh	sl, [r0], #2	@ movhi
.L119:
	cmp	r5, r6
	beq	.L52
	bhi	.L158
	cmp	r2, #0
	beq	.L48
	cmp	r7, #0
	beq	.L106
	ldrsb	fp, [r5, #0]
	ldrsb	r9, [r5, #1]
	add	r8, r4, r3
	rsb	r9, fp, r9
	mul	r4, r9, r4
	add	r5, r5, r8, asr #12
	add	sl, fp, r4, asr #12
	mul	sl, r7, sl
	sub	fp, r2, #1
	mov	sl, sl, asr #8
	mov	r2, r8, asl #20
	cmp	r6, r5
	mov	r4, r2, lsr #20
	strh	sl, [r0], #2	@ movhi
	mov	r2, fp
	and	fp, fp, #3
	bls	.L119
	cmp	r2, #0
	beq	.L48
	cmp	fp, #0
	beq	.L147
	cmp	fp, #1
	beq	.L113
	cmp	fp, #2
	beq	.L114
	ldrsb	sl, [r5, #0]
	ldrsb	r9, [r5, #1]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	add	r5, r5, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	mov	r4, r8, asl #20
	mov	sl, sl, asr #8
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
.L114:
	ldrsb	sl, [r5, #0]
	ldrsb	r9, [r5, #1]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	add	r5, r5, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	mov	r4, r8, asl #20
	mov	sl, sl, asr #8
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
.L113:
	ldrsb	sl, [r5, #0]
	ldrsb	r9, [r5, #1]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	add	r5, r5, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	mov	r4, r8, asl #20
	mov	sl, sl, asr #8
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
	cmp	r2, #0
	beq	.L48
.L147:
	mov	fp, r1
	str	ip, [sp, #4]
.L61:
	ldrsb	ip, [r5, #0]
	ldrsb	r8, [r5, #1]
	add	r1, r4, r3
	rsb	r8, ip, r8
	mul	r4, r8, r4
	add	r5, r5, r1, asr #12
	add	sl, ip, r4, asr #12
	mul	sl, r7, sl
	mov	r4, r1, asl #20
	mov	ip, sl, asr #8
	sub	r2, r2, #1
	mov	r4, r4, lsr #20
	cmp	r6, r5
	strh	ip, [r0], #2	@ movhi
	mov	sl, r2
	add	ip, r4, r3
	mov	r1, r0
	bls	.L149
	ldrsb	r8, [r5, #0]
	ldrsb	r9, [r5, #1]
	add	r5, r5, ip, asr #12
	rsb	r9, r8, r9
	mul	r4, r9, r4
	cmp	r6, r5
	add	r8, r8, r4, asr #12
	mul	r8, r7, r8
	mov	r4, ip, asl #20
	mov	r8, r8, asr #8
	mov	r4, r4, lsr #20
	strh	r8, [r0], #2	@ movhi
	add	ip, r4, r3
	sub	r2, r2, #1
	bls	.L149
	ldrsb	r2, [r5, #0]
	ldrsb	r8, [r5, #1]
	add	r5, r5, ip, asr #12
	rsb	r8, r2, r8
	mul	r4, r8, r4
	cmp	r6, r5
	add	r2, r2, r4, asr #12
	mul	r2, r7, r2
	mov	r4, ip, asl #20
	mov	r4, r4, lsr #20
	mov	ip, r2, asr #8
	strh	ip, [r0, #0]	@ movhi
	sub	r2, sl, #2
	add	ip, r4, r3
	add	r0, r1, #4
	bls	.L149
	ldrsb	r2, [r5, #0]
	ldrsb	r0, [r5, #1]
	add	r5, r5, ip, asr #12
	rsb	r0, r2, r0
	mul	r4, r0, r4
	cmp	r6, r5
	add	r2, r2, r4, asr #12
	mul	r2, r7, r2
	mov	r4, ip, asl #20
	mov	r0, r2, asr #8
	strh	r0, [r1, #4]	@ movhi
	sub	r2, sl, #3
	add	r0, r1, #6
	mov	r4, r4, lsr #20
	bls	.L149
	cmp	r2, #0
	bne	.L61
	ldr	ip, [sp, #4]
	mov	r1, fp
	b	.L48
.L104:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	sub	r8, r2, #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	mov	r2, r8
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	and	r8, r8, #3
	bls	.L118
	cmp	r2, #0
	beq	.L48
	cmp	r8, #0
	beq	.L60
	cmp	r8, #1
	beq	.L110
	cmp	r8, #2
	beq	.L111
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L118
.L111:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L118
.L110:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L118
.L156:
	cmp	r2, #0
	beq	.L48
.L60:
	add	r9, r4, r3
	mov	sl, r9, asl #20
	add	r5, r5, r9, asr #12
	mov	r4, sl, lsr #20
	add	r0, r0, #2
	sub	r2, r2, #1
	cmp	r6, r5
	add	r8, r4, r3
	mov	sl, r0
	mov	r9, r2
	bls	.L118
	add	r5, r5, r8, asr #12
	mov	r4, r8, asl #20
	mov	r4, r4, lsr #20
	cmp	r6, r5
	add	r8, r4, r3
	add	r0, r0, #2
	sub	r2, r2, #1
	bls	.L118
	mov	r2, r8, asl #20
	add	r5, r5, r8, asr #12
	mov	r4, r2, lsr #20
	cmp	r6, r5
	add	r8, r4, r3
	add	r0, sl, #4
	sub	r2, r9, #2
	bls	.L118
	add	r5, r5, r8, asr #12
	mov	r4, r8, asl #20
	cmp	r6, r5
	sub	r2, r9, #3
	add	r0, sl, #6
	mov	r4, r4, lsr #20
	bhi	.L156
	b	.L118
.L106:
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	sub	r8, r2, #1
	cmp	r6, r5
	mov	r2, r4, asl #20
	mov	r4, r2, lsr #20
	strh	r7, [r0], #2	@ movhi
	mov	r2, r8
	and	r8, r8, #3
	bls	.L119
	cmp	r2, #0
	beq	.L48
	cmp	r8, #0
	beq	.L62
	cmp	r8, #1
	beq	.L116
	cmp	r8, #2
	beq	.L117
	add	r4, r4, r3
	add	r5, r5, r4, asr #12
	cmp	r6, r5
	mov	r4, r4, asl #20
	strh	r7, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
.L117:
	add	sl, r4, r3
	add	r5, r5, sl, asr #12
	mov	r4, sl, asl #20
	cmp	r6, r5
	mov	sl, #0	@ movhi
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
.L116:
	add	r8, r4, r3
	add	r5, r5, r8, asr #12
	mov	r4, r8, asl #20
	cmp	r6, r5
	mov	r8, #0	@ movhi
	strh	r8, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L119
.L157:
	cmp	r2, #0
	beq	.L48
.L62:
	add	r9, r4, r3
	mov	sl, r9, asl #20
	add	r5, r5, r9, asr #12
	mov	r8, #0	@ movhi
	sub	r2, r2, #1
	mov	r4, sl, lsr #20
	cmp	r6, r5
	strh	r8, [r0], #2	@ movhi
	add	sl, r4, r3
	mov	r8, r0
	mov	r9, r2
	bls	.L119
	add	r5, r5, sl, asr #12
	mov	r4, sl, asl #20
	mov	r4, r4, lsr #20
	mov	sl, #0	@ movhi
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	sub	r2, r2, #1
	add	sl, r4, r3
	bls	.L119
	mov	r2, sl, asl #20
	add	r5, r5, sl, asr #12
	mov	r4, r2, lsr #20
	mov	sl, #0	@ movhi
	cmp	r6, r5
	strh	sl, [r0, #0]	@ movhi
	sub	r2, r9, #2
	add	sl, r4, r3
	add	r0, r8, #4
	bls	.L119
	add	r5, r5, sl, asr #12
	mov	r0, #0	@ movhi
	mov	r4, sl, asl #20
	cmp	r6, r5
	strh	r0, [r8, #4]	@ movhi
	sub	r2, r9, #3
	add	r0, r8, #6
	mov	r4, r4, lsr #20
	bhi	.L157
	b	.L119
.L46:
	cmp	r2, #0
	beq	.L44
	ldrsb	r8, [r6, #0]
	ldrsh	r5, [r0, #0]
	mul	r8, r7, r8
	add	r8, r5, r8, asr #8
	add	r5, r8, #32768
	mov	r5, r5, lsr #16
	mov	r5, r5, asl #16
	cmp	r5, #0
	beq	.L45
	ldr	r9, .L159
	cmp	r8, r9
	movlt	r8, r9
	ldr	r9, .L159+4
	cmp	r8, r9
	movge	r8, r9
.L45:
	add	r5, r4, r3
	mov	r4, r5, asl #20
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	add	r5, r6, r5, asr #12
	strh	r8, [r0], #2	@ movhi
	b	.L118
.L149:
	ldr	ip, [sp, #4]
	mov	r1, fp
	b	.L119
.L158:
	ldr	sl, [sp, #48]
	mov	r3, #1
	str	r3, [sl, #0]
	b	.L48
.L160:
	.align	2
.L159:
	.word	-32768
	.word	32767
	.size	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi, .-_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	.section	.text._ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi,"axG",%progbits,_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.hidden	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.type	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi, %function
_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r2, #0
	sub	sp, sp, #8
	mov	ip, r0
	ldr	r7, [sp, #40]
	ldr	r0, [sp, #44]
	beq	.L162
	ldr	r6, [ip, #8]
	cmp	r0, #0
	sub	r6, r6, #2
	ldr	r5, [ip, #0]
	ldr	r4, [ip, #12]
	mov	r0, r1
	beq	.L241
.L240:
	cmp	r5, r6
	beq	.L168
	bhi	.L279
	cmp	r2, #0
	beq	.L170
	cmp	r7, #0
	beq	.L226
	ldrsh	r8, [r5, #0]
	ldrsh	sl, [r5, #2]
	ldrsh	fp, [r0, #0]
	rsb	r9, r8, sl
	mul	r9, r4, r9
	sub	sl, r2, #1
	add	r8, r8, r9, asr #12
	mul	r8, r7, r8
	and	sl, sl, #1
	add	r8, fp, r8, asr #8
	add	r9, r8, #32768
	mov	r9, r9, lsr #16
	mov	r9, r9, asl #16
	cmp	r9, #0
	beq	.L189
	ldr	r9, .L280
	cmp	r8, r9
	movlt	r8, r9
	ldr	r9, .L280+4
	cmp	r8, r9
	movge	r8, r9
.L189:
	add	r4, r4, r3
	mov	r9, r4, asr #12
	add	r5, r5, r9, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	strh	r8, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
	cmp	r2, #0
	beq	.L170
	cmp	sl, #0
	beq	.L181
	ldrsh	r8, [r5, #0]
	ldrsh	r9, [r5, #2]
	ldrsh	sl, [r0, #0]
	rsb	r9, r8, r9
	mul	r9, r4, r9
	add	fp, r8, r9, asr #12
	mul	fp, r7, fp
	add	sl, sl, fp, asr #8
	add	r8, sl, #32768
	mov	fp, r8, lsr #16
	mov	fp, fp, asl #16
	cmp	fp, #0
	beq	.L191
	ldr	r8, .L280
	ldr	r9, .L280+4
	cmp	sl, r8
	movlt	sl, r8
	cmp	sl, r9
	movge	sl, r9
.L191:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
.L277:
	cmp	r2, #0
	beq	.L170
.L181:
	ldrsh	fp, [r5, #0]
	ldrsh	r9, [r5, #2]
	ldrsh	sl, [r0, #0]
	rsb	r9, fp, r9
	mul	r9, r4, r9
	add	r4, r4, r3
	add	r8, fp, r9, asr #12
	mul	r8, r7, r8
	mov	fp, r4, asr #12
	add	sl, sl, r8, asr #8
	add	r8, sl, #32768
	mov	r8, r8, lsr #16
	mov	r8, r8, asl #16
	cmp	r8, #0
	add	r5, r5, fp, asl #1
	sub	r2, r2, #1
	mov	r4, r4, asl #20
	beq	.L172
	ldr	r8, .L280
	ldr	r9, .L280+4
	cmp	sl, r8
	movlt	sl, r8
	cmp	sl, r9
	movge	sl, r9
.L172:
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	mov	sl, r0
	mov	r8, r2
	bls	.L240
	ldrsh	r2, [r5, #0]
	ldrsh	r9, [r5, #2]
	ldrsh	r0, [r0, #0]
	rsb	r9, r2, r9
	mul	r9, r4, r9
	add	r2, r2, r9, asr #12
	mul	r2, r7, r2
	add	r2, r0, r2, asr #8
	add	r0, r2, #32768
	mov	r0, r0, lsr #16
	mov	r0, r0, asl #16
	cmp	r0, #0
	beq	.L194
	ldr	r0, .L280
	ldr	r9, .L280+4
	cmp	r2, r0
	movlt	r2, r0
	cmp	r2, r9
	movge	r2, r9
.L194:
	add	r4, r4, r3
	mov	r0, r4, asr #12
	add	r5, r5, r0, asl #1
	mov	r4, r4, asl #20
	mov	r0, sl
	cmp	r6, r5
	strh	r2, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r8, #1
	bhi	.L277
	b	.L240
.L166:
	mov	r5, r6
.L170:
	rsb	r0, r1, r0
	mov	r0, r0, asr #1
	str	r4, [ip, #12]
	str	r5, [ip, #0]
.L162:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L174:
	cmp	r2, #0
	beq	.L166
	ldrsh	sl, [r5, #0]
	add	r8, r4, r3
	mul	sl, r7, sl
	mov	r4, r8, asl #20
	mov	r8, r8, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, lsr #20
	mov	r8, sl, asr #8
	sub	r2, r2, #1
	strh	r8, [r0], #2	@ movhi
.L241:
	cmp	r5, r6
	beq	.L174
	bhi	.L279
	cmp	r2, #0
	beq	.L170
	cmp	r7, #0
	beq	.L228
	ldrsh	r8, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	sl, r4, r3
	rsb	r9, r8, r9
	mul	r4, r9, r4
	mov	r9, sl, asr #12
	add	r4, r8, r4, asr #12
	mul	r4, r7, r4
	add	r5, r5, r9, asl #1
	sub	r8, r2, #1
	cmp	r6, r5
	mov	r2, r4, asr #8
	mov	r4, sl, asl #20
	strh	r2, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	mov	r2, r8
	and	r8, r8, #3
	bls	.L241
	cmp	r2, #0
	beq	.L170
	cmp	r8, #0
	beq	.L269
	cmp	r8, #1
	beq	.L235
	cmp	r8, #2
	beq	.L236
	ldrsh	sl, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	mov	r9, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	add	r5, r5, r9, asl #1
	mov	sl, sl, asr #8
	mov	r4, r8, asl #20
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
.L236:
	ldrsh	sl, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	mov	r9, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	add	r5, r5, r9, asl #1
	mov	sl, sl, asr #8
	mov	r4, r8, asl #20
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
.L235:
	ldrsh	sl, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	r8, r4, r3
	rsb	r9, sl, r9
	mul	r4, r9, r4
	mov	r9, r8, asr #12
	add	sl, sl, r4, asr #12
	mul	sl, r7, sl
	add	r5, r5, r9, asl #1
	mov	sl, sl, asr #8
	mov	r4, r8, asl #20
	cmp	r6, r5
	strh	sl, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
	cmp	r2, #0
	beq	.L170
.L269:
	str	ip, [sp, #0]
	str	r1, [sp, #4]
.L183:
	ldrsh	fp, [r5, #0]
	ldrsh	ip, [r5, #2]
	add	r1, r4, r3
	rsb	r8, fp, ip
	mul	r4, r8, r4
	mov	r8, r1, asr #12
	add	sl, fp, r4, asr #12
	mul	sl, r7, sl
	mov	fp, r1, asl #20
	mov	ip, sl, asr #8
	mov	r4, fp, lsr #20
	add	r5, r5, r8, asl #1
	strh	ip, [r0], #2	@ movhi
	sub	r2, r2, #1
	add	ip, r4, r3
	cmp	r6, r5
	mov	fp, ip, asr #12
	mov	r1, r0
	mov	sl, r2
	bls	.L278
	ldrsh	r8, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	r5, r5, fp, asl #1
	rsb	r9, r8, r9
	mul	r9, r4, r9
	mov	r4, ip, asl #20
	add	r8, r8, r9, asr #12
	mul	r8, r7, r8
	mov	r4, r4, lsr #20
	mov	r8, r8, asr #8
	add	ip, r4, r3
	cmp	r6, r5
	strh	r8, [r0], #2	@ movhi
	sub	r2, r2, #1
	mov	r8, ip, asr #12
	bls	.L278
	ldrsh	r2, [r5, #0]
	ldrsh	r9, [r5, #2]
	add	r5, r5, r8, asl #1
	rsb	r9, r2, r9
	mul	r9, r4, r9
	mov	r8, ip, asl #20
	add	r2, r2, r9, asr #12
	mul	r2, r7, r2
	mov	r4, r8, lsr #20
	mov	ip, r2, asr #8
	strh	ip, [r0, #0]	@ movhi
	cmp	r6, r5
	add	ip, r4, r3
	mov	r8, ip, asr #12
	add	r0, r1, #4
	sub	r2, sl, #2
	bls	.L278
	ldrsh	r2, [r5, #0]
	ldrsh	r0, [r5, #2]
	add	r5, r5, r8, asl #1
	rsb	r0, r2, r0
	mul	r0, r4, r0
	cmp	r6, r5
	add	r2, r2, r0, asr #12
	mul	r2, r7, r2
	mov	r4, ip, asl #20
	mov	r0, r2, asr #8
	strh	r0, [r1, #4]	@ movhi
	sub	r2, sl, #3
	add	r0, r1, #6
	mov	r4, r4, lsr #20
	bls	.L278
	cmp	r2, #0
	bne	.L183
	ldr	ip, [sp, #0]
	ldr	r1, [sp, #4]
	b	.L170
.L226:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	sub	r8, r2, #1
	cmp	r6, r5
	mov	r2, r8
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	and	r8, r8, #3
	bls	.L240
	cmp	r2, #0
	beq	.L170
	cmp	r8, #0
	beq	.L264
	cmp	r8, #1
	beq	.L232
	cmp	r8, #2
	beq	.L233
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
.L233:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
.L232:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	add	r0, r0, #2
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L240
	cmp	r2, #0
	beq	.L170
.L264:
	mov	fp, r7
.L182:
	add	sl, r4, r3
	mov	r9, sl, asr #12
	mov	r7, sl, asl #20
	add	r5, r5, r9, asl #1
	mov	r4, r7, lsr #20
	add	r0, r0, #2
	sub	r2, r2, #1
	add	r7, r4, r3
	cmp	r6, r5
	mov	r9, r7, asr #12
	mov	r8, r0
	mov	sl, r2
	bls	.L266
	mov	r4, r7, asl #20
	add	r5, r5, r9, asl #1
	mov	r4, r4, lsr #20
	add	r7, r4, r3
	cmp	r6, r5
	mov	r9, r7, asr #12
	add	r0, r0, #2
	sub	r2, r2, #1
	bls	.L266
	mov	r2, r7, asl #20
	add	r5, r5, r9, asl #1
	mov	r4, r2, lsr #20
	add	r7, r4, r3
	cmp	r6, r5
	mov	r9, r7, asr #12
	add	r0, r8, #4
	sub	r2, sl, #2
	bls	.L266
	add	r5, r5, r9, asl #1
	mov	r4, r7, asl #20
	cmp	r6, r5
	sub	r2, sl, #3
	add	r0, r8, #6
	mov	r4, r4, lsr #20
	bls	.L266
	cmp	r2, #0
	bne	.L182
	b	.L170
.L228:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	cmp	r6, r5
	sub	r8, r2, #1
	mov	r2, r4, asl #20
	mov	r4, r2, lsr #20
	strh	r7, [r0], #2	@ movhi
	mov	r2, r8
	and	r8, r8, #3
	bls	.L241
	cmp	r2, #0
	beq	.L170
	cmp	r8, #0
	beq	.L274
	cmp	r8, #1
	beq	.L238
	cmp	r8, #2
	beq	.L239
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	cmp	r6, r5
	strh	r7, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
.L239:
	add	r4, r4, r3
	mov	r8, r4, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r4, asl #20
	mov	r8, #0	@ movhi
	cmp	r6, r5
	strh	r8, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
.L238:
	add	r9, r4, r3
	mov	r8, r9, asr #12
	add	r5, r5, r8, asl #1
	mov	r4, r9, asl #20
	cmp	r6, r5
	mov	r9, #0	@ movhi
	strh	r9, [r0], #2	@ movhi
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	bls	.L241
	cmp	r2, #0
	beq	.L170
.L274:
	mov	fp, r7
.L184:
	add	sl, r4, r3
	mov	r8, sl, asr #12
	mov	r7, sl, asl #20
	add	r5, r5, r8, asl #1
	mov	r4, r7, lsr #20
	mov	r9, #0	@ movhi
	sub	r2, r2, #1
	add	r8, r4, r3
	cmp	r6, r5
	strh	r9, [r0], #2	@ movhi
	mov	sl, r2
	mov	r9, r8, asr #12
	mov	r7, r0
	bls	.L276
	mov	r4, r8, asl #20
	add	r5, r5, r9, asl #1
	mov	r4, r4, lsr #20
	mov	r9, #0	@ movhi
	add	r8, r4, r3
	cmp	r6, r5
	strh	r9, [r0], #2	@ movhi
	sub	r2, r2, #1
	mov	r9, r8, asr #12
	bls	.L276
	mov	r4, r8, asl #20
	add	r5, r5, r9, asl #1
	mov	r4, r4, lsr #20
	mov	r2, #0	@ movhi
	add	r8, r4, r3
	cmp	r6, r5
	strh	r2, [r0, #0]	@ movhi
	mov	r9, r8, asr #12
	add	r0, r7, #4
	sub	r2, sl, #2
	bls	.L276
	add	r5, r5, r9, asl #1
	mov	r4, r8, asl #20
	cmp	r6, r5
	mov	r8, #0	@ movhi
	strh	r8, [r7, #4]	@ movhi
	sub	r2, sl, #3
	add	r0, r7, #6
	mov	r4, r4, lsr #20
	bls	.L276
	cmp	r2, #0
	bne	.L184
	b	.L170
.L168:
	cmp	r2, #0
	beq	.L166
	ldrsh	r8, [r6, #0]
	ldrsh	r5, [r0, #0]
	mul	r8, r7, r8
	add	r8, r5, r8, asr #8
	add	r5, r8, #32768
	mov	r5, r5, lsr #16
	mov	r5, r5, asl #16
	cmp	r5, #0
	beq	.L167
	ldr	r9, .L280
	cmp	r8, r9
	movlt	r8, r9
	ldr	r9, .L280+4
	cmp	r8, r9
	movge	r8, r9
.L167:
	add	r5, r4, r3
	mov	r4, r5, asl #20
	mov	r5, r5, asr #12
	add	r5, r6, r5, asl #1
	mov	r4, r4, lsr #20
	sub	r2, r2, #1
	strh	r8, [r0], #2	@ movhi
	b	.L240
.L276:
	mov	r7, fp
	b	.L241
.L266:
	mov	r7, fp
	b	.L240
.L278:
	ldr	ip, [sp, #0]
	ldr	r1, [sp, #4]
	b	.L241
.L279:
	ldr	r2, [sp, #48]
	mov	r3, #1
	str	r3, [r2, #0]
	b	.L170
.L281:
	.align	2
.L280:
	.word	-32768
	.word	32767
	.size	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi, .-_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	.section	.text._ZN15CIwSoundManager9ResumeAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager9ResumeAllEv
	.hidden	_ZN15CIwSoundManager9ResumeAllEv
	.type	_ZN15CIwSoundManager9ResumeAllEv, %function
_ZN15CIwSoundManager9ResumeAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #20]
	mov	r5, r0
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	mov	r4, #0
.L284:
	ldr	r1, [r5, #12]
	ldr	r0, [r1, r4, asl #2]
	bl	_ZN12CIwSoundInst6ResumeEv
	ldr	r0, [r5, #20]
	add	r4, r4, #1
	cmp	r0, r4
	bhi	.L284
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager9ResumeAllEv, .-_ZN15CIwSoundManager9ResumeAllEv
	.section	.text._ZN15CIwSoundManager8PauseAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager8PauseAllEv
	.hidden	_ZN15CIwSoundManager8PauseAllEv
	.type	_ZN15CIwSoundManager8PauseAllEv, %function
_ZN15CIwSoundManager8PauseAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #20]
	mov	r5, r0
	cmp	r3, #0
	ldmeqfd	sp!, {r3, r4, r5, pc}
	mov	r4, #0
.L289:
	ldr	r1, [r5, #12]
	ldr	r0, [r1, r4, asl #2]
	bl	_ZN12CIwSoundInst5PauseEv
	ldr	r0, [r5, #20]
	add	r4, r4, #1
	cmp	r0, r4
	bhi	.L289
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager8PauseAllEv, .-_ZN15CIwSoundManager8PauseAllEv
	.section	.text._ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.hidden	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.type	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat, %function
_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}
	ldrh	r3, [r0, #30]
	mov	r7, r0
	tst	r3, #2
	mov	r6, r1
	mov	r5, r2
	bne	.L293
.L300:
	mvn	r4, #0
.L294:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}
.L293:
	bl	s3eSoundGetFreeChannel
	ldr	r1, [r7, #16]
	cmp	r0, r1
	mov	r4, r0
	bge	.L300
	cmp	r5, #1
	beq	.L297
	cmp	r5, #2
	beq	.L298
	cmp	r5, #0
	bne	.L294
	ldr	r2, .L301
	add	r8, r0, r0, asl #1
	ldr	sl, [r2, #0]
	mov	r1, #1
	add	r7, sl, r8, asl #3
	ldr	r2, .L301+4
	mov	r3, r7
	bl	s3eSoundChannelRegister
	str	r5, [sl, r8, asl #3]
	str	r6, [r7, #20]
	b	.L294
.L297:
	ldr	ip, .L301
	add	r7, r0, r0, asl #1
	ldr	r8, [ip, #4]
	mov	r1, r5
	add	r5, r8, r7, asl #3
	ldr	r2, .L301+8
	mov	r3, r5
	bl	s3eSoundChannelRegister
	mov	r0, #0
	str	r0, [r8, r7, asl #3]
	str	r6, [r5, #20]
	b	.L294
.L298:
	ldr	r6, .L301+12
	ldr	lr, .L301
	mul	r6, r0, r6
	ldr	r5, [lr, #8]
	mov	r1, #1
	add	r3, r6, r5
	ldr	r2, .L301+16
	bl	s3eSoundChannelRegister
	mov	r3, #0
	str	r3, [r6, r5]
	b	.L294
.L302:
	.align	2
.L301:
	.word	.LANCHOR0
	.word	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.word	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.word	1324
	.word	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.size	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat, .-_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	.section	.text._ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_,"axG",%progbits,_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_,comdat
	.align	2
	.weak	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.hidden	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.type	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_, %function
_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, r1
	mov	r1, r3
	b	_ZN15CIwChannelADPCM13GenerateAudioEP20s3eSoundGenAudioInfo
	.size	_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_, .-_ZN15CIwChannelADPCM15GenerateAudioCBEP20s3eSoundGenAudioInfoPS_
	.global	__aeabi_idiv
	.section	.text._ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo,"axG",%progbits,_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo
	.hidden	_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo
	.type	_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo, %function
_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, #0]
	sub	sp, sp, #36
	cmp	r3, #0
	mov	r4, r0
	mov	r6, r1
	ldmib	r1, {r7, r8, r9}	@ phole ldm
	beq	.L355
.L306:
	mov	r1, #1
	ldr	r0, [r6, #0]
	bl	s3eSoundChannelGetInt
	mov	r5, r0
	mov	r0, #1
	bl	s3eSoundGetInt
	mov	r1, r0
	mov	r0, r5, asl #12
	bl	__aeabi_idiv
	mov	r1, #3
	mov	sl, r0
	ldr	r0, [r6, #0]
	bl	s3eSoundChannelGetInt
	cmp	sl, #4096
	mov	r5, r0
	beq	.L307
	add	lr, sp, #32
	mov	r1, r7
	mov	r7, #0
	stmia	sp, {r5, r9}	@ phole stm
	mov	r2, r8
	str	r7, [lr, #-4]!
	mov	r3, sl
	mov	r0, r4
	str	lr, [sp, #8]
	bl	_ZN13CIwChannelPCMIsE17GenerateAudioFastEPsiiiiPi
	ldr	ip, [sp, #28]
	cmp	ip, r7
	movne	ip, #1
	strneb	ip, [r6, #28]
	strne	r7, [r4, #0]
.L308:
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L307:
	ldr	r3, [r4, #8]
	ldr	r0, [r4, #0]
	mov	fp, r9
	str	r6, [sp, #20]
	b	.L318
.L358:
	cmp	fp, #0
	mov	r6, r2, asl #1
	beq	.L310
.L311:
	add	r0, r0, r6
	add	r7, r7, r6
	str	r0, [r4, #0]
.L312:
	cmp	r0, r3
	beq	.L356
.L317:
	cmp	r8, #0
	beq	.L357
.L318:
	rsb	r6, r0, r3
	mov	r2, r6, asr #1
	cmp	r2, r8
	movge	r2, r8
	cmp	r5, #0
	rsb	r8, r2, r8
	beq	.L358
	cmp	fp, #0
	bne	.L313
	cmp	r2, #0
	beq	.L312
	ldrsh	r6, [r0, #0]
	sub	r3, r2, #1
	mul	r6, r5, r6
	subs	r1, r3, #0
	mov	lr, r6, asr #8
	strh	lr, [r7, #0]	@ movhi
	ldr	ip, [r4, #0]
	and	r6, r3, #3
	add	r0, ip, #2
	str	r0, [r4, #0]
	mov	r3, #2
	beq	.L350
	cmp	r6, #0
	beq	.L354
	cmp	r6, #1
	beq	.L347
	cmp	r6, #2
	beq	.L348
	ldrsh	lr, [ip, #2]
	sub	r1, r1, #1
	mul	lr, r5, lr
	mov	r6, lr, asr #8
	strh	r6, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	mov	r3, #4
	add	r0, r0, #2
	str	r0, [r4, #0]
.L348:
	ldrsh	r6, [r0, #0]
	sub	r1, r1, #1
	mul	r6, r5, r6
	mov	r0, r6, asr #8
	strh	r0, [r7, r3]	@ movhi
	ldr	ip, [r4, #0]
	add	r3, r3, #2
	add	r0, ip, #2
	str	r0, [r4, #0]
.L347:
	ldrsh	r0, [r0, #0]
	subs	r1, r1, #1
	mul	r0, r5, r0
	mov	ip, r0, asr #8
	strh	ip, [r7, r3]	@ movhi
	ldr	lr, [r4, #0]
	add	r3, r3, #2
	add	r0, lr, #2
	str	r0, [r4, #0]
	beq	.L350
.L354:
	mov	r9, r2
.L316:
	ldrsh	ip, [r0, #0]
	add	r2, r3, #2
	mul	ip, r5, ip
	add	lr, r2, #2
	mov	sl, ip, asr #8
	strh	sl, [r7, r3]	@ movhi
	ldr	r6, [r4, #0]
	add	ip, r3, #6
	add	sl, r6, #2
	str	sl, [r4, #0]
	ldrsh	r0, [r6, #2]
	subs	r1, r1, #4
	mul	r0, r5, r0
	add	r3, r3, #8
	mov	r6, r0, asr #8
	strh	r6, [r7, r2]	@ movhi
	ldr	r2, [r4, #0]
	add	r0, r2, #2
	str	r0, [r4, #0]
	ldrsh	r6, [r2, #2]
	mul	r6, r5, r6
	mov	r0, r6, asr #8
	strh	r0, [r7, lr]	@ movhi
	ldr	r6, [r4, #0]
	add	r2, r6, #2
	str	r2, [r4, #0]
	ldrsh	lr, [r6, #2]
	mul	lr, r5, lr
	mov	r0, lr, asr #8
	strh	r0, [r7, ip]	@ movhi
	ldr	r2, [r4, #0]
	add	r0, r2, #2
	str	r0, [r4, #0]
	bne	.L316
	mov	r2, r9
.L350:
	ldr	r3, [r4, #8]
	add	r7, r7, r2, asl #1
	cmp	r0, r3
	bne	.L317
.L356:
	ldr	r6, [sp, #20]
	mov	lr, #0
	str	lr, [r4, #0]
	ldr	r1, [r6, #8]
	mov	r3, #1
	strb	r3, [r6, #28]
	rsb	r0, r8, r1
	b	.L308
.L313:
	cmp	r2, #0
	beq	.L312
	ldrsh	ip, [r0, #0]
	ldrh	r0, [r7, #0]
	mul	ip, r5, ip
	sub	r3, r2, #1
	add	r1, r0, ip, asr #8
	strh	r1, [r7, #0]	@ movhi
	ldr	ip, [r4, #0]
	subs	r1, r3, #0
	add	r0, ip, #2
	and	r6, r3, #3
	str	r0, [r4, #0]
	mov	r3, #2
	beq	.L349
	cmp	r6, #0
	beq	.L352
	cmp	r6, #1
	beq	.L345
	cmp	r6, #2
	beq	.L346
	ldrsh	lr, [ip, #2]
	ldrh	ip, [r7, r3]
	mul	lr, r5, lr
	sub	r1, r1, #1
	add	r6, ip, lr, asr #8
	strh	r6, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	mov	r3, #4
	add	r0, r0, #2
	str	r0, [r4, #0]
.L346:
	ldrsh	lr, [r0, #0]
	ldrh	ip, [r7, r3]
	mul	lr, r5, lr
	sub	r1, r1, #1
	add	r6, ip, lr, asr #8
	strh	r6, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	add	r3, r3, #2
	add	r0, r0, #2
	str	r0, [r4, #0]
.L345:
	ldrsh	lr, [r0, #0]
	ldrh	ip, [r7, r3]
	mul	lr, r5, lr
	subs	r1, r1, #1
	add	r6, ip, lr, asr #8
	strh	r6, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	add	r3, r3, #2
	add	r0, r0, #2
	str	r0, [r4, #0]
	beq	.L349
.L352:
	mov	r9, r2
.L315:
	ldrsh	r0, [r0, #0]
	ldrh	ip, [r7, r3]
	mul	r0, r5, r0
	add	r2, r3, #2
	add	r6, ip, r0, asr #8
	strh	r6, [r7, r3]	@ movhi
	ldr	lr, [r4, #0]
	add	ip, r2, #2
	add	sl, lr, #2
	str	sl, [r4, #0]
	ldrsh	sl, [lr, #2]
	ldrh	r0, [r7, r2]
	mul	sl, r5, sl
	add	lr, r3, #6
	add	r6, r0, sl, asr #8
	strh	r6, [r7, r2]	@ movhi
	ldr	r0, [r4, #0]
	subs	r1, r1, #4
	add	r2, r0, #2
	str	r2, [r4, #0]
	ldrsh	r6, [r0, #2]
	ldrh	r2, [r7, ip]
	mul	r6, r5, r6
	add	r3, r3, #8
	add	r0, r2, r6, asr #8
	strh	r0, [r7, ip]	@ movhi
	ldr	r2, [r4, #0]
	add	r6, r2, #2
	str	r6, [r4, #0]
	ldrsh	r0, [r2, #2]
	ldrh	ip, [r7, lr]
	mul	r0, r5, r0
	add	r6, ip, r0, asr #8
	strh	r6, [r7, lr]	@ movhi
	ldr	r2, [r4, #0]
	add	r0, r2, #2
	str	r0, [r4, #0]
	bne	.L315
	mov	r2, r9
.L349:
	add	r7, r7, r2, asl #1
	ldr	r3, [r4, #8]
	b	.L312
.L310:
	mov	r0, r7
	mov	r1, fp
	mov	r2, r6
	bl	memset
	ldr	r0, [r4, #0]
	ldr	r3, [r4, #8]
	b	.L311
.L357:
	ldr	r6, [sp, #20]
	ldr	r0, [r6, #8]
	b	.L308
.L355:
	ldr	r0, [r1, #16]
	str	r0, [r4, #0]
	ldr	r1, [r1, #20]
	ldr	r2, [r6, #16]
	str	r3, [r4, #12]
	add	r3, r2, r1, asl #1
	str	r3, [r4, #8]
	b	.L306
	.size	_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo, .-_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo
	.section	.text._ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,"axG",%progbits,_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.hidden	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.type	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, %function
_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, r1
	mov	r1, r3
	b	_ZN13CIwChannelPCMIsE13GenerateAudioEP20s3eSoundGenAudioInfo
	.size	_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, .-_ZN13CIwChannelPCMIsE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.section	.text._ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo,"axG",%progbits,_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo
	.hidden	_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo
	.type	_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo, %function
_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, #0]
	sub	sp, sp, #36
	cmp	r3, #0
	mov	r4, r0
	mov	r6, r1
	ldmib	r1, {r7, r8, r9}	@ phole ldm
	beq	.L411
.L362:
	mov	r1, #1
	ldr	r0, [r6, #0]
	bl	s3eSoundChannelGetInt
	mov	r5, r0
	mov	r0, #1
	bl	s3eSoundGetInt
	mov	r1, r0
	mov	r0, r5, asl #12
	bl	__aeabi_idiv
	mov	r1, #3
	mov	sl, r0
	ldr	r0, [r6, #0]
	bl	s3eSoundChannelGetInt
	cmp	sl, #4096
	mov	r5, r0
	beq	.L363
	add	lr, sp, #32
	mov	r1, r7
	mov	r7, #0
	stmia	sp, {r5, r9}	@ phole stm
	mov	r2, r8
	str	r7, [lr, #-4]!
	mov	r3, sl
	mov	r0, r4
	str	lr, [sp, #8]
	bl	_ZN13CIwChannelPCMIaE17GenerateAudioFastEPsiiiiPi
	ldr	ip, [sp, #28]
	cmp	ip, r7
	movne	ip, #1
	strneb	ip, [r6, #28]
	strne	r7, [r4, #0]
.L364:
	add	sp, sp, #36
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L363:
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #0]
	mov	fp, r9
	str	r6, [sp, #20]
	b	.L374
.L414:
	cmp	fp, #0
	mov	sl, r6, asl #1
	beq	.L366
.L367:
	add	r1, r1, r6
	add	r7, r7, sl
	str	r1, [r4, #0]
.L368:
	cmp	r1, r3
	beq	.L412
.L373:
	cmp	r8, #0
	beq	.L413
.L374:
	rsb	r6, r1, r3
	cmp	r6, r8
	movge	r6, r8
	cmp	r5, #0
	rsb	r8, r6, r8
	beq	.L414
	cmp	fp, #0
	bne	.L369
	cmp	r6, #0
	beq	.L368
	ldrsb	lr, [r1, #0]
	sub	r3, r6, #1
	mul	lr, r5, lr
	subs	r2, r3, #0
	mov	r1, lr, asr #8
	strh	r1, [r7, #0]	@ movhi
	ldr	r0, [r4, #0]
	and	ip, r3, #3
	add	r1, r0, #1
	str	r1, [r4, #0]
	mov	r3, #2
	beq	.L406
	cmp	ip, #0
	beq	.L372
	cmp	ip, #1
	beq	.L403
	cmp	ip, #2
	beq	.L404
	ldrsb	ip, [r0, #1]
	sub	r2, r2, #1
	mul	ip, r5, ip
	mov	lr, ip, asr #8
	strh	lr, [r7, r3]	@ movhi
	ldr	r1, [r4, #0]
	mov	r3, #4
	add	r1, r1, #1
	str	r1, [r4, #0]
.L404:
	ldrsb	lr, [r1, #0]
	sub	r2, r2, #1
	mul	lr, r5, lr
	mov	r1, lr, asr #8
	strh	r1, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	add	r3, r3, #2
	add	r1, r0, #1
	str	r1, [r4, #0]
.L403:
	ldrsb	r1, [r1, #0]
	subs	r2, r2, #1
	mul	r1, r5, r1
	mov	r0, r1, asr #8
	strh	r0, [r7, r3]	@ movhi
	ldr	ip, [r4, #0]
	add	r3, r3, #2
	add	r1, ip, #1
	str	r1, [r4, #0]
	beq	.L406
.L372:
	ldrsb	ip, [r1, #0]
	add	r1, r3, #2
	mul	ip, r5, ip
	add	sl, r1, #2
	mov	r9, ip, asr #8
	strh	r9, [r7, r3]	@ movhi
	ldr	lr, [r4, #0]
	add	ip, r3, #6
	add	r9, lr, #1
	str	r9, [r4, #0]
	ldrsb	r0, [lr, #1]
	subs	r2, r2, #4
	mul	r0, r5, r0
	add	r3, r3, #8
	mov	lr, r0, asr #8
	strh	lr, [r7, r1]	@ movhi
	ldr	lr, [r4, #0]
	add	r0, lr, #1
	str	r0, [r4, #0]
	ldrsb	r1, [lr, #1]
	mul	r1, r5, r1
	mov	lr, r1, asr #8
	strh	lr, [r7, sl]	@ movhi
	ldr	r1, [r4, #0]
	add	r0, r1, #1
	str	r0, [r4, #0]
	ldrsb	lr, [r1, #1]
	mul	lr, r5, lr
	mov	r1, lr, asr #8
	strh	r1, [r7, ip]	@ movhi
	ldr	r0, [r4, #0]
	add	r1, r0, #1
	str	r1, [r4, #0]
	bne	.L372
.L406:
	ldr	r3, [r4, #8]
	add	r7, r7, r6, asl #1
	cmp	r1, r3
	bne	.L373
.L412:
	ldr	r6, [sp, #20]
	mov	r1, #0
	str	r1, [r4, #0]
	ldr	r2, [r6, #8]
	mov	r3, #1
	strb	r3, [r6, #28]
	rsb	r0, r8, r2
	b	.L364
.L369:
	cmp	r6, #0
	beq	.L368
	ldrsb	r0, [r1, #0]
	ldrh	r1, [r7, #0]
	mul	r0, r5, r0
	sub	r3, r6, #1
	add	r2, r1, r0, asr #8
	strh	r2, [r7, #0]	@ movhi
	ldr	r0, [r4, #0]
	subs	r2, r3, #0
	add	r1, r0, #1
	and	ip, r3, #3
	str	r1, [r4, #0]
	mov	r3, #2
	beq	.L405
	cmp	ip, #0
	beq	.L371
	cmp	ip, #1
	beq	.L401
	cmp	ip, #2
	beq	.L402
	ldrsb	ip, [r0, #1]
	ldrh	r1, [r7, r3]
	mul	ip, r5, ip
	sub	r2, r2, #1
	add	lr, r1, ip, asr #8
	strh	lr, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	mov	r3, #4
	add	r1, r0, #1
	str	r1, [r4, #0]
.L402:
	ldrsb	ip, [r1, #0]
	ldrh	r0, [r7, r3]
	mul	ip, r5, ip
	sub	r2, r2, #1
	add	lr, r0, ip, asr #8
	strh	lr, [r7, r3]	@ movhi
	ldr	r0, [r4, #0]
	add	r3, r3, #2
	add	r1, r0, #1
	str	r1, [r4, #0]
.L401:
	ldrsb	ip, [r1, #0]
	ldrh	r0, [r7, r3]
	mul	ip, r5, ip
	subs	r2, r2, #1
	add	lr, r0, ip, asr #8
	strh	lr, [r7, r3]	@ movhi
	ldr	r1, [r4, #0]
	add	r3, r3, #2
	add	r1, r1, #1
	str	r1, [r4, #0]
	beq	.L405
.L371:
	ldrsb	sl, [r1, #0]
	ldrh	ip, [r7, r3]
	mul	sl, r5, sl
	add	r1, r3, #2
	add	r0, ip, sl, asr #8
	strh	r0, [r7, r3]	@ movhi
	ldr	lr, [r4, #0]
	add	ip, r1, #2
	add	r9, lr, #1
	str	r9, [r4, #0]
	ldrsb	r9, [lr, #1]
	ldrh	sl, [r7, r1]
	mul	r9, r5, r9
	add	lr, r3, #6
	add	r0, sl, r9, asr #8
	strh	r0, [r7, r1]	@ movhi
	ldr	r0, [r4, #0]
	subs	r2, r2, #4
	add	sl, r0, #1
	str	sl, [r4, #0]
	ldrsb	sl, [r0, #1]
	ldrh	r1, [r7, ip]
	mul	sl, r5, sl
	add	r3, r3, #8
	add	r0, r1, sl, asr #8
	strh	r0, [r7, ip]	@ movhi
	ldr	r0, [r4, #0]
	add	r1, r0, #1
	str	r1, [r4, #0]
	ldrsb	r1, [r0, #1]
	ldrh	ip, [r7, lr]
	mul	r1, r5, r1
	add	r0, ip, r1, asr #8
	strh	r0, [r7, lr]	@ movhi
	ldr	ip, [r4, #0]
	add	r1, ip, #1
	str	r1, [r4, #0]
	bne	.L371
.L405:
	add	r7, r7, r6, asl #1
	ldr	r3, [r4, #8]
	b	.L368
.L366:
	mov	r1, fp
	mov	r0, r7
	mov	r2, sl
	bl	memset
	ldr	r1, [r4, #0]
	ldr	r3, [r4, #8]
	b	.L367
.L413:
	ldr	r6, [sp, #20]
	ldr	r0, [r6, #8]
	b	.L364
.L411:
	ldr	r0, [r1, #16]
	str	r0, [r4, #0]
	ldr	r1, [r1, #20]
	ldr	r2, [r6, #16]
	str	r3, [r4, #12]
	add	r3, r2, r1, asl #1
	str	r3, [r4, #8]
	b	.L362
	.size	_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo, .-_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo
	.section	.text._ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,"axG",%progbits,_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_,comdat
	.align	2
	.weak	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.hidden	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.type	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, %function
_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	mov	r0, r1
	mov	r1, r3
	b	_ZN13CIwChannelPCMIaE13GenerateAudioEP20s3eSoundGenAudioInfo
	.size	_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_, .-_ZN13CIwChannelPCMIaE15GenerateAudioCBEP20s3eSoundGenAudioInfoPS0_
	.section	.text._ZN15CIwSoundManagerD0Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerD0Ev
	.hidden	_ZN15CIwSoundManagerD0Ev
	.type	_ZN15CIwSoundManagerD0Ev, %function
_ZN15CIwSoundManagerD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L425
	mov	r4, r0
	mov	r3, #0
	ldr	r0, .L425+4
	str	r0, [r4, #0]
	str	r3, [r5, #12]
	ldr	r0, [r4, #32]
	cmp	r0, r3
	beq	.L418
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #4]
	blx	r1
.L418:
	ldr	r0, [r4, #36]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L419
	bl	_ZdaPv
.L419:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L420
	bl	_ZdaPv
.L420:
	ldr	r0, [r5, #0]
	cmp	r0, #0
	beq	.L421
	bl	_ZdaPv
.L421:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L422
	bl	_ZdaPv
.L422:
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L423
	bl	_ZdaPv
.L423:
	mov	r0, r4
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L426:
	.align	2
.L425:
	.word	.LANCHOR0
	.word	.LANCHOR1+8
	.size	_ZN15CIwSoundManagerD0Ev, .-_ZN15CIwSoundManagerD0Ev
	.section	.text._ZN15CIwSoundManagerD1Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerD1Ev
	.hidden	_ZN15CIwSoundManagerD1Ev
	.type	_ZN15CIwSoundManagerD1Ev, %function
_ZN15CIwSoundManagerD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L435
	mov	r4, r0
	mov	r3, #0
	ldr	r0, .L435+4
	str	r0, [r4, #0]
	str	r3, [r5, #12]
	ldr	r0, [r4, #32]
	cmp	r0, r3
	beq	.L428
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #4]
	blx	r1
.L428:
	ldr	r0, [r4, #36]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L429
	bl	_ZdaPv
.L429:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L430
	bl	_ZdaPv
.L430:
	ldr	r0, [r5, #0]
	cmp	r0, #0
	beq	.L431
	bl	_ZdaPv
.L431:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L432
	bl	_ZdaPv
.L432:
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L433
	bl	_ZdaPv
.L433:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L436:
	.align	2
.L435:
	.word	.LANCHOR0
	.word	.LANCHOR1+8
	.size	_ZN15CIwSoundManagerD1Ev, .-_ZN15CIwSoundManagerD1Ev
	.section	.text._ZN15CIwSoundManagerD2Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerD2Ev
	.hidden	_ZN15CIwSoundManagerD2Ev
	.type	_ZN15CIwSoundManagerD2Ev, %function
_ZN15CIwSoundManagerD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r5, .L445
	mov	r4, r0
	mov	r3, #0
	ldr	r0, .L445+4
	str	r0, [r4, #0]
	str	r3, [r5, #12]
	ldr	r0, [r4, #32]
	cmp	r0, r3
	beq	.L438
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #4]
	blx	r1
.L438:
	ldr	r0, [r4, #36]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	cmp	r0, #0
	beq	.L439
	bl	_ZdaPv
.L439:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L440
	bl	_ZdaPv
.L440:
	ldr	r0, [r5, #0]
	cmp	r0, #0
	beq	.L441
	bl	_ZdaPv
.L441:
	ldr	r0, [r5, #4]
	cmp	r0, #0
	beq	.L442
	bl	_ZdaPv
.L442:
	ldr	r0, [r5, #8]
	cmp	r0, #0
	beq	.L443
	bl	_ZdaPv
.L443:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, pc}
.L446:
	.align	2
.L445:
	.word	.LANCHOR0
	.word	.LANCHOR1+8
	.size	_ZN15CIwSoundManagerD2Ev, .-_ZN15CIwSoundManagerD2Ev
	.section	.text._ZN15CIwSoundManagerC1Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerC1Ev
	.hidden	_ZN15CIwSoundManagerC1Ev
	.type	_ZN15CIwSoundManagerC1Ev, %function
_ZN15CIwSoundManagerC1Ev:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L533
	mov	r4, r0
	ldr	r2, .L533+4
	sub	sp, sp, #12
	str	r2, [r0, #0]
	mov	r0, #32
	str	r4, [r6, #12]
	bl	_Znwj
	mov	r8, #8
	mov	r5, r0
	bl	_ZN13CIwSoundGroupC1Ev
	str	r5, [r4, #32]
	mov	r0, #8
	bl	_Znwj
	mov	r5, #0
	mov	r7, r0
	bl	_ZN14CIwSoundParamsC1Ev
	mov	r3, #4096	@ movhi
	add	r2, sp, #8
	mov	r1, #2	@ movhi
	str	r8, [r2, #-4]!
	ldr	r0, .L533+8
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #28]	@ movhi
	str	r7, [r4, #36]
	strh	r1, [r4, #30]	@ movhi
	str	r5, [r4, #8]
	ldr	r1, .L533+12
	str	r5, [r4, #12]
	str	r5, [r4, #20]
	strh	r5, [r4, #26]	@ movhi
	bl	s3eConfigGetInt
	mov	r0, #3
	bl	s3eSoundGetInt
	ldr	r7, [sp, #4]
	cmp	r7, r0
	movge	r7, r0
	add	r0, r7, r7, asl #1
	str	r7, [r4, #16]
	mov	r0, r0, asl #3
	bl	_Znaj
	cmp	r7, r5
	beq	.L450
	mov	r2, #1
	sub	ip, r7, #1
	cmp	r2, r7
	and	r1, ip, #3
	str	r5, [r0, #0]
	str	r5, [r0, #8]
	str	r5, [r0, #12]
	str	r5, [r0, #20]
	add	r3, r0, #24
	beq	.L450
	cmp	r1, #0
	beq	.L452
	cmp	r1, #1
	beq	.L521
	cmp	r1, #2
	beq	.L522
	str	r5, [r3, #20]
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	mov	r2, #2
	add	r3, r0, #48
.L522:
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	add	r2, r2, #1
	add	r3, r3, #24
.L521:
	add	r2, r2, #1
	cmp	r2, r7
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	add	r3, r3, #24
	beq	.L450
.L452:
	add	r2, r2, #4
	add	lr, r3, #24
	add	r8, r3, #48
	add	r1, r3, #72
	cmp	r2, r7
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	str	r5, [lr, #8]
	str	r5, [lr, #20]
	str	r5, [lr, #12]
	str	r5, [r8, #20]
	str	r5, [r3, #0]
	str	r5, [r3, #24]
	str	r5, [r3, #48]
	str	r5, [r8, #8]
	str	r5, [r8, #12]
	str	r5, [r3, #72]
	str	r5, [r1, #20]
	str	r5, [r1, #8]
	str	r5, [r1, #12]
	add	r3, r3, #96
	bne	.L452
.L450:
	str	r0, [r6, #0]
	ldr	r5, [r4, #16]
	add	r0, r5, r5, asl #1
	mov	r0, r0, asl #3
	bl	_Znaj
	cmp	r5, #0
	beq	.L453
	mov	r1, #1
	mov	r3, #0
	sub	r7, r5, #1
	cmp	r1, r5
	and	ip, r7, #3
	str	r3, [r0, #0]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #20]
	add	r2, r0, #24
	beq	.L453
	cmp	ip, #0
	beq	.L455
	cmp	ip, #1
	beq	.L519
	cmp	ip, #2
	beq	.L520
	str	r3, [r2, #20]
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	mov	r1, #2
	add	r2, r0, #48
.L520:
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	add	r1, r1, #1
	add	r2, r2, #24
.L519:
	add	r1, r1, #1
	cmp	r1, r5
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	add	r2, r2, #24
	beq	.L453
.L455:
	add	r1, r1, #4
	add	lr, r2, #24
	add	r8, r2, #48
	add	ip, r2, #72
	cmp	r1, r5
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	str	r3, [lr, #8]
	str	r3, [lr, #20]
	str	r3, [lr, #12]
	str	r3, [r8, #20]
	str	r3, [r2, #0]
	str	r3, [r2, #24]
	str	r3, [r2, #48]
	str	r3, [r8, #8]
	str	r3, [r8, #12]
	str	r3, [r2, #72]
	str	r3, [ip, #20]
	str	r3, [ip, #8]
	str	r3, [ip, #12]
	add	r2, r2, #96
	bne	.L455
.L453:
	str	r0, [r6, #4]
	ldr	r0, .L533+16
	ldr	r5, [r4, #16]
	mul	r0, r5, r0
	bl	_Znaj
	cmp	r5, #0
	mov	r8, r0
	beq	.L456
	sub	fp, r5, #1
	mov	r7, #0
	ands	fp, fp, #3
	sub	r5, r5, #2
	ldr	sl, .L533+20
	mov	r9, r7
	beq	.L458
	str	r7, [r8, #0]
	ldr	r7, [sl, #0]
	cmp	r7, #0
	beq	.L525
.L478:
	cmp	fp, #1
	sub	r5, r5, #1
	ldr	r7, .L533+16
	beq	.L458
	cmp	fp, #2
	beq	.L518
	str	r9, [r8, r7]
	ldr	r3, [sl, #0]
	cmp	r3, #0
	beq	.L526
.L479:
	add	r2, r7, #1312
	add	r7, r2, #12
	sub	r5, r5, #1
.L518:
	str	r9, [r8, r7]
	ldr	r0, [sl, #0]
	cmp	r0, #0
	beq	.L527
.L481:
	add	r1, r7, #1312
	add	r7, r1, #12
	sub	r5, r5, #1
	b	.L458
.L457:
	add	r2, r7, #1312
	cmn	r5, #1
	add	r7, r2, #12
	beq	.L456
.L531:
	str	r9, [r8, r7]
	ldr	r1, [sl, #0]
	sub	r5, r5, #1
	cmp	r1, #0
	beq	.L528
.L484:
	add	r3, r7, #1312
	add	lr, r3, #12
	str	r9, [r8, lr]
	ldr	ip, [sl, #0]
	cmp	ip, #0
	beq	.L529
.L485:
	add	r1, r7, #2640
	add	r0, r1, #8
	str	r9, [r8, r0]
	ldr	r2, [sl, #0]
	cmp	r2, #0
	beq	.L530
.L486:
	add	r7, r7, #3968
	add	r7, r7, #4
	sub	r5, r5, #3
.L458:
	str	r9, [r8, r7]
	ldr	r3, [sl, #0]
	cmp	r3, #0
	bne	.L457
	bl	_ZN15CIwChannelADPCM4InitEv
	add	r2, r7, #1312
	cmn	r5, #1
	add	r7, r2, #12
	bne	.L531
.L456:
	str	r8, [r6, #8]
	ldr	r5, [r4, #16]
	add	r0, r5, r5, asl #1
	mov	r0, r0, asl #3
	bl	_Znaj
	sub	r5, r5, #1
	cmn	r5, #1
	mov	r7, r0
	beq	.L459
	sub	r6, r5, #1
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	and	r3, r5, #3
	add	r5, r7, #24
	beq	.L459
	cmp	r3, #0
	beq	.L460
	cmp	r3, #1
	beq	.L516
	cmp	r3, #2
	beq	.L517
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	sub	r6, r6, #1
	add	r5, r7, #48
.L517:
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	add	r5, r5, #24
	sub	r6, r6, #1
.L516:
	mov	r0, r5
	sub	r6, r6, #1
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	add	r5, r5, #24
	beq	.L459
.L460:
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	add	r0, r5, #24
	bl	_ZN12CIwSoundInstC1Ev
	add	r0, r5, #48
	bl	_ZN12CIwSoundInstC1Ev
	sub	r6, r6, #4
	add	r0, r5, #72
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	add	r5, r5, #96
	bne	.L460
.L459:
	ldr	lr, [r4, #16]
	str	r7, [r4, #8]
	mov	r0, lr, asl #2
	bl	_Znaj
	ldr	ip, [r4, #16]
	cmp	ip, #0
	str	r0, [r4, #12]
	beq	.L461
	mov	r2, #0
	mov	r3, r2
	b	.L462
.L532:
	ldr	r0, [r4, #12]
.L462:
	ldr	lr, [r4, #8]
	add	ip, lr, r2
	str	ip, [r0, r3, asl #2]
	ldr	r1, [r4, #16]
	add	r3, r3, #1
	cmp	r1, r3
	add	r2, r2, #24
	bhi	.L532
.L461:
	mov	r0, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L530:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L486
.L529:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L485
.L528:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L484
.L525:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L478
.L527:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L481
.L526:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L479
.L534:
	.align	2
.L533:
	.word	.LANCHOR0
	.word	.LANCHOR1+8
	.word	.LC0
	.word	.LC1
	.word	1324
	.word	_ZN15CIwChannelADPCM13isInitializedE
	.size	_ZN15CIwSoundManagerC1Ev, .-_ZN15CIwSoundManagerC1Ev
	.section	.text._ZN15CIwSoundManagerC2Ev,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManagerC2Ev
	.hidden	_ZN15CIwSoundManagerC2Ev
	.type	_ZN15CIwSoundManagerC2Ev, %function
_ZN15CIwSoundManagerC2Ev:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r6, .L621
	mov	r4, r0
	ldr	r2, .L621+4
	sub	sp, sp, #12
	str	r2, [r0, #0]
	mov	r0, #32
	str	r4, [r6, #12]
	bl	_Znwj
	mov	r8, #8
	mov	r5, r0
	bl	_ZN13CIwSoundGroupC1Ev
	str	r5, [r4, #32]
	mov	r0, #8
	bl	_Znwj
	mov	r5, #0
	mov	r7, r0
	bl	_ZN14CIwSoundParamsC1Ev
	mov	r3, #4096	@ movhi
	add	r2, sp, #8
	mov	r1, #2	@ movhi
	str	r8, [r2, #-4]!
	ldr	r0, .L621+8
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #28]	@ movhi
	str	r7, [r4, #36]
	strh	r1, [r4, #30]	@ movhi
	str	r5, [r4, #8]
	ldr	r1, .L621+12
	str	r5, [r4, #12]
	str	r5, [r4, #20]
	strh	r5, [r4, #26]	@ movhi
	bl	s3eConfigGetInt
	mov	r0, #3
	bl	s3eSoundGetInt
	ldr	r7, [sp, #4]
	cmp	r7, r0
	movge	r7, r0
	add	r0, r7, r7, asl #1
	str	r7, [r4, #16]
	mov	r0, r0, asl #3
	bl	_Znaj
	cmp	r7, r5
	beq	.L538
	mov	r2, #1
	sub	ip, r7, #1
	cmp	r2, r7
	and	r1, ip, #3
	str	r5, [r0, #0]
	str	r5, [r0, #8]
	str	r5, [r0, #12]
	str	r5, [r0, #20]
	add	r3, r0, #24
	beq	.L538
	cmp	r1, #0
	beq	.L540
	cmp	r1, #1
	beq	.L609
	cmp	r1, #2
	beq	.L610
	str	r5, [r3, #20]
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	mov	r2, #2
	add	r3, r0, #48
.L610:
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	add	r2, r2, #1
	add	r3, r3, #24
.L609:
	add	r2, r2, #1
	cmp	r2, r7
	str	r5, [r3, #0]
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	add	r3, r3, #24
	beq	.L538
.L540:
	add	r2, r2, #4
	add	lr, r3, #24
	add	r8, r3, #48
	add	r1, r3, #72
	cmp	r2, r7
	str	r5, [r3, #8]
	str	r5, [r3, #12]
	str	r5, [r3, #20]
	str	r5, [lr, #8]
	str	r5, [lr, #20]
	str	r5, [lr, #12]
	str	r5, [r8, #20]
	str	r5, [r3, #0]
	str	r5, [r3, #24]
	str	r5, [r3, #48]
	str	r5, [r8, #8]
	str	r5, [r8, #12]
	str	r5, [r3, #72]
	str	r5, [r1, #20]
	str	r5, [r1, #8]
	str	r5, [r1, #12]
	add	r3, r3, #96
	bne	.L540
.L538:
	str	r0, [r6, #0]
	ldr	r5, [r4, #16]
	add	r0, r5, r5, asl #1
	mov	r0, r0, asl #3
	bl	_Znaj
	cmp	r5, #0
	beq	.L541
	mov	r1, #1
	mov	r3, #0
	sub	r7, r5, #1
	cmp	r1, r5
	and	ip, r7, #3
	str	r3, [r0, #0]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #20]
	add	r2, r0, #24
	beq	.L541
	cmp	ip, #0
	beq	.L543
	cmp	ip, #1
	beq	.L607
	cmp	ip, #2
	beq	.L608
	str	r3, [r2, #20]
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	mov	r1, #2
	add	r2, r0, #48
.L608:
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	add	r1, r1, #1
	add	r2, r2, #24
.L607:
	add	r1, r1, #1
	cmp	r1, r5
	str	r3, [r2, #0]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	add	r2, r2, #24
	beq	.L541
.L543:
	add	r1, r1, #4
	add	lr, r2, #24
	add	r8, r2, #48
	add	ip, r2, #72
	cmp	r1, r5
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #20]
	str	r3, [lr, #8]
	str	r3, [lr, #20]
	str	r3, [lr, #12]
	str	r3, [r8, #20]
	str	r3, [r2, #0]
	str	r3, [r2, #24]
	str	r3, [r2, #48]
	str	r3, [r8, #8]
	str	r3, [r8, #12]
	str	r3, [r2, #72]
	str	r3, [ip, #20]
	str	r3, [ip, #8]
	str	r3, [ip, #12]
	add	r2, r2, #96
	bne	.L543
.L541:
	str	r0, [r6, #4]
	ldr	r0, .L621+16
	ldr	r5, [r4, #16]
	mul	r0, r5, r0
	bl	_Znaj
	cmp	r5, #0
	mov	r8, r0
	beq	.L544
	sub	fp, r5, #1
	mov	r7, #0
	ands	fp, fp, #3
	sub	r5, r5, #2
	ldr	sl, .L621+20
	mov	r9, r7
	beq	.L546
	str	r7, [r8, #0]
	ldr	r7, [sl, #0]
	cmp	r7, #0
	beq	.L613
.L566:
	cmp	fp, #1
	sub	r5, r5, #1
	ldr	r7, .L621+16
	beq	.L546
	cmp	fp, #2
	beq	.L606
	str	r9, [r8, r7]
	ldr	r3, [sl, #0]
	cmp	r3, #0
	beq	.L614
.L567:
	add	r2, r7, #1312
	add	r7, r2, #12
	sub	r5, r5, #1
.L606:
	str	r9, [r8, r7]
	ldr	r0, [sl, #0]
	cmp	r0, #0
	beq	.L615
.L569:
	add	r1, r7, #1312
	add	r7, r1, #12
	sub	r5, r5, #1
	b	.L546
.L545:
	add	r2, r7, #1312
	cmn	r5, #1
	add	r7, r2, #12
	beq	.L544
.L619:
	str	r9, [r8, r7]
	ldr	r1, [sl, #0]
	sub	r5, r5, #1
	cmp	r1, #0
	beq	.L616
.L572:
	add	r3, r7, #1312
	add	lr, r3, #12
	str	r9, [r8, lr]
	ldr	ip, [sl, #0]
	cmp	ip, #0
	beq	.L617
.L573:
	add	r1, r7, #2640
	add	r0, r1, #8
	str	r9, [r8, r0]
	ldr	r2, [sl, #0]
	cmp	r2, #0
	beq	.L618
.L574:
	add	r7, r7, #3968
	add	r7, r7, #4
	sub	r5, r5, #3
.L546:
	str	r9, [r8, r7]
	ldr	r3, [sl, #0]
	cmp	r3, #0
	bne	.L545
	bl	_ZN15CIwChannelADPCM4InitEv
	add	r2, r7, #1312
	cmn	r5, #1
	add	r7, r2, #12
	bne	.L619
.L544:
	str	r8, [r6, #8]
	ldr	r5, [r4, #16]
	add	r0, r5, r5, asl #1
	mov	r0, r0, asl #3
	bl	_Znaj
	sub	r5, r5, #1
	cmn	r5, #1
	mov	r7, r0
	beq	.L547
	sub	r6, r5, #1
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	and	r3, r5, #3
	add	r5, r7, #24
	beq	.L547
	cmp	r3, #0
	beq	.L548
	cmp	r3, #1
	beq	.L604
	cmp	r3, #2
	beq	.L605
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	sub	r6, r6, #1
	add	r5, r7, #48
.L605:
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	add	r5, r5, #24
	sub	r6, r6, #1
.L604:
	mov	r0, r5
	sub	r6, r6, #1
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	add	r5, r5, #24
	beq	.L547
.L548:
	mov	r0, r5
	bl	_ZN12CIwSoundInstC1Ev
	add	r0, r5, #24
	bl	_ZN12CIwSoundInstC1Ev
	add	r0, r5, #48
	bl	_ZN12CIwSoundInstC1Ev
	sub	r6, r6, #4
	add	r0, r5, #72
	bl	_ZN12CIwSoundInstC1Ev
	cmn	r6, #1
	add	r5, r5, #96
	bne	.L548
.L547:
	ldr	lr, [r4, #16]
	str	r7, [r4, #8]
	mov	r0, lr, asl #2
	bl	_Znaj
	ldr	ip, [r4, #16]
	cmp	ip, #0
	str	r0, [r4, #12]
	beq	.L549
	mov	r2, #0
	mov	r3, r2
	b	.L550
.L620:
	ldr	r0, [r4, #12]
.L550:
	ldr	lr, [r4, #8]
	add	ip, lr, r2
	str	ip, [r0, r3, asl #2]
	ldr	r1, [r4, #16]
	add	r3, r3, #1
	cmp	r1, r3
	add	r2, r2, #24
	bhi	.L620
.L549:
	mov	r0, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L618:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L574
.L617:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L573
.L616:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L572
.L613:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L566
.L615:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L569
.L614:
	bl	_ZN15CIwChannelADPCM4InitEv
	b	.L567
.L622:
	.align	2
.L621:
	.word	.LANCHOR0
	.word	.LANCHOR1+8
	.word	.LC0
	.word	.LC1
	.word	1324
	.word	_ZN15CIwChannelADPCM13isInitializedE
	.size	_ZN15CIwSoundManagerC2Ev, .-_ZN15CIwSoundManagerC2Ev
	.section	.text._Z11IwSoundInitv,"ax",%progbits
	.align	2
	.global	_Z11IwSoundInitv
	.hidden	_Z11IwSoundInitv
	.type	_Z11IwSoundInitv, %function
_Z11IwSoundInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #40
	bl	_Znwj
	bl	_ZN15CIwSoundManagerC1Ev
	bl	_Z20_GetCIwSoundDataSizev
	ldr	r1, .L625
	mov	r2, r0
	ldr	r0, .L625+4
	bl	_Z17IwClassFactoryAddPKcPFPvvEj
	bl	_Z25_GetCIwSoundDataADPCMSizev
	ldr	r1, .L625+8
	mov	r2, r0
	ldr	r0, .L625+12
	bl	_Z17IwClassFactoryAddPKcPFPvvEj
	bl	_Z21_GetCIwSoundGroupSizev
	ldr	r1, .L625+16
	mov	r2, r0
	ldr	r0, .L625+20
	bl	_Z17IwClassFactoryAddPKcPFPvvEj
	bl	_Z20_GetCIwSoundSpecSizev
	ldr	r1, .L625+24
	mov	r2, r0
	ldr	r0, .L625+28
	ldmfd	sp!, {r4, lr}
	b	_Z17IwClassFactoryAddPKcPFPvvEj
.L626:
	.align	2
.L625:
	.word	_Z20_CIwSoundDataFactoryv
	.word	.LC2
	.word	_Z25_CIwSoundDataADPCMFactoryv
	.word	.LC3
	.word	_Z21_CIwSoundGroupFactoryv
	.word	.LC4
	.word	_Z20_CIwSoundSpecFactoryv
	.word	.LC5
	.size	_Z11IwSoundInitv, .-_Z11IwSoundInitv
	.section	.text._ZN15CIwSoundManager15UpdateCompletedEi,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager15UpdateCompletedEi
	.hidden	_ZN15CIwSoundManager15UpdateCompletedEi
	.type	_ZN15CIwSoundManager15UpdateCompletedEi, %function
_ZN15CIwSoundManager15UpdateCompletedEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	ip, [r0, #12]
	mov	r4, r0
	ldr	r5, [ip, r1, asl #2]
	ldr	r0, [r5, #0]
	ldr	r3, [r0, #36]
	cmp	r3, #0
	ldrneh	r2, [r3, #24]
	subne	r2, r2, #1
	strneh	r2, [r3, #24]	@ movhi
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L629
	mov	r0, r5
	blx	r3
.L629:
	ldrh	r2, [r5, #10]
	ldrh	ip, [r5, #16]
	bic	r1, r2, #2
	orr	r0, r1, #4
	add	r3, ip, #1
	strh	r0, [r5, #10]	@ movhi
	strh	r3, [r5, #16]	@ movhi
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #12]
	sub	r1, r2, #1
	add	r1, r3, r1, asl #2
	cmp	r3, r1
	ldmhifd	sp!, {r3, r4, r5, pc}
	ldr	r0, [r3, #0]
	cmp	r5, r0
	beq	.L631
	rsb	ip, r3, r1
	mov	r0, ip, lsr #2
	ands	r2, r0, #3
	beq	.L635
	add	r3, r3, #4
	cmp	r1, r3
	ldmccfd	sp!, {r3, r4, r5, pc}
	ldr	r0, [r3, #0]
	cmp	r5, r0
	beq	.L631
	cmp	r2, #1
	beq	.L635
	cmp	r2, #2
	beq	.L654
	ldr	r2, [r3, #4]!
	cmp	r5, r2
	beq	.L631
.L654:
	ldr	ip, [r3, #4]!
	cmp	r5, ip
	beq	.L631
.L635:
	add	r3, r3, #4
	cmp	r1, r3
	mov	r2, r3
	bcc	.L659
	ldr	ip, [r3, #0]
	cmp	r5, ip
	beq	.L631
	ldr	r0, [r3, #4]!
	cmp	r5, r0
	beq	.L631
	ldr	ip, [r2, #8]
	add	r3, r2, #8
	cmp	r5, ip
	beq	.L631
	ldr	r0, [r2, #12]
	add	r3, r2, #12
	cmp	r5, r0
	bne	.L635
.L631:
	ldr	r2, [r1, #0]
	str	r2, [r3, #0]
	str	r5, [r1, #0]
	ldr	r1, [r4, #20]
	sub	r3, r1, #1
	str	r3, [r4, #20]
	ldmfd	sp!, {r3, r4, r5, pc}
.L659:
	ldmfd	sp!, {r3, r4, r5, pc}
	.size	_ZN15CIwSoundManager15UpdateCompletedEi, .-_ZN15CIwSoundManager15UpdateCompletedEi
	.section	.text._ZN15CIwSoundManager6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager6UpdateEv
	.hidden	_ZN15CIwSoundManager6UpdateEv
	.type	_ZN15CIwSoundManager6UpdateEv, %function
_ZN15CIwSoundManager6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	ldrh	r2, [r0, #30]
	mov	r4, r0
	tst	r2, #2
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
	ldr	r0, [r0, #4]
	ldr	r3, [r4, #20]
	add	r1, r0, #1
	cmp	r3, #0
	str	r1, [r4, #4]
	beq	.L662
	mov	r6, #0
	b	.L671
.L664:
	ldrh	r0, [r5, #14]
	add	r2, r0, #1
	strh	r2, [r5, #14]	@ movhi
	ldr	r3, [r4, #20]
.L663:
	add	r6, r6, #1
	cmp	r6, r3
	bcs	.L713
.L671:
	ldr	r2, [r4, #12]
	ldr	r5, [r2, r6, asl #2]
	ldr	r2, [r5, #0]
	cmp	r2, #0
	beq	.L663
	ldrh	r3, [r5, #10]
	tst	r3, #2
	beq	.L664
	ldr	ip, [r2, #36]
	cmp	ip, #0
	ldrneh	r2, [ip, #24]
	subne	r2, r2, #1
	strneh	r2, [ip, #24]	@ movhi
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L666
	mov	r0, r5
	blx	r3
.L666:
	ldrh	r1, [r5, #10]
	ldrh	r3, [r5, #16]
	bic	ip, r1, #2
	add	r0, r3, #1
	orr	r2, ip, #4
	strh	r0, [r5, #16]	@ movhi
	strh	r2, [r5, #10]	@ movhi
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #12]
	sub	r1, r3, #1
	add	r0, r2, r1, asl #2
	cmp	r2, r0
	bhi	.L667
	ldr	ip, [r2, #0]
	cmp	r5, ip
	beq	.L668
	rsb	ip, r2, r0
	mov	r1, ip, lsr #2
	ands	r1, r1, #3
	beq	.L683
	add	r2, r2, #4
	cmp	r0, r2
	bcc	.L667
	ldr	ip, [r2, #0]
	cmp	r5, ip
	beq	.L668
	cmp	r1, #1
	beq	.L683
	cmp	r1, #2
	beq	.L704
	ldr	r1, [r2, #4]!
	cmp	r5, r1
	beq	.L668
.L704:
	ldr	ip, [r2, #4]!
	cmp	r5, ip
	beq	.L668
.L683:
	add	r2, r2, #4
	cmp	r0, r2
	mov	r1, r2
	bcc	.L667
	ldr	ip, [r2, #0]
	cmp	r5, ip
	beq	.L668
	ldr	ip, [r2, #4]!
	cmp	r5, ip
	beq	.L668
	ldr	ip, [r1, #8]
	add	r2, r1, #8
	cmp	r5, ip
	beq	.L668
	ldr	ip, [r1, #12]
	add	r2, r1, #12
	cmp	r5, ip
	bne	.L683
.L668:
	ldr	r3, [r0, #0]
	str	r3, [r2, #0]
	str	r5, [r0, #0]
	ldr	r0, [r4, #20]
	sub	r3, r0, #1
	str	r3, [r4, #20]
.L667:
	sub	r6, r6, #1
	add	r6, r6, #1
	cmp	r6, r3
	bcc	.L671
.L713:
	cmp	r3, #0
	beq	.L711
	ldr	r1, [r4, #12]
	ldr	r5, [r1, #0]
	ldr	r2, [r5, #0]
	cmp	r2, #0
	movne	r6, #0
	bne	.L672
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
.L674:
	ldrh	r0, [r2, #16]
	ldrh	lr, [r4, #24]
	ldrh	r7, [r2, #20]
	smulbb	ip, r0, lr
	ldrh	r3, [r4, #28]
	ldrsh	lr, [r5, #4]
	smulbb	r7, r7, r3
	mov	r2, ip, asr #12
	mul	r2, lr, r2
	ldrsh	r0, [r5, #8]
	mov	ip, r7, asr #12
	mul	ip, r0, ip
	mov	r3, r2, asl #4
	mov	r2, r3, asr #20
	mov	lr, ip, asl #4
	cmp	r2, #256
	movge	r2, #256
	ldrh	r0, [r5, #12]
	mov	r7, lr, lsr #16
	bl	s3eSoundChannelSetInt
	ldr	r0, [r5, #0]
	mov	r7, r7, asl #16
	ldr	r1, [r0, #32]
	mov	r7, r7, asr #16
	ldr	ip, [r1, #28]
	ldrh	r0, [r5, #12]
	mul	ip, r7, ip
	mov	r1, #1
	mov	r2, ip, asr #12
	bl	s3eSoundChannelSetInt
	ldrh	r2, [r5, #10]
	bic	r3, r2, #1
	strh	r3, [r5, #10]	@ movhi
	ldr	r3, [r4, #20]
	cmp	r3, r6
	bls	.L714
.L676:
	ldr	ip, [r4, #12]
	ldr	r5, [ip, r6, asl #2]
	ldr	r2, [r5, #0]
	cmp	r2, #0
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}
.L672:
	ldr	r2, [r2, #36]
	ldrh	r0, [r5, #10]
	cmp	r2, #0
	ldreq	r2, [r4, #32]
	tst	r0, #1
	mov	r1, #3
	add	r6, r6, #1
	bne	.L674
	ldrh	ip, [r2, #26]
	tst	ip, #1
	bne	.L674
	ldrh	r0, [r4, #30]
	tst	r0, #1
	bne	.L674
	cmp	r3, r6
	bhi	.L676
.L714:
	cmp	r3, #0
	movne	r2, #0
	beq	.L711
.L679:
	ldr	ip, [r4, #12]
	ldr	r1, [ip, r2, asl #2]
	add	r2, r2, #1
	ldr	r1, [r1, #0]
	cmp	r1, #0
	beq	.L677
	ldr	r0, [r1, #36]
	cmp	r0, #0
	ldrneh	r3, [r0, #26]
	bicne	r3, r3, #1
	strneh	r3, [r0, #26]	@ movhi
	ldrne	r3, [r4, #20]
.L677:
	cmp	r2, r3
	bcc	.L679
.L711:
	ldrh	r2, [r4, #30]
.L662:
	bic	r2, r2, #1
	strh	r2, [r4, #30]	@ movhi
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}
	.size	_ZN15CIwSoundManager6UpdateEv, .-_ZN15CIwSoundManager6UpdateEv
	.section	.text._ZN15CIwSoundManager7StopAllEv,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager7StopAllEv
	.hidden	_ZN15CIwSoundManager7StopAllEv
	.type	_ZN15CIwSoundManager7StopAllEv, %function
_ZN15CIwSoundManager7StopAllEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r0, #20]
	mov	r5, r0
	cmp	r3, #0
	beq	.L716
	mov	r4, #0
.L717:
	ldr	r1, [r5, #12]
	ldr	r0, [r1, r4, asl #2]
	bl	_ZN12CIwSoundInst4StopEv
	ldr	r0, [r5, #20]
	add	r4, r4, #1
	cmp	r0, r4
	bhi	.L717
.L716:
	mov	r0, r5
	bl	_ZN15CIwSoundManager6UpdateEv
	mov	r0, #50
	ldmfd	sp!, {r4, r5, r6, lr}
	b	s3eDeviceYield
	.size	_ZN15CIwSoundManager7StopAllEv, .-_ZN15CIwSoundManager7StopAllEv
	.section	.text._Z16IwSoundTerminatev,"ax",%progbits
	.align	2
	.global	_Z16IwSoundTerminatev
	.hidden	_Z16IwSoundTerminatev
	.type	_Z16IwSoundTerminatev, %function
_Z16IwSoundTerminatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r4, .L726
	ldr	r6, [r4, #12]
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L721
	mov	r5, #0
.L722:
	ldr	r1, [r6, #12]
	ldr	r0, [r1, r5, asl #2]
	bl	_ZN12CIwSoundInst4StopEv
	ldr	r0, [r6, #20]
	add	r5, r5, #1
	cmp	r5, r0
	bcc	.L722
.L721:
	mov	r0, r6
	bl	_ZN15CIwSoundManager6UpdateEv
	mov	r0, #50
	bl	s3eDeviceYield
	ldr	r0, [r4, #12]
	cmp	r0, #0
	ldmeqfd	sp!, {r4, r5, r6, pc}
	ldr	ip, [r0, #0]
	ldr	r2, [ip, #4]
	blx	r2
	ldmfd	sp!, {r4, r5, r6, pc}
.L727:
	.align	2
.L726:
	.word	.LANCHOR0
	.size	_Z16IwSoundTerminatev, .-_Z16IwSoundTerminatev
	.section	.text._ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec,"ax",%progbits
	.align	2
	.global	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.hidden	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.type	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec, %function
_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	subs	r8, r1, #0
	mov	r6, r0
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}
	ldr	r4, [r0, #20]
	subs	r5, r4, #1
	bmi	.L730
	sub	r4, r4, #-1073741823
	mov	r4, r4, asl #2
.L737:
	ldr	r1, [r6, #12]
	ldr	r0, [r1, r4]
	ldr	r3, [r0, #0]
	cmp	r8, r3
	beq	.L764
.L731:
	subs	r5, r5, #1
	sub	r4, r4, #4
	bpl	.L737
.L730:
	mov	r0, #50
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	s3eDeviceYield
.L764:
	bl	_ZN12CIwSoundInst4StopEv
	ldr	ip, [r6, #12]
	ldr	r7, [ip, r4]
	ldr	r2, [r7, #0]
	ldr	r0, [r2, #36]
	cmp	r0, #0
	ldrneh	r2, [r0, #24]
	subne	r2, r2, #1
	strneh	r2, [r0, #24]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L733
	mov	r0, r7
	blx	r3
.L733:
	ldrh	lr, [r7, #10]
	ldrh	ip, [r7, #16]
	bic	r2, lr, #2
	add	r3, ip, #1
	orr	r0, r2, #4
	strh	r0, [r7, #10]	@ movhi
	strh	r3, [r7, #16]	@ movhi
	ldr	r1, [r6, #20]
	ldr	r3, [r6, #12]
	sub	lr, r1, #1
	add	r1, r3, lr, asl #2
	cmp	r3, r1
	bhi	.L731
	ldr	r0, [r3, #0]
	cmp	r7, r0
	beq	.L734
	rsb	r0, r3, r1
	mov	lr, r0, lsr #2
	ands	r2, lr, #3
	beq	.L739
	add	r3, r3, #4
	cmp	r1, r3
	bcc	.L731
	ldr	ip, [r3, #0]
	cmp	r7, ip
	beq	.L734
	cmp	r2, #1
	beq	.L739
	cmp	r2, #2
	beq	.L759
	ldr	r2, [r3, #4]!
	cmp	r7, r2
	beq	.L734
.L759:
	ldr	lr, [r3, #4]!
	cmp	r7, lr
	beq	.L734
.L739:
	add	r3, r3, #4
	cmp	r1, r3
	mov	r2, r3
	bcc	.L731
	ldr	ip, [r3, #0]
	cmp	r7, ip
	beq	.L734
	ldr	r0, [r3, #4]!
	cmp	r7, r0
	beq	.L734
	ldr	ip, [r2, #8]
	add	r3, r2, #8
	cmp	r7, ip
	beq	.L734
	ldr	lr, [r2, #12]
	add	r3, r2, #12
	cmp	r7, lr
	bne	.L739
.L734:
	ldr	r2, [r1, #0]
	str	r2, [r3, #0]
	str	r7, [r1, #0]
	ldr	r3, [r6, #20]
	sub	r1, r3, #1
	str	r1, [r6, #20]
	b	.L731
	.size	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec, .-_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
	.hidden	g_IwSoundManager
	.global	g_IwSoundManager
	.hidden	_ZN15CIwSoundManager14s_ChannelsPCM8E
	.global	_ZN15CIwSoundManager14s_ChannelsPCM8E
	.hidden	_ZN15CIwSoundManager15s_ChannelsPCM16E
	.global	_ZN15CIwSoundManager15s_ChannelsPCM16E
	.hidden	_ZN15CIwSoundManager15s_ChannelsADPCME
	.global	_ZN15CIwSoundManager15s_ChannelsADPCME
	.hidden	_ZTV15CIwSoundManager
	.global	_ZTV15CIwSoundManager
	.hidden	_ZTS15CIwSoundManager
	.global	_ZTS15CIwSoundManager
	.hidden	_ZTI15CIwSoundManager
	.global	_ZTI15CIwSoundManager
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
	.type	_ZTV15CIwSoundManager, %object
	.size	_ZTV15CIwSoundManager, 16
_ZTV15CIwSoundManager:
	.word	0
	.word	_ZTI15CIwSoundManager
	.word	_ZN15CIwSoundManagerD1Ev
	.word	_ZN15CIwSoundManagerD0Ev
	.type	_ZTS15CIwSoundManager, %object
	.size	_ZTS15CIwSoundManager, 18
_ZTS15CIwSoundManager:
	.ascii	"15CIwSoundManager\000"
	.space	2
	.type	_ZTI15CIwSoundManager, %object
	.size	_ZTI15CIwSoundManager, 8
_ZTI15CIwSoundManager:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS15CIwSoundManager
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SOUND\000"
	.space	2
.LC1:
	.ascii	"MaxChannels\000"
.LC2:
	.ascii	"CIwSoundData\000"
	.space	3
.LC3:
	.ascii	"CIwSoundDataADPCM\000"
	.space	2
.LC4:
	.ascii	"CIwSoundGroup\000"
	.space	2
.LC5:
	.ascii	"CIwSoundSpec\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_ZN15CIwSoundManager14s_ChannelsPCM8E, %object
	.size	_ZN15CIwSoundManager14s_ChannelsPCM8E, 4
_ZN15CIwSoundManager14s_ChannelsPCM8E:
	.space	4
	.type	_ZN15CIwSoundManager15s_ChannelsPCM16E, %object
	.size	_ZN15CIwSoundManager15s_ChannelsPCM16E, 4
_ZN15CIwSoundManager15s_ChannelsPCM16E:
	.space	4
	.type	_ZN15CIwSoundManager15s_ChannelsADPCME, %object
	.size	_ZN15CIwSoundManager15s_ChannelsADPCME, 4
_ZN15CIwSoundManager15s_ChannelsADPCME:
	.space	4
	.type	g_IwSoundManager, %object
	.size	g_IwSoundManager, 4
g_IwSoundManager:
	.space	4
	.hidden	_ZTV15CIwSoundManager
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
