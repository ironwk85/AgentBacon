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
	.file	"IwSoundSpec.cpp"
	.section	.text._ZN10CIwManaged9ParseOpenEP16CIwTextParserITX,"axG",%progbits,_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX,comdat
	.align	2
	.weak	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.hidden	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.type	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX, %function
_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX, .-_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.section	.text._ZN10CIwManaged11HandleEventEP8CIwEvent,"axG",%progbits,_ZN10CIwManaged11HandleEventEP8CIwEvent,comdat
	.align	2
	.weak	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.hidden	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.type	_ZN10CIwManaged11HandleEventEP8CIwEvent, %function
_ZN10CIwManaged11HandleEventEP8CIwEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN10CIwManaged11HandleEventEP8CIwEvent, .-_ZN10CIwManaged11HandleEventEP8CIwEvent
	.section	.text._ZN10CIwManaged11DebugRenderEv,"axG",%progbits,_ZN10CIwManaged11DebugRenderEv,comdat
	.align	2
	.weak	_ZN10CIwManaged11DebugRenderEv
	.hidden	_ZN10CIwManaged11DebugRenderEv
	.type	_ZN10CIwManaged11DebugRenderEv, %function
_ZN10CIwManaged11DebugRenderEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN10CIwManaged11DebugRenderEv, .-_ZN10CIwManaged11DebugRenderEv
	.section	.text._ZN11CIwResource10ApplyScaleEi,"axG",%progbits,_ZN11CIwResource10ApplyScaleEi,comdat
	.align	2
	.weak	_ZN11CIwResource10ApplyScaleEi
	.hidden	_ZN11CIwResource10ApplyScaleEi
	.type	_ZN11CIwResource10ApplyScaleEi, %function
_ZN11CIwResource10ApplyScaleEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN11CIwResource10ApplyScaleEi, .-_ZN11CIwResource10ApplyScaleEi
	.section	.text._ZN11CIwResource10ApplyScaleEf,"axG",%progbits,_ZN11CIwResource10ApplyScaleEf,comdat
	.align	2
	.weak	_ZN11CIwResource10ApplyScaleEf
	.hidden	_ZN11CIwResource10ApplyScaleEf
	.type	_ZN11CIwResource10ApplyScaleEf, %function
_ZN11CIwResource10ApplyScaleEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN11CIwResource10ApplyScaleEf, .-_ZN11CIwResource10ApplyScaleEf
	.section	.text._Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv,"ax",%progbits
	.align	2
	.global	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.hidden	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.type	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv, %function
