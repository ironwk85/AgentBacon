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
	.file	"IwSoundInst.cpp"
	.section	.text._ZN12CIwSoundInstC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInstC2Ev
	.hidden	_ZN12CIwSoundInstC2Ev
	.type	_ZN12CIwSoundInstC2Ev, %function
_ZN12CIwSoundInstC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #4096
	mov	r1, #4	@ movhi
	strh	r2, [r0, #16]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	str	r2, [r0, #0]
	strh	ip, [r0, #4]	@ movhi
	strh	r2, [r0, #6]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	str	r2, [r0, #20]
	bx	lr
	.size	_ZN12CIwSoundInstC2Ev, .-_ZN12CIwSoundInstC2Ev
	.section	.text._ZN12CIwSoundInstC1Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInstC1Ev
	.hidden	_ZN12CIwSoundInstC1Ev
	.type	_ZN12CIwSoundInstC1Ev, %function
_ZN12CIwSoundInstC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	ip, #4096
	mov	r1, #4	@ movhi
	strh	r2, [r0, #16]	@ movhi
	strh	ip, [r0, #8]	@ movhi
	str	r2, [r0, #0]
	strh	ip, [r0, #4]	@ movhi
	strh	r2, [r0, #6]	@ movhi
	strh	r1, [r0, #10]	@ movhi
	str	r2, [r0, #20]
	bx	lr
	.size	_ZN12CIwSoundInstC1Ev, .-_ZN12CIwSoundInstC1Ev
	.section	.text._ZN12CIwSoundInst6SetVolEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6SetVolEs
	.hidden	_ZN12CIwSoundInst6SetVolEs
	.type	_ZN12CIwSoundInst6SetVolEs, %function
_ZN12CIwSoundInst6SetVolEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0, #10]
	strh	r1, [r0, #4]	@ movhi
	orr	r3, r2, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst6SetVolEs, .-_ZN12CIwSoundInst6SetVolEs
	.section	.text._ZN12CIwSoundInst6SetPanEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6SetPanEs
	.hidden	_ZN12CIwSoundInst6SetPanEs
	.type	_ZN12CIwSoundInst6SetPanEs, %function
_ZN12CIwSoundInst6SetPanEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0, #10]
	strh	r1, [r0, #6]	@ movhi
	orr	r3, r2, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst6SetPanEs, .-_ZN12CIwSoundInst6SetPanEs
	.section	.text._ZN12CIwSoundInst8SetPitchEs,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst8SetPitchEs
	.hidden	_ZN12CIwSoundInst8SetPitchEs
	.type	_ZN12CIwSoundInst8SetPitchEs, %function
_ZN12CIwSoundInst8SetPitchEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0, #10]
	strh	r1, [r0, #8]	@ movhi
	orr	r3, r2, #1
	strh	r3, [r0, #10]	@ movhi
	bx	lr
	.size	_ZN12CIwSoundInst8SetPitchEs, .-_ZN12CIwSoundInst8SetPitchEs
	.section	.text._ZNK12CIwSoundInst9IsPlayingEv,"ax",%progbits
	.align	2
	.global	_ZNK12CIwSoundInst9IsPlayingEv
	.hidden	_ZNK12CIwSoundInst9IsPlayingEv
	.type	_ZNK12CIwSoundInst9IsPlayingEv, %function
_ZNK12CIwSoundInst9IsPlayingEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L19
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r1, #0]
	ldrh	r3, [r0, #30]
	tst	r3, #2
	bne	.L18
.L14:
	mov	r0, #0
	ldmfd	sp!, {r4, pc}
.L18:
	ldrh	r0, [r4, #12]
	mov	r1, #4
	bl	s3eSoundChannelGetInt
	cmp	r0, #1
	bne	.L14
	ldrh	r0, [r4, #12]
	mov	r1, #5
	bl	s3eSoundChannelGetInt
	subs	r0, r0, #1
	movne	r0, #1
	ldmfd	sp!, {r4, pc}
.L20:
	.align	2
.L19:
	.word	g_IwSoundManager
	.size	_ZNK12CIwSoundInst9IsPlayingEv, .-_ZNK12CIwSoundInst9IsPlayingEv
	.section	.text._ZN12CIwSoundInst6ResumeEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst6ResumeEv
	.hidden	_ZN12CIwSoundInst6ResumeEv
	.type	_ZN12CIwSoundInst6ResumeEv, %function
_ZN12CIwSoundInst6ResumeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24
	ldr	r1, [r2, #0]
	ldrh	r3, [r1, #30]
	tst	r3, #2
	bxeq	lr
	ldrh	r0, [r0, #12]
	b	s3eSoundChannelResume
.L25:
	.align	2
.L24:
	.word	g_IwSoundManager
	.size	_ZN12CIwSoundInst6ResumeEv, .-_ZN12CIwSoundInst6ResumeEv
	.section	.text._ZN12CIwSoundInst5PauseEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst5PauseEv
	.hidden	_ZN12CIwSoundInst5PauseEv
	.type	_ZN12CIwSoundInst5PauseEv, %function
_ZN12CIwSoundInst5PauseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L29
	ldr	r1, [r2, #0]
	ldrh	r3, [r1, #30]
	tst	r3, #2
	bxeq	lr
	ldrh	r0, [r0, #12]
	b	s3eSoundChannelPause
.L30:
	.align	2
.L29:
	.word	g_IwSoundManager
	.size	_ZN12CIwSoundInst5PauseEv, .-_ZN12CIwSoundInst5PauseEv
	.section	.text._ZN12CIwSoundInst4StopEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundInst4StopEv
	.hidden	_ZN12CIwSoundInst4StopEv
	.type	_ZN12CIwSoundInst4StopEv, %function
_ZN12CIwSoundInst4StopEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L34
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, [r1, #0]
	ldrh	r3, [r0, #30]
	tst	r3, #2
	ldmeqfd	sp!, {r4, pc}
	ldrh	r0, [r4, #12]
	bl	s3eSoundChannelStop
	ldrh	ip, [r4, #10]
	orr	r2, ip, #2
	strh	r2, [r4, #10]	@ movhi
	ldmfd	sp!, {r4, pc}
.L35:
	.align	2
.L34:
	.word	g_IwSoundManager
	.size	_ZN12CIwSoundInst4StopEv, .-_ZN12CIwSoundInst4StopEv
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
