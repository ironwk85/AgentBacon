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
	.file	"Font.cpp"
	.section	.text._Z10FontUpdatev,"ax",%progbits
	.align	2
	.global	_Z10FontUpdatev
	.hidden	_Z10FontUpdatev
	.type	_Z10FontUpdatev, %function
_Z10FontUpdatev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1
	bx	lr
	.size	_Z10FontUpdatev, .-_Z10FontUpdatev
	.section	.text._Z15gameFinalRenderv,"ax",%progbits
	.align	2
	.global	_Z15gameFinalRenderv
	.hidden	_Z15gameFinalRenderv
	.type	_Z15gameFinalRenderv, %function
_Z15gameFinalRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L6
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L6+4
	ldr	lr, [r0, #0]
	mov	r1, #100	@ movhi
	mov	ip, #200	@ movhi
	mov	r2, #300	@ movhi
	mov	r4, #500	@ movhi
	strh	r2, [lr, #20]	@ movhi
	strh	r1, [lr, #26]	@ movhi
	strh	ip, [lr, #24]	@ movhi
	strh	r4, [lr, #22]	@ movhi
	mov	r0, r5
	bl	_ZN6CInput8getCoinsEv
	ldr	r4, .L6+8
	mov	r6, r0, asl #16
	mov	r0, r5
	bl	_ZN6CInput8getLifesEv
	mov	r6, r6, lsr #16
	mov	r2, r0, asl #16
	mov	r0, r5
	mov	r5, r2, lsr #16
	bl	_ZN6CInput12getTotalTimeEv
	mov	r1, #1000	@ movhi
	smulbb	r3, r5, r1
	mov	ip, r6, asl #16
	ldr	r1, .L6+12
	add	r2, r0, ip, asr #16
	add	r2, r2, r3
	mov	r0, r4
	bl	sprintf
	mov	r0, r4
	mvn	r1, #0
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z16IwGxFontDrawTextPKci
.L7:
	.align	2
.L6:
	.word	g_IwGxFontState
	.word	g_Input
	.word	.LANCHOR0
	.word	.LC0
	.size	_Z15gameFinalRenderv, .-_Z15gameFinalRenderv
	.section	.text._Z14gameOverRenderv,"ax",%progbits
	.align	2
	.global	_Z14gameOverRenderv
	.hidden	_Z14gameOverRenderv
	.type	_Z14gameOverRenderv, %function
_Z14gameOverRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L11
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L11+4
	ldr	r4, [r3, #0]
	mov	lr, #200	@ movhi
	ldr	r1, .L11+8
	mov	ip, #100	@ movhi
	mov	r0, #260	@ movhi
	strh	lr, [r4, #24]	@ movhi
	strh	r1, [r4, #20]	@ movhi
	strh	ip, [r4, #26]	@ movhi
	strh	r0, [r4, #22]	@ movhi
	mov	r0, r5
	bl	_ZN6CInput8getCoinsEv
	ldr	r4, .L11+12
	mov	r6, r0, asl #16
	mov	r0, r5
	bl	_ZN6CInput8getLifesEv
	mov	r6, r6, lsr #16
	mov	r2, r0, asl #16
	mov	r0, r5
	mov	r5, r2, lsr #16
	bl	_ZN6CInput12getTotalTimeEv
	mov	r1, #1000	@ movhi
	smulbb	r3, r5, r1
	mov	ip, r6, asl #16
	ldr	r1, .L11+16
	add	r2, r0, ip, asr #16
	add	r2, r2, r3
	mov	r0, r4
	bl	sprintf
	mov	r0, r4
	mvn	r1, #0
	ldmfd	sp!, {r4, r5, r6, lr}
	b	_Z16IwGxFontDrawTextPKci
.L12:
	.align	2
.L11:
	.word	g_IwGxFontState
	.word	g_Input
	.word	330
	.word	.LANCHOR0
	.word	.LC0
	.size	_Z14gameOverRenderv, .-_Z14gameOverRenderv
	.section	.text._Z15FontCoinsRenderv,"ax",%progbits
	.align	2
	.global	_Z15FontCoinsRenderv
	.hidden	_Z15FontCoinsRenderv
	.type	_Z15FontCoinsRenderv, %function
_Z15FontCoinsRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L16
	mov	lr, #100	@ movhi
	ldr	r3, [r4, #0]
	mov	ip, #200	@ movhi
	mov	r2, #50	@ movhi
	mov	r1, #55	@ movhi
	strh	r2, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	strh	lr, [r3, #26]	@ movhi
	strh	ip, [r3, #24]	@ movhi
	ldr	r0, .L16+4
	bl	_ZN6CInput8getCoinsEv
	ldr	r4, .L16+8
	ldr	r1, .L16+12
	mov	r2, r0, asl #16
	mov	r2, r2, asr #16
	mov	r0, r4
	bl	sprintf
	mov	r0, r4
	mvn	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_Z16IwGxFontDrawTextPKci
.L17:
	.align	2
.L16:
	.word	g_IwGxFontState
	.word	g_Input
	.word	.LANCHOR0+52
	.word	.LC1
	.size	_Z15FontCoinsRenderv, .-_Z15FontCoinsRenderv
	.section	.text._Z14FontLifeRenderv,"ax",%progbits
	.align	2
	.global	_Z14FontLifeRenderv
	.hidden	_Z14FontLifeRenderv
	.type	_Z14FontLifeRenderv, %function
_Z14FontLifeRenderv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L21
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #0]
	mov	ip, #100	@ movhi
	mov	r4, #50
	mov	r1, #5	@ movhi
	strh	r4, [r3, #20]	@ movhi
	strh	r4, [r3, #24]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	strh	ip, [r3, #26]	@ movhi
	ldr	r0, .L21+4
	bl	_ZN6CInput8getLifesEv
	ldr	r4, .L21+8
	ldr	r1, .L21+12
	mov	r2, r0, asl #16
	mov	r2, r2, asr #16
	mov	r0, r4
	bl	sprintf
	mov	r0, r4
	mvn	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_Z16IwGxFontDrawTextPKci
.L22:
	.align	2
.L21:
	.word	g_IwGxFontState
	.word	g_Input
	.word	.LANCHOR0+56
	.word	.LC1
	.size	_Z14FontLifeRenderv, .-_Z14FontLifeRenderv
	.section	.text._Z12FontShutDownv,"ax",%progbits
	.align	2
	.global	_Z12FontShutDownv
	.hidden	_Z12FontShutDownv
	.type	_Z12FontShutDownv, %function
_Z12FontShutDownv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z17IwGxFontTerminatev
	ldmfd	sp!, {r4, lr}
	b	_Z21IwResManagerTerminatev
	.size	_Z12FontShutDownv, .-_Z12FontShutDownv
	.section	.text._Z8FontInitv,"ax",%progbits
	.align	2
	.global	_Z8FontInitv
	.hidden	_Z8FontInitv
	.type	_Z8FontInitv, %function
_Z8FontInitv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	_Z8IwGxInitv
	bl	_Z16IwResManagerInitv
	ldr	r4, .L27
	bl	_Z12IwGxFontInitv
	ldr	r1, .L27+4
	mov	r2, #0
	ldr	r0, [r4, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r1, .L27+8
	ldr	r2, .L27+12
	mov	r3, #0
	ldr	r0, [r4, #0]
	bl	_ZNK13CIwResManager11GetResNamedEPKcS1_j
	ldr	ip, .L27+16
	ldr	r3, .L27+20
	ldr	r2, [ip, #0]
	str	r0, [r3, #60]
	str	r0, [r2, #16]
	ldr	r1, [ip, #0]
	ldr	r3, [r0, #24]
	str	r3, [r1, #52]
	ldr	r2, [ip, #0]
	ldrsb	r1, [r0, #17]
	str	r1, [r2, #48]
	ldr	r3, [ip, #0]
	mov	r2, #-16777216
	str	r2, [r3, #28]
	ldmfd	sp!, {r4, pc}
.L28:
	.align	2
.L27:
	.word	g_IwResManager
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	g_IwGxFontState
	.word	.LANCHOR0
	.size	_Z8FontInitv, .-_Z8FontInitv
	.hidden	font
	.global	font
	.hidden	lifes
	.global	lifes
	.hidden	coins
	.global	coins
	.hidden	finalScore
	.global	finalScore
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SCORE:  %d\000"
	.space	1
.LC1:
	.ascii	"%d\000"
	.space	1
.LC2:
	.ascii	"IwGxFontBasic.group\000"
.LC3:
	.ascii	"font\000"
	.space	3
.LC4:
	.ascii	"CIwGxFont\000"
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	finalScore, %object
	.size	finalScore, 50
finalScore:
	.space	50
	.space	2
	.type	coins, %object
	.size	coins, 3
coins:
	.space	3
	.space	1
	.type	lifes, %object
	.size	lifes, 2
lifes:
	.space	2
	.space	2
	.type	font, %object
	.size	font, 4
font:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