_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	cmp	r0, #0
	ldreqh	r3, [r1, #10]
	movne	r0, #1
	orreq	r3, r3, #2
	streqh	r3, [r1, #10]	@ movhi
	bx	lr
	.size	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv, .-_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.section	.text._Z20_GetCIwSoundSpecSizev,"ax",%progbits
	.align	2
	.global	_Z20_GetCIwSoundSpecSizev
	.hidden	_Z20_GetCIwSoundSpecSizev
	.type	_Z20_GetCIwSoundSpecSizev, %function
_Z20_GetCIwSoundSpecSizev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #40
	bx	lr
	.size	_Z20_GetCIwSoundSpecSizev, .-_Z20_GetCIwSoundSpecSizev
	.section	.text._ZNK12CIwSoundSpec12GetClassNameEv,"ax",%progbits
	.align	2
	.global	_ZNK12CIwSoundSpec12GetClassNameEv
	.hidden	_ZNK12CIwSoundSpec12GetClassNameEv
	.type	_ZNK12CIwSoundSpec12GetClassNameEv, %function
_ZNK12CIwSoundSpec12GetClassNameEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L19
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LC0
	.size	_ZNK12CIwSoundSpec12GetClassNameEv, .-_ZNK12CIwSoundSpec12GetClassNameEv
	.section	.text._ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.hidden	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.type	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc, %function
_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc, .-_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.section	.text._ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.hidden	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.type	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX, %function
_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX, .-_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.section	.text._ZN12CIwSoundSpec7ResolveEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec7ResolveEv
	.hidden	_ZN12CIwSoundSpec7ResolveEv
	.type	_ZN12CIwSoundSpec7ResolveEv, %function
_ZN12CIwSoundSpec7ResolveEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManaged7ResolveEv
	add	r0, r4, #32
	ldr	r1, .L27
	mov	r2, #0
	bl	_Z20IwResolveManagedHashPvPKcj
	add	r0, r4, #36
	mov	r2, #0
	ldr	r1, .L27+4
	ldmfd	sp!, {r4, lr}
	b	_Z20IwResolveManagedHashPvPKcj
.L28:
	.align	2
.L27:
	.word	.LC1
	.word	.LC2
	.size	_ZN12CIwSoundSpec7ResolveEv, .-_ZN12CIwSoundSpec7ResolveEv
	.section	.text._ZN12CIwSoundSpec9SerialiseEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec9SerialiseEv
	.hidden	_ZN12CIwSoundSpec9SerialiseEv
	.type	_ZN12CIwSoundSpec9SerialiseEv, %function
_ZN12CIwSoundSpec9SerialiseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManaged9SerialiseEv
	add	r0, r4, #16
	mov	r1, #1
	mov	r2, #16
	mov	r3, #2
	bl	_Z17IwSerialiseUInt16Rtiii
	add	r0, r4, #20
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #22
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #24
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #26
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #28
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #30
	mov	r1, #1
	mov	r2, #15
	mov	r3, #2
	bl	_Z16IwSerialiseInt16Rsiii
	add	r0, r4, #32
	bl	_Z22IwSerialiseManagedHashPv
	add	r0, r4, #36
	ldmfd	sp!, {r4, lr}
	b	_Z22IwSerialiseManagedHashPv
	.size	_ZN12CIwSoundSpec9SerialiseEv, .-_ZN12CIwSoundSpec9SerialiseEv
	.section	.text._ZN12CIwSoundSpecD0Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecD0Ev
	.hidden	_ZN12CIwSoundSpecD0Ev
	.type	_ZN12CIwSoundSpecD0Ev, %function
_ZN12CIwSoundSpecD0Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L35+4
	str	r0, [r4, #0]
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L32
	mov	r1, r4
	bl	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
.L32:
	ldr	r1, .L35+8
	str	r1, [r4, #0]
	mov	r0, r4
	bl	_ZN10CIwManagedD2Ev
	mov	r0, r4
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L36:
	.align	2
.L35:
	.word	g_IwSoundManager
	.word	.LANCHOR0+8
	.word	_ZTV18CIwManagedRefCount+8
	.size	_ZN12CIwSoundSpecD0Ev, .-_ZN12CIwSoundSpecD0Ev
	.section	.text._ZN12CIwSoundSpecD1Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecD1Ev
	.hidden	_ZN12CIwSoundSpecD1Ev
	.type	_ZN12CIwSoundSpecD1Ev, %function
_ZN12CIwSoundSpecD1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L40
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L40+4
	str	r0, [r4, #0]
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L38
	mov	r1, r4
	bl	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
.L38:
	ldr	r1, .L40+8
	str	r1, [r4, #0]
	mov	r0, r4
	bl	_ZN10CIwManagedD2Ev
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L41:
	.align	2
.L40:
	.word	g_IwSoundManager
	.word	.LANCHOR0+8
	.word	_ZTV18CIwManagedRefCount+8
	.size	_ZN12CIwSoundSpecD1Ev, .-_ZN12CIwSoundSpecD1Ev
	.section	.text._ZN12CIwSoundSpecD2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecD2Ev
	.hidden	_ZN12CIwSoundSpecD2Ev
	.type	_ZN12CIwSoundSpecD2Ev, %function
_ZN12CIwSoundSpecD2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L45
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L45+4
	str	r0, [r4, #0]
	ldr	r0, [r3, #0]
	cmp	r0, #0
	beq	.L43
	mov	r1, r4
	bl	_ZN15CIwSoundManager13StopSoundSpecEP12CIwSoundSpec
.L43:
	ldr	r1, .L45+8
	str	r1, [r4, #0]
	mov	r0, r4
	bl	_ZN10CIwManagedD2Ev
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L46:
	.align	2
.L45:
	.word	g_IwSoundManager
	.word	.LANCHOR0+8
	.word	_ZTV18CIwManagedRefCount+8
	.size	_ZN12CIwSoundSpecD2Ev, .-_ZN12CIwSoundSpecD2Ev
	.section	.text._ZN12CIwSoundSpecC1Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecC1Ev
	.hidden	_ZN12CIwSoundSpecC1Ev
	.type	_ZN12CIwSoundSpecC1Ev, %function
_ZN12CIwSoundSpecC1Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManagedC2Ev
	mov	r3, #0
	mov	r2, #4096
	ldr	r1, .L51
	str	r1, [r4, #0]
	strh	r2, [r4, #30]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	str	r3, [r4, #32]
	strh	r2, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	str	r3, [r4, #36]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L52:
	.align	2
.L51:
	.word	.LANCHOR0+8
	.size	_ZN12CIwSoundSpecC1Ev, .-_ZN12CIwSoundSpecC1Ev
	.section	.text._ZN12CIwSoundSpecC2Ev,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpecC2Ev
	.hidden	_ZN12CIwSoundSpecC2Ev
	.type	_ZN12CIwSoundSpecC2Ev, %function
_ZN12CIwSoundSpecC2Ev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_ZN10CIwManagedC2Ev
	mov	r3, #0
	mov	r2, #4096
	ldr	r1, .L57
	str	r1, [r4, #0]
	strh	r2, [r4, #30]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	str	r3, [r4, #32]
	strh	r2, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	str	r3, [r4, #36]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L58:
	.align	2
.L57:
	.word	.LANCHOR0+8
	.size	_ZN12CIwSoundSpecC2Ev, .-_ZN12CIwSoundSpecC2Ev
	.section	.text._Z20_CIwSoundSpecFactoryv,"ax",%progbits
	.align	2
	.global	_Z20_CIwSoundSpecFactoryv
	.hidden	_Z20_CIwSoundSpecFactoryv
	.type	_Z20_CIwSoundSpecFactoryv, %function
_Z20_CIwSoundSpecFactoryv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #40
	bl	_Znwj
	mov	r4, r0
	bl	_ZN10CIwManagedC2Ev
	mov	r3, #0
	mov	r2, #4096
	ldr	r1, .L63
	str	r1, [r4, #0]
	strh	r2, [r4, #30]	@ movhi
	strh	r3, [r4, #16]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	strh	r3, [r4, #14]	@ movhi
	str	r3, [r4, #32]
	strh	r2, [r4, #20]	@ movhi
	strh	r2, [r4, #22]	@ movhi
	strh	r3, [r4, #24]	@ movhi
	strh	r3, [r4, #26]	@ movhi
	strh	r2, [r4, #28]	@ movhi
	str	r3, [r4, #36]
	mov	r0, r4
	ldmfd	sp!, {r4, pc}
.L64:
	.align	2
.L63:
	.word	.LANCHOR0+8
	.size	_Z20_CIwSoundSpecFactoryv, .-_Z20_CIwSoundSpecFactoryv
	.section	.text._ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE,"axG",%progbits,_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE,comdat
	.align	2
	.weak	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE
	.hidden	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE
	.type	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE, %function
_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r4, r1
	ldr	r6, [r0, #24]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	mov	r8, r0
	mov	r0, r5
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	ands	r5, r3, #1
	mov	r7, r0
	bne	.L66
	ldr	r2, [r4, #8]
	str	r5, [r4, #4]
	cmp	r2, #0
	beq	.L66
	str	r5, [r4, #8]
	ldr	r0, [r4, #0]
	mov	r1, #2
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	str	r5, [r4, #0]
.L66:
	mov	r8, r8, lsr #1
	mov	r7, r7, lsr #1
	orr	r3, r3, #1
	strb	r3, [r4, #12]
	stmia	r4, {r6, r8}	@ phole stm
	str	r7, [r4, #8]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.size	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE, .-_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE
	.section	.text.T.295,"ax",%progbits
	.align	2
	.type	T.295, %function
T.295:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	mov	r2, #0
	bic	r1, ip, #1
	strb	r1, [r0, #12]
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	str	r2, [r0, #4]
	bic	r1, ip, #2
	strb	r1, [r0, #12]
	str	r2, [r0, #0]
	str	r2, [r0, #8]
	bx	lr
	.size	T.295, .-T.295
	.global	__aeabi_idivmod
	.section	.text._ZN12CIwSoundSpec4PlayEPK14CIwSoundParams,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.hidden	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.type	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams, %function
_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r7, .L105
	sub	sp, sp, #44
	mov	r4, r0
	ldr	r0, [r7, #0]
	mov	r6, r1
	bl	_ZN15CIwSoundManager11GetFreeInstEv
	subs	r5, r0, #0
	beq	.L72
	ldr	r3, [r4, #32]
	ldr	r0, [r7, #0]
	ldr	r2, [r3, #32]
	mov	r1, r5
	bl	_ZN15CIwSoundManager14GetFreeChannelEP12CIwSoundInst17IwSoundDataFormat
	cmp	r0, #0
	str	r0, [sp, #12]
	blt	.L101
	cmp	r6, #0
	ldreq	r3, [r7, #0]
	ldr	r8, [r4, #36]
	ldreq	r6, [r3, #36]
	cmp	r8, #0
	beq	.L75
	ldrh	r2, [r8, #22]
	ldrh	r3, [r8, #24]
	cmp	r2, #0
	bne	.L102
.L77:
	add	r0, r3, #1
	strh	r0, [r8, #24]	@ movhi
.L79:
	mov	r9, #0	@ movhi
	strh	r9, [r5, #14]	@ movhi
	ldrh	fp, [r4, #20]
	ldrsh	r3, [r4, #22]
	mov	r2, fp, asl #16
	mov	sl, r2, asr #16
	cmp	sl, r3
	beq	.L80
	subs	fp, r3, sl
	beq	.L82
	bl	IwRand
	mov	r1, fp
	bl	__aeabi_idivmod
	mov	fp, r1
.L82:
	add	ip, fp, sl
	mov	fp, ip, asl #16
	mov	fp, fp, lsr #16
.L80:
	ldrh	lr, [r4, #24]
	ldrsh	r3, [r4, #26]
	mov	r9, lr, asl #16
	mov	sl, r9, asr #16
	cmp	sl, r3
	beq	.L83
	subs	r9, r3, sl
	beq	.L85
	bl	IwRand
	mov	r1, r9
	bl	__aeabi_idivmod
	mov	r9, r1
.L85:
	add	r3, r9, sl
	mov	r9, r3, asl #16
.L83:
	ldrh	sl, [r4, #28]
	ldrsh	r1, [r4, #30]
	mov	r3, sl, asl #16
	mov	sl, r3, asr #16
	cmp	sl, r1
	beq	.L86
	subs	r1, r1, sl
	beq	.L88
	str	r1, [sp, #8]
	bl	IwRand
	ldr	r1, [sp, #8]
	bl	__aeabi_idivmod
.L88:
	add	r0, r1, sl
	mov	r3, r0, asl #16
.L86:
	str	r4, [r5, #0]
	ldrh	lr, [r6, #0]
	smulbb	ip, lr, fp
	mov	fp, ip, asl #4
	mov	fp, fp, lsr #16
	strh	fp, [r5, #4]	@ movhi
	ldrsh	r1, [r6, #2]
	add	r9, r1, r9, asr #16
	cmn	r9, #4096
	movlt	r9, #61440
	bge	.L103
.L90:
	strh	r9, [r5, #6]	@ movhi
	ldrsh	lr, [r6, #4]
	mov	sl, r3, asr #16
	mul	ip, lr, sl
	mov	r6, #0
	mov	r2, ip, asr #12
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, [sp, #12]
	strh	r1, [r5, #12]	@ movhi
	str	r6, [r5, #20]
	ldr	r3, [r7, #0]
	ldrh	r0, [r8, #20]
	str	r0, [sp, #16]
	ldrh	r7, [r3, #30]
	ldrh	r9, [r3, #24]
	tst	r7, #2
	ldrh	ip, [r4, #16]
	ldrh	r7, [r8, #16]
	ldrh	r8, [r3, #28]
	bne	.L104
.L72:
	mov	r0, r5
	add	sp, sp, #44
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L103:
	cmp	r9, #4096
	movge	r9, #4096
	mov	r9, r9, asl #16
	mov	r9, r9, lsr #16
	b	.L90
.L102:
	cmp	r2, r3
	bne	.L77
	ldrh	sl, [r8, #26]
	ands	sl, sl, #2
	beq	.L78
	mov	r0, r8
	mov	r1, #1
	bl	_ZN13CIwSoundGroup14KillOldestInstEb
	ldrh	r3, [r8, #24]
	b	.L77
.L104:
	and	lr, ip, #1
	mov	r3, r5
	mov	r1, r6
	ldr	r2, .L105+4
	ldr	r0, [sp, #12]
	str	lr, [sp, #20]
	bl	s3eSoundChannelRegister
	smulbb	r1, r7, r9
	mov	fp, fp, asl #16
	mov	r0, r1, asr #12
	mov	fp, fp, asr #16
	mul	r0, fp, r0
	mov	r1, #3
	mov	r7, r0, asl #4
	mov	r2, r7, asr #20
	cmp	r2, #256
	movge	r2, #256
	ldr	r0, [sp, #12]
	bl	s3eSoundChannelSetInt
	ldr	r3, [sp, #16]
	ldr	ip, [r5, #0]
	smulbb	r2, r3, r8
	ldr	r0, [ip, #32]
	mov	r1, r2, asr #12
	mul	r1, sl, r1
	ldr	r3, [r0, #28]
	mov	r7, r1, asl #4
	mov	r8, r7, asr #16
	mul	r8, r3, r8
	ldr	r0, [sp, #12]
	mov	r2, r8, asr #12
	mov	r1, #1
	bl	s3eSoundChannelSetInt
	ldr	r8, [r4, #32]
	ldr	r7, [r8, #32]
	cmp	r7, #1
	beq	.L92
	cmp	r7, #2
	beq	.L93
	cmp	r7, r6
	bne	.L72
	mov	r0, r8
	ldr	r6, [r8, #24]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	mov	r4, r0
	mov	r0, r8
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	ldr	ip, [sp, #20]
	ldr	r0, [sp, #12]
	cmp	ip, #0
	mov	r1, r6
	mov	r2, r4, asr #1
	mvnne	r3, #0
	moveq	r3, #1
	str	r7, [sp, #0]
	bl	s3eSoundChannelPlay
	b	.L72
.L93:
	add	r8, sp, #24
	mov	r0, r8
	bl	T.295
	mov	r1, r8
	ldr	r0, [r4, #32]
	bl	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE
	mov	r1, r7
	ldr	r2, [r4, #32]
	ldr	r0, [sp, #12]
	bl	s3eSoundChannelSetInt
	ldr	r3, [sp, #20]
	ldr	ip, [sp, #28]
	cmp	r3, #0
	mov	r2, ip, asl #1
	mvnne	r3, #0
	moveq	r3, #1
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #12]
	mov	r2, r2, asr #1
	str	r6, [sp, #0]
	bl	s3eSoundChannelPlay
	ldrb	r1, [sp, #36]	@ zero_extendqisi2
	tst	r1, #1
	bne	.L72
	mov	r1, r7
	ldr	r0, [sp, #24]
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	b	.L72
.L75:
	ldr	r1, [r7, #0]
	ldr	r8, [r1, #32]
	b	.L79
.L92:
	add	r7, sp, #24
	mov	r0, r7
	bl	T.295
	ldr	r0, [r4, #32]
	mov	r1, r7
	bl	_ZNK12CIwSoundData7GetDataER8CIwArrayIs12CIwAllocatorIs15CIwMallocRouterIsEE17ReallocateDefaultIsS4_EE
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #28]
	cmp	r0, #0
	mov	ip, r3, asl #1
	mov	r2, ip, asr #1
	mvnne	r3, #0
	moveq	r3, #1
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #24]
	str	r6, [sp, #0]
	bl	s3eSoundChannelPlay
	ldrb	r2, [sp, #36]	@ zero_extendqisi2
	tst	r2, #1
	bne	.L72
	ldr	r0, [sp, #24]
	mov	r1, #2
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	b	.L72
.L101:
	mov	r1, r5
	ldr	r0, [r7, #0]
	bl	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	mov	r5, #0
	b	.L72
.L78:
	mov	r1, r5
	ldr	r0, [r7, #0]
	bl	_ZN15CIwSoundManager11SetFreeInstEP12CIwSoundInst
	mov	r5, sl
	b	.L72
.L106:
	.align	2
.L105:
	.word	g_IwSoundManager
	.word	_Z24_IwSoundSpec_EndSampleCBP21s3eSoundEndSampleInfoPv
	.size	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams, .-_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
	.global	__aeabi_idiv
	.section	.text._ZN12CIwSoundSpec5TraceEv,"ax",%progbits
	.align	2
	.global	_ZN12CIwSoundSpec5TraceEv
	.hidden	_ZN12CIwSoundSpec5TraceEv
	.type	_ZN12CIwSoundSpec5TraceEv, %function
_ZN12CIwSoundSpec5TraceEv:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r5, .L160
	sub	sp, sp, #156
	str	r0, [sp, #36]
	ldmia	r5, {r0, r1}
	add	r3, r5, #8
	strb	r1, [sp, #148]
	ldr	r1, [sp, #36]
	add	r4, sp, #144
	str	r0, [sp, #144]
	str	r4, [sp, #0]
	ldr	r5, [r1, #32]
	ldmia	r3, {r0, r1}
	add	r2, sp, #136
	str	r2, [sp, #4]
	str	r0, [sp, #136]
	strb	r1, [sp, #140]
	ldr	r3, [r5, #32]
	str	r3, [sp, #40]
	cmp	r3, #0
	ldr	r4, [r5, #20]
	bne	.L154
	ldr	r9, [r5, #24]
	mov	r0, r5
	str	r9, [sp, #16]
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	mov	r0, r5
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	mov	r7, #2
	mov	r6, #1
	ldr	r0, [sp, #40]
	str	r7, [sp, #12]
	str	r6, [sp, #44]
	str	r0, [sp, #24]
.L113:
	ldr	lr, [sp, #36]
	mov	r3, #60
	mov	r2, #14
	mov	r1, #15
	str	r3, [sp, #20]
	str	r2, [sp, #32]
	str	r1, [sp, #28]
	ldr	fp, [lr, #32]
	add	r5, sp, #52
.L114:
	ldr	r0, [fp, #32]
	ldr	r6, [sp, #0]
	ldr	r2, [sp, #20]
	cmp	r1, #0
	ldr	sl, [sp, #4]
	mov	r3, r2, asl #16
	movge	sl, r6
	cmp	r0, #1
	mov	r9, r3, asr #16
	beq	.L155
	ldr	r3, [sp, #16]
	ldr	r1, [sp, #12]
	ldrsb	r0, [r3, #0]
	bl	__aeabi_idiv
	mov	r6, r0, asl #16
	mov	r3, r6, lsr #16
.L141:
	mov	r7, r3, asl #16
	cmp	r9, r7, asr #16
	movge	r3, #0
	bge	.L143
	ldr	r6, [sp, #20]
	rsb	lr, r6, r3
	mov	ip, lr, asl #16
	mov	r3, ip, asr #16
	cmp	r3, #4
	movge	r3, #4
.L143:
	mov	r2, #1
	ldrb	r3, [sl, r3]	@ zero_extendqisi2
	cmp	r2, #0
	strb	r3, [r5, #0]
	mov	r6, r2
	mov	r7, r4
	beq	.L121
	ldr	r0, [fp, #32]
	cmp	r0, r2
	beq	.L144
	add	r2, r2, #-872415232
	add	r1, r2, #13369344
	add	r0, r1, #52224
	add	r3, r0, #204
	umull	r1, lr, r3, r4
	ldr	r2, [sp, #16]
	mov	ip, lr, lsr #6
	ldr	r1, [sp, #12]
	ldrsb	r0, [r2, ip]
	bl	__aeabi_idiv
	mov	r1, r0, asl #16
	mov	r2, r1, lsr #16
.L145:
	mov	r3, r2, asl #16
	cmp	r9, r3, asr #16
	movge	r3, #0
	bge	.L147
	ldr	r3, [sp, #20]
	rsb	lr, r3, r2
	mov	r2, lr, asl #16
	mov	r3, r2, asr #16
	cmp	r3, #4
	movge	r3, #4
.L147:
	ldrb	ip, [sl, r3]	@ zero_extendqisi2
	strb	ip, [r5, r6]
	add	r6, r6, #1
	cmp	r6, #80
	add	r7, r7, r4
	bne	.L121
	b	.L148
.L135:
	ldr	r3, .L160+4
	ldr	r2, [sp, #16]
	umull	r1, r0, r3, r7
	ldr	r1, [sp, #12]
	mov	lr, r0, lsr #6
	ldrsb	r0, [r2, lr]
	bl	__aeabi_idiv
	mov	r6, r0, asl #16
	mov	r0, r6, lsr #16
.L149:
	mov	r3, r0, asl #16
	cmp	r9, r3, asr #16
	movge	r3, #0
	bge	.L151
	ldr	r1, [sp, #20]
	rsb	ip, r1, r0
	mov	r3, ip, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #4
	movge	r3, #4
.L151:
	add	r6, r8, #1
	ldrb	r2, [sl, r3]	@ zero_extendqisi2
	cmp	r6, #80
	strb	r2, [r5, r8]
	add	r7, r7, r4
	beq	.L148
.L121:
	ldr	r1, .L160+4
	ldr	r2, [fp, #32]
	umull	ip, r3, r1, r7
	cmp	r2, #1
	mov	lr, r3, lsr #6
	ldreq	ip, [sp, #24]
	ldrne	ip, [sp, #16]
	moveq	lr, lr, asl #1
	ldreqsh	r0, [lr, ip]
	ldrnesb	r0, [ip, lr]
	ldr	r1, [sp, #12]
	bl	__aeabi_idiv
	mov	r8, r0, asl #16
	mov	r0, r8, lsr #16
	mov	r3, r0, asl #16
	cmp	r9, r3, asr #16
	movge	r3, #0
	bge	.L120
	ldr	ip, [sp, #20]
	rsb	r8, ip, r0
	mov	r0, r8, asl #16
	mov	r3, r0, asr #16
	cmp	r3, #4
	movge	r3, #4
.L120:
	ldrb	r3, [sl, r3]	@ zero_extendqisi2
	strb	r3, [r5, r6]
	ldr	lr, [fp, #32]
	add	r8, r6, #1
	cmp	lr, #1
	add	r7, r7, r4
	bne	.L135
	ldr	r0, .L160+4
	ldr	ip, [sp, #24]
	umull	r2, lr, r0, r7
	ldr	r1, [sp, #12]
	mov	r2, lr, lsr #6
	mov	r6, r2, asl #1
	ldrsh	r0, [r6, ip]
	bl	__aeabi_idiv
	mov	r1, r0, asl #16
	mov	r0, r1, lsr #16
	b	.L149
.L148:
	ldr	r2, [sp, #28]
	mov	r1, #0
	cmp	r2, #0
	strb	r1, [sp, #132]
	beq	.L156
	ldr	r0, [sp, #32]
	cmn	r0, #16
	blt	.L157
.L123:
	ldr	lr, [sp, #20]
	ldr	sl, [sp, #28]
	ldr	r9, [sp, #32]
	sub	ip, lr, #4
	mov	r6, ip, asl #16
	sub	r0, sl, #1
	mov	r1, r6, lsr #16
	sub	r7, r9, #1
	str	r1, [sp, #20]
	str	r0, [sp, #28]
	str	r7, [sp, #32]
	mov	r1, r0
	b	.L114
.L155:
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #12]
	ldrsh	r0, [r2, #0]
	bl	__aeabi_idiv
	mov	r1, r0, asl #16
	mov	r3, r1, lsr #16
	b	.L141
.L156:
	mov	r0, r5
	mov	r1, #45
	mov	r2, #80
	bl	memset
	ldr	r7, [sp, #36]
	ldr	fp, [sp, #28]
	mov	r9, #48
	strb	r9, [sp, #52]
	strb	fp, [sp, #132]
	ldr	fp, [r7, #32]
	b	.L123
.L144:
	ldr	r1, .L160+4
	ldr	lr, [sp, #24]
	umull	r2, ip, r1, r4
	ldr	r1, [sp, #12]
	mov	r0, ip, lsr #6
	mov	r3, r0, asl #1
	ldrsh	r0, [r3, lr]
	bl	__aeabi_idiv
	mov	ip, r0, asl #16
	mov	r2, ip, lsr #16
	b	.L145
.L157:
	ldr	ip, [sp, #44]
	cmp	ip, #0
	beq	.L158
.L124:
	ldr	lr, [sp, #40]
	cmp	lr, #0
	beq	.L159
.L126:
	add	sp, sp, #156
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L154:
	cmp	r3, #1
	beq	.L111
	mov	r0, #0
	mov	r1, #1
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	mov	r0, #0
	mov	r1, #2
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	b	.L126
.L159:
	ldr	r0, [sp, #24]
	mov	r1, #2
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	b	.L126
.L158:
	ldr	r0, [sp, #16]
	mov	r1, #1
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	b	.L124
.L111:
	ldr	ip, [r5, #24]
	mov	r0, r5
	str	ip, [sp, #24]
	mov	sl, #0
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	mov	fp, #512
	mov	r0, r5
	bl	_ZNK12CIwSoundData13GetBufferSizeEv
	str	sl, [sp, #16]
	str	fp, [sp, #12]
	str	sl, [sp, #44]
	b	.L113
.L161:
	.align	2
.L160:
	.word	.LANCHOR0+72
	.word	-858993459
	.size	_ZN12CIwSoundSpec5TraceEv, .-_ZN12CIwSoundSpec5TraceEv
	.hidden	_ZTV12CIwSoundSpec
	.global	_ZTV12CIwSoundSpec
	.hidden	_ZTS12CIwSoundSpec
	.global	_ZTS12CIwSoundSpec
	.hidden	_ZTI12CIwSoundSpec
	.global	_ZTI12CIwSoundSpec
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV12CIwSoundSpec, %object
	.size	_ZTV12CIwSoundSpec, 72
_ZTV12CIwSoundSpec:
	.word	0
	.word	_ZTI12CIwSoundSpec
	.word	_ZN12CIwSoundSpecD1Ev
	.word	_ZN12CIwSoundSpecD0Ev
	.word	_ZN10CIwManaged9ParseOpenEP16CIwTextParserITX
	.word	_ZN12CIwSoundSpec10ParseCloseEP16CIwTextParserITX
	.word	_ZN12CIwSoundSpec14ParseAttributeEP16CIwTextParserITXPKc
	.word	_ZN12CIwSoundSpec9SerialiseEv
	.word	_ZN12CIwSoundSpec7ResolveEv
	.word	_ZN10CIwManaged15ParseCloseChildEP16CIwTextParserITXPS_
	.word	_ZN10CIwManaged11HandleEventEP8CIwEvent
	.word	_ZN10CIwManaged7SetNameEPKc
	.word	_ZNK12CIwSoundSpec12GetClassNameEv
	.word	_ZN10CIwManaged11DebugRenderEv
	.word	_ZN18CIwManagedRefCount17DebugAddMenuItemsEP7CIwMenu
	.word	_ZN18CIwManagedRefCount8_ReplaceEP10CIwManaged
	.word	_ZN11CIwResource10ApplyScaleEi
	.word	_ZN11CIwResource10ApplyScaleEf
	.type	_ZZN12CIwSoundSpec5TraceEvE5C.211, %object
	.size	_ZZN12CIwSoundSpec5TraceEvE5C.211, 5
_ZZN12CIwSoundSpec5TraceEvE5C.211:
	.byte	32
	.byte	46
	.byte	58
	.byte	39
	.byte	124
	.space	3
	.type	_ZZN12CIwSoundSpec5TraceEvE5C.212, %object
	.size	_ZZN12CIwSoundSpec5TraceEvE5C.212, 5
_ZZN12CIwSoundSpec5TraceEvE5C.212:
	.byte	124
	.byte	33
	.byte	58
	.byte	39
	.byte	32
	.space	3
	.type	_ZTS12CIwSoundSpec, %object
	.size	_ZTS12CIwSoundSpec, 15
_ZTS12CIwSoundSpec:
	.ascii	"12CIwSoundSpec\000"
	.space	1
	.type	_ZTI12CIwSoundSpec, %object
	.size	_ZTI12CIwSoundSpec, 12
_ZTI12CIwSoundSpec:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS12CIwSoundSpec
	.word	_ZTI11CIwResource
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"CIwSoundSpec\000"
	.space	3
.LC1:
	.ascii	"CIwSoundData\000"
	.space	3
.LC2:
	.ascii	"CIwSoundGroup\000"
	.hidden	_ZTV12CIwSoundSpec
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
