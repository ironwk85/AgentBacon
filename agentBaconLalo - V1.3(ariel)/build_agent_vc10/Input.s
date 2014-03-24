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
	.file	"Input.cpp"
	.section	.text._Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent,"ax",%progbits
	.align	2
	.global	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent
	.hidden	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent
	.type	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent, %function
_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L16
	ldr	r2, [r0, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	cmp	r1, #0
	bxeq	lr
	ldr	ip, [r3, #16]
	cmp	r2, ip
	moveq	ip, #0
	beq	.L4
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L6
	ldr	r1, [r3, #32]
	cmp	r2, r1
	moveq	ip, #1
	beq	.L4
	ldrb	r1, [r3, #28]	@ zero_extendqisi2
	cmp	r1, #0
	moveq	r1, #1
	beq	.L6
	ldr	r1, [r3, #48]
	cmp	r2, r1
	moveq	ip, #2
	beq	.L4
	ldrb	r1, [r3, #44]	@ zero_extendqisi2
	cmp	r1, #0
	moveq	r1, #2
	beq	.L6
	ldr	ip, [r3, #64]
	cmp	r2, ip
	beq	.L15
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	cmp	r1, #0
	bxne	lr
	mov	r1, #3
.L6:
	add	ip, r3, r1, asl #4
	add	r1, r3, r1, asl #4
	add	ip, ip, #4
	str	r2, [r1, #16]
	b	.L12
.L15:
	mov	ip, #3
.L4:
	add	r2, r3, ip, asl #4
	add	ip, r2, #4
.L12:
	ldr	r3, [r0, #4]
	subs	r1, r3, #0
	movne	r1, #1
	strb	r1, [ip, #8]
	ldr	r2, [r0, #8]
	str	r2, [ip, #0]
	ldr	r3, [r0, #12]
	str	r3, [ip, #4]
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent, .-_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent
	.section	.text._Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent,"ax",%progbits
	.align	2
	.global	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.hidden	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.type	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent, %function
_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32
	ldr	r2, [r0, #0]
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	cmp	r1, #0
	bxeq	lr
	ldr	ip, [r3, #16]
	cmp	r2, ip
	moveq	ip, #0
	beq	.L21
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L23
	ldr	r1, [r3, #32]
	cmp	r2, r1
	moveq	ip, #1
	beq	.L21
	ldrb	r1, [r3, #28]	@ zero_extendqisi2
	cmp	r1, #0
	moveq	r1, #1
	beq	.L23
	ldr	r1, [r3, #48]
	cmp	r2, r1
	moveq	ip, #2
	beq	.L21
	ldrb	r1, [r3, #44]	@ zero_extendqisi2
	cmp	r1, #0
	moveq	r1, #2
	beq	.L23
	ldr	ip, [r3, #64]
	cmp	r2, ip
	beq	.L31
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	cmp	r1, #0
	bxne	lr
	mov	r1, #3
.L23:
	add	ip, r3, r1, asl #4
	add	r1, r3, r1, asl #4
	add	ip, ip, #4
	str	r2, [r1, #16]
	b	.L29
.L31:
	mov	ip, #3
.L21:
	add	r2, r3, ip, asl #4
	add	ip, r2, #4
.L29:
	ldr	r2, [r0, #4]
	str	r2, [ip, #0]
	ldr	r3, [r0, #8]
	str	r3, [ip, #4]
	bx	lr
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.size	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent, .-_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.section	.text._Z25HandleSingleTouchButtonCBP15s3ePointerEvent,"ax",%progbits
	.align	2
	.global	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent
	.hidden	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent
	.type	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent, %function
_Z25HandleSingleTouchButtonCBP15s3ePointerEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r3, .L36
	subs	ip, r2, #0
	movne	ip, #1
	strb	ip, [r3, #12]
	ldr	r1, [r0, #8]
	str	r1, [r3, #4]
	ldr	r2, [r0, #12]
	str	r2, [r3, #8]
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.size	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent, .-_Z25HandleSingleTouchButtonCBP15s3ePointerEvent
	.section	.text._Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent,"ax",%progbits
	.align	2
	.global	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent
	.hidden	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent
	.type	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent, %function
_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L40
	ldr	r1, [r0, #0]
	str	r1, [r3, #4]
	ldr	r2, [r0, #4]
	str	r2, [r3, #8]
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent, .-_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent
	.section	.text._ZN6CInput9findTouchEi,"ax",%progbits
	.align	2
	.global	_ZN6CInput9findTouchEi
	.hidden	_ZN6CInput9findTouchEi
	.type	_ZN6CInput9findTouchEi, %function
_ZN6CInput9findTouchEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L55
.L43:
	mov	r0, #0
	bx	lr
.L55:
	ldr	r3, [r0, #16]
	cmp	r3, r1
	moveq	r3, #0
	beq	.L45
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r0, #32]
	cmp	r3, r1
	moveq	r3, #1
	beq	.L45
	ldrb	r3, [r0, #28]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #1
	beq	.L47
	ldr	r3, [r0, #48]
	cmp	r3, r1
	moveq	r3, #2
	beq	.L45
	ldrb	r3, [r0, #44]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #2
	beq	.L47
	ldr	r2, [r0, #64]
	cmp	r2, r1
	beq	.L56
	ldrb	ip, [r0, #60]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L43
	mov	r3, #3
.L47:
	add	r2, r0, r3, asl #4
	str	r1, [r2, #16]
	add	r0, r2, #4
	bx	lr
.L56:
	mov	r3, #3
.L45:
	add	r0, r0, r3, asl #4
	add	r0, r0, #4
	bx	lr
	.size	_ZN6CInput9findTouchEi, .-_ZN6CInput9findTouchEi
	.section	.text._ZN6CInput12getTouchByIDEi,"ax",%progbits
	.align	2
	.global	_ZN6CInput12getTouchByIDEi
	.hidden	_ZN6CInput12getTouchByIDEi
	.type	_ZN6CInput12getTouchByIDEi, %function
_ZN6CInput12getTouchByIDEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L65
.L58:
	mov	r0, #0
	bx	lr
.L65:
	ldrb	r2, [r0, #12]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L59
	ldr	r3, [r0, #16]
	cmp	r3, r1
	moveq	r3, #0
	beq	.L60
.L59:
	ldrb	ip, [r0, #28]	@ zero_extendqisi2
	cmp	ip, #0
	beq	.L61
	ldr	r3, [r0, #32]
	cmp	r3, r1
	moveq	r3, #1
	beq	.L60
.L61:
	ldrb	r3, [r0, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r0, #48]
	cmp	r3, r1
	moveq	r3, #2
	beq	.L60
.L62:
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L58
	ldr	ip, [r0, #64]
	cmp	ip, r1
	bne	.L58
	mov	r3, #3
.L60:
	add	r0, r0, r3, asl #4
	add	r0, r0, #4
	bx	lr
	.size	_ZN6CInput12getTouchByIDEi, .-_ZN6CInput12getTouchByIDEi
	.section	.text._ZNK6CInput13getTouchCountEv,"ax",%progbits
	.align	2
	.global	_ZNK6CInput13getTouchCountEv
	.hidden	_ZNK6CInput13getTouchCountEv
	.type	_ZNK6CInput13getTouchCountEv, %function
_ZNK6CInput13getTouchCountEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #1
	movne	r0, #0
	bxne	lr
	ldrb	ip, [r0, #12]	@ zero_extendqisi2
	ldrb	r3, [r0, #28]	@ zero_extendqisi2
	cmp	ip, #0
	movne	ip, #1
	ldrb	r1, [r0, #44]	@ zero_extendqisi2
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	cmp	r3, #0
	addne	ip, ip, #1
	cmp	r1, #0
	moveq	r0, ip
	addne	r0, ip, #1
	cmp	r2, #0
	addne	r0, r0, #1
	bx	lr
	.size	_ZNK6CInput13getTouchCountEv, .-_ZNK6CInput13getTouchCountEv
	.section	.text._ZN6CInput16setSurfaceHeightEi,"ax",%progbits
	.align	2
	.global	_ZN6CInput16setSurfaceHeightEi
	.hidden	_ZN6CInput16setSurfaceHeightEi
	.type	_ZN6CInput16setSurfaceHeightEi, %function
_ZN6CInput16setSurfaceHeightEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #108]
	bx	lr
	.size	_ZN6CInput16setSurfaceHeightEi, .-_ZN6CInput16setSurfaceHeightEi
	.section	.text._ZN6CInput16getSurfaceHeightEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput16getSurfaceHeightEv
	.hidden	_ZN6CInput16getSurfaceHeightEv
	.type	_ZN6CInput16getSurfaceHeightEv, %function
_ZN6CInput16getSurfaceHeightEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #108]
	bx	lr
	.size	_ZN6CInput16getSurfaceHeightEv, .-_ZN6CInput16getSurfaceHeightEv
	.section	.text._ZN6CInput11getPosInitYEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput11getPosInitYEv
	.hidden	_ZN6CInput11getPosInitYEv
	.type	_ZN6CInput11getPosInitYEv, %function
_ZN6CInput11getPosInitYEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #72]	@ float
	bx	lr
	.size	_ZN6CInput11getPosInitYEv, .-_ZN6CInput11getPosInitYEv
	.section	.text._ZN6CInput11setPosInitYEf,"ax",%progbits
	.align	2
	.global	_ZN6CInput11setPosInitYEf
	.hidden	_ZN6CInput11setPosInitYEf
	.type	_ZN6CInput11setPosInitYEf, %function
_ZN6CInput11setPosInitYEf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s15, .L86
	fsts	s15, [r0, #72]
	bx	lr
.L87:
	.align	2
.L86:
	.word	-1003552768
	.size	_ZN6CInput11setPosInitYEf, .-_ZN6CInput11setPosInitYEf
	.section	.text._ZN6CInput11getVelocityEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput11getVelocityEv
	.hidden	_ZN6CInput11getVelocityEv
	.type	_ZN6CInput11getVelocityEv, %function
_ZN6CInput11getVelocityEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #92]
	bx	lr
	.size	_ZN6CInput11getVelocityEv, .-_ZN6CInput11getVelocityEv
	.section	.text._ZN6CInput11setVelocityEi,"ax",%progbits
	.align	2
	.global	_ZN6CInput11setVelocityEi
	.hidden	_ZN6CInput11setVelocityEi
	.type	_ZN6CInput11setVelocityEi, %function
_ZN6CInput11setVelocityEi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #1000
	strge	r1, [r0, #92]
	bx	lr
	.size	_ZN6CInput11setVelocityEi, .-_ZN6CInput11setVelocityEi
	.section	.text._ZN6CInput14getScreenWidthEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput14getScreenWidthEv
	.hidden	_ZN6CInput14getScreenWidthEv
	.type	_ZN6CInput14getScreenWidthEv, %function
_ZN6CInput14getScreenWidthEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #96]
	bx	lr
	.size	_ZN6CInput14getScreenWidthEv, .-_ZN6CInput14getScreenWidthEv
	.section	.text._ZN6CInput15getScreenHeightEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput15getScreenHeightEv
	.hidden	_ZN6CInput15getScreenHeightEv
	.type	_ZN6CInput15getScreenHeightEv, %function
_ZN6CInput15getScreenHeightEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #98]
	bx	lr
	.size	_ZN6CInput15getScreenHeightEv, .-_ZN6CInput15getScreenHeightEv
	.section	.text._ZN6CInput8getLifesEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8getLifesEv
	.hidden	_ZN6CInput8getLifesEv
	.type	_ZN6CInput8getLifesEv, %function
_ZN6CInput8getLifesEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #100]
	bx	lr
	.size	_ZN6CInput8getLifesEv, .-_ZN6CInput8getLifesEv
	.section	.text._ZN6CInput8getCoinsEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8getCoinsEv
	.hidden	_ZN6CInput8getCoinsEv
	.type	_ZN6CInput8getCoinsEv, %function
_ZN6CInput8getCoinsEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #104]
	bx	lr
	.size	_ZN6CInput8getCoinsEv, .-_ZN6CInput8getCoinsEv
	.section	.text._ZN6CInput8getScoreEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8getScoreEv
	.hidden	_ZN6CInput8getScoreEv
	.type	_ZN6CInput8getScoreEv, %function
_ZN6CInput8getScoreEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrsh	r0, [r0, #102]
	bx	lr
	.size	_ZN6CInput8getScoreEv, .-_ZN6CInput8getScoreEv
	.section	.text._ZN6CInput8setLifesEs,"ax",%progbits
	.align	2
	.global	_ZN6CInput8setLifesEs
	.hidden	_ZN6CInput8setLifesEs
	.type	_ZN6CInput8setLifesEs, %function
_ZN6CInput8setLifesEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strh	r1, [r0, #100]	@ movhi
	bx	lr
	.size	_ZN6CInput8setLifesEs, .-_ZN6CInput8setLifesEs
	.section	.text._ZN6CInput8setCoinsEs,"ax",%progbits
	.align	2
	.global	_ZN6CInput8setCoinsEs
	.hidden	_ZN6CInput8setCoinsEs
	.type	_ZN6CInput8setCoinsEs, %function
_ZN6CInput8setCoinsEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strh	r1, [r0, #104]	@ movhi
	bx	lr
	.size	_ZN6CInput8setCoinsEs, .-_ZN6CInput8setCoinsEs
	.section	.text._ZN6CInput8setScoreEs,"ax",%progbits
	.align	2
	.global	_ZN6CInput8setScoreEs
	.hidden	_ZN6CInput8setScoreEs
	.type	_ZN6CInput8setScoreEs, %function
_ZN6CInput8setScoreEs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strh	r1, [r0, #102]	@ movhi
	bx	lr
	.size	_ZN6CInput8setScoreEs, .-_ZN6CInput8setScoreEs
	.section	.text._ZN6CInput7soundOnEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7soundOnEv
	.hidden	_ZN6CInput7soundOnEv
	.type	_ZN6CInput7soundOnEv, %function
_ZN6CInput7soundOnEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	strb	r3, [r0, #106]
	bx	lr
	.size	_ZN6CInput7soundOnEv, .-_ZN6CInput7soundOnEv
	.section	.text._ZN6CInput8soundOffEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8soundOffEv
	.hidden	_ZN6CInput8soundOffEv
	.type	_ZN6CInput8soundOffEv, %function
_ZN6CInput8soundOffEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	strb	r3, [r0, #106]
	bx	lr
	.size	_ZN6CInput8soundOffEv, .-_ZN6CInput8soundOffEv
	.section	.text._ZN6CInput8getSoundEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8getSoundEv
	.hidden	_ZN6CInput8getSoundEv
	.type	_ZN6CInput8getSoundEv, %function
_ZN6CInput8getSoundEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #106]	@ zero_extendqisi2
	bx	lr
	.size	_ZN6CInput8getSoundEv, .-_ZN6CInput8getSoundEv
	.section	.text._ZN6CInput6gameOnEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput6gameOnEv
	.hidden	_ZN6CInput6gameOnEv
	.type	_ZN6CInput6gameOnEv, %function
_ZN6CInput6gameOnEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1
	strb	r3, [r0, #107]
	bx	lr
	.size	_ZN6CInput6gameOnEv, .-_ZN6CInput6gameOnEv
	.section	.text._ZN6CInput7gameOffEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7gameOffEv
	.hidden	_ZN6CInput7gameOffEv
	.type	_ZN6CInput7gameOffEv, %function
_ZN6CInput7gameOffEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	strb	r3, [r0, #107]
	bx	lr
	.size	_ZN6CInput7gameOffEv, .-_ZN6CInput7gameOffEv
	.section	.text._ZN6CInput7getGameEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7getGameEv
	.hidden	_ZN6CInput7getGameEv
	.type	_ZN6CInput7getGameEv, %function
_ZN6CInput7getGameEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #107]	@ zero_extendqisi2
	bx	lr
	.size	_ZN6CInput7getGameEv, .-_ZN6CInput7getGameEv
	.section	.text._ZN6CInput12setTotalTimeEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput12setTotalTimeEv
	.hidden	_ZN6CInput12setTotalTimeEv
	.type	_ZN6CInput12setTotalTimeEv, %function
_ZN6CInput12setTotalTimeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	s3eTimerGetUST
	str	r0, [r4, #88]
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput12setTotalTimeEv, .-_ZN6CInput12setTotalTimeEv
	.section	.text._ZN6CInput12getTotalTimeEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput12getTotalTimeEv
	.hidden	_ZN6CInput12getTotalTimeEv
	.type	_ZN6CInput12getTotalTimeEv, %function
_ZN6CInput12getTotalTimeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	s3eTimerGetUST
	ldr	r3, [r4, #88]
	rsb	r0, r3, r0
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput12getTotalTimeEv, .-_ZN6CInput12getTotalTimeEv
	.section	.text._ZN6CInput7getTimeEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7getTimeEv
	.hidden	_ZN6CInput7getTimeEv
	.type	_ZN6CInput7getTimeEv, %function
_ZN6CInput7getTimeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	s3eTimerGetUST
	ldrd	r2, [r4, #80]
	subs	r2, r0, r2
	sbc	r3, r1, r3
	mov	r1, r3
	mov	r0, r2
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput7getTimeEv, .-_ZN6CInput7getTimeEv
	.section	.text._ZN6CInput9initTimerEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput9initTimerEv
	.hidden	_ZN6CInput9initTimerEv
	.type	_ZN6CInput9initTimerEv, %function
_ZN6CInput9initTimerEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	s3eTimerGetUST
	strd	r0, [r4, #80]
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput9initTimerEv, .-_ZN6CInput9initTimerEv
	.section	.text._ZN6CInput11updateSoundEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput11updateSoundEv
	.hidden	_ZN6CInput11updateSoundEv
	.type	_ZN6CInput11updateSoundEv, %function
_ZN6CInput11updateSoundEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L131
	ldr	r0, [r3, #0]
	b	_ZN15CIwSoundManager6UpdateEv
.L132:
	.align	2
.L131:
	.word	g_IwSoundManager
	.size	_ZN6CInput11updateSoundEv, .-_ZN6CInput11updateSoundEv
	.section	.text._ZN6CInput12playMaxiCoinEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput12playMaxiCoinEv
	.hidden	_ZN6CInput12playMaxiCoinEv
	.type	_ZN6CInput12playMaxiCoinEv, %function
_ZN6CInput12playMaxiCoinEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L135
	stmfd	sp!, {r4, lr}
	ldr	r1, .L135+4
	ldr	r0, [r3, #144]
	ldr	r2, .L135+8
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j
	mov	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
.L136:
	.align	2
.L135:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.size	_ZN6CInput12playMaxiCoinEv, .-_ZN6CInput12playMaxiCoinEv
	.section	.text._ZN6CInput8playCoinEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8playCoinEv
	.hidden	_ZN6CInput8playCoinEv
	.type	_ZN6CInput8playCoinEv, %function
_ZN6CInput8playCoinEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L139
	stmfd	sp!, {r4, lr}
	ldr	r1, .L139+4
	ldr	r0, [r3, #144]
	ldr	r2, .L139+8
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j
	mov	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
.L140:
	.align	2
.L139:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC1
	.size	_ZN6CInput8playCoinEv, .-_ZN6CInput8playCoinEv
	.section	.text._ZN6CInput8playLifeEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8playLifeEv
	.hidden	_ZN6CInput8playLifeEv
	.type	_ZN6CInput8playLifeEv, %function
_ZN6CInput8playLifeEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L143
	stmfd	sp!, {r4, lr}
	ldr	r1, .L143+4
	ldr	r0, [r3, #144]
	ldr	r2, .L143+8
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j
	mov	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
	.word	.LC3
	.word	.LC1
	.size	_ZN6CInput8playLifeEv, .-_ZN6CInput8playLifeEv
	.section	.text._ZN6CInput9playClashEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput9playClashEv
	.hidden	_ZN6CInput9playClashEv
	.type	_ZN6CInput9playClashEv, %function
_ZN6CInput9playClashEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L147
	stmfd	sp!, {r4, lr}
	ldr	r1, .L147+4
	ldr	r0, [r3, #144]
	ldr	r2, .L147+8
	mov	r3, #0
	bl	_ZNK11CIwResGroup11GetResNamedEPKcS1_j
	mov	r1, #0
	ldmfd	sp!, {r4, lr}
	b	_ZN12CIwSoundSpec4PlayEPK14CIwSoundParams
.L148:
	.align	2
.L147:
	.word	.LANCHOR0
	.word	.LC4
	.word	.LC1
	.size	_ZN6CInput9playClashEv, .-_ZN6CInput9playClashEv
	.section	.text._ZN6CInput8stopSongEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8stopSongEv
	.hidden	_ZN6CInput8stopSongEv
	.type	_ZN6CInput8stopSongEv, %function
_ZN6CInput8stopSongEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	s3eAudioStop
	.size	_ZN6CInput8stopSongEv, .-_ZN6CInput8stopSongEv
	.section	.text._ZN6CInput8playSongEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput8playSongEv
	.hidden	_ZN6CInput8playSongEv
	.type	_ZN6CInput8playSongEv, %function
_ZN6CInput8playSongEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	ldr	r0, .L153
	b	s3eAudioPlay
.L154:
	.align	2
.L153:
	.word	.LC5
	.size	_ZN6CInput8playSongEv, .-_ZN6CInput8playSongEv
	.section	.text._ZN6CInput16initScreenHeightEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput16initScreenHeightEv
	.hidden	_ZN6CInput16initScreenHeightEv
	.type	_ZN6CInput16initScreenHeightEv, %function
_ZN6CInput16initScreenHeightEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	strh	r0, [r4, #98]	@ movhi
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput16initScreenHeightEv, .-_ZN6CInput16initScreenHeightEv
	.section	.text._ZN6CInput15initScreenWidthEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput15initScreenWidthEv
	.hidden	_ZN6CInput15initScreenWidthEv
	.type	_ZN6CInput15initScreenWidthEv, %function
_ZN6CInput15initScreenWidthEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	_Z19Iw2DGetSurfaceWidthv
	strh	r0, [r4, #96]	@ movhi
	ldmfd	sp!, {r4, pc}
	.size	_ZN6CInput15initScreenWidthEv, .-_ZN6CInput15initScreenWidthEv
	.section	.text._ZN6CInput17getAccelerometerYEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput17getAccelerometerYEv
	.hidden	_ZN6CInput17getAccelerometerYEv
	.type	_ZN6CInput17getAccelerometerYEv, %function
_ZN6CInput17getAccelerometerYEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	bl	s3eAccelerometerGetZ
	fmsr	s0, r0	@ int
	fsitos	s15, s0
	fmrs	r0, s15
	ldmfd	sp!, {r3, pc}
	.size	_ZN6CInput17getAccelerometerYEv, .-_ZN6CInput17getAccelerometerYEv
	.section	.text._ZN6CInput20showOnScreenKeyboardEPKciS1_,"ax",%progbits
	.align	2
	.global	_ZN6CInput20showOnScreenKeyboardEPKciS1_
	.hidden	_ZN6CInput20showOnScreenKeyboardEPKciS1_
	.type	_ZN6CInput20showOnScreenKeyboardEPKciS1_, %function
_ZN6CInput20showOnScreenKeyboardEPKciS1_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	mov	r4, r2
	cmp	ip, #0
	beq	.L166
	cmp	r3, #0
	mov	r0, r1
	beq	.L164
	mov	r1, r3
	ldmfd	sp!, {r4}
	b	s3eOSReadStringUTF8WithDefault
.L166:
	mov	r0, ip
	ldmfd	sp!, {r4}
	bx	lr
.L164:
	mov	r1, r2
	ldmfd	sp!, {r4}
	b	s3eOSReadStringUTF8
	.size	_ZN6CInput20showOnScreenKeyboardEPKciS1_, .-_ZN6CInput20showOnScreenKeyboardEPKciS1_
	.section	.text._ZNK6CInput14wasKeyReleasedE6s3eKey,"ax",%progbits
	.align	2
	.global	_ZNK6CInput14wasKeyReleasedE6s3eKey
	.hidden	_ZNK6CInput14wasKeyReleasedE6s3eKey
	.type	_ZNK6CInput14wasKeyReleasedE6s3eKey, %function
_ZNK6CInput14wasKeyReleasedE6s3eKey:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #1
	movne	r0, #0
	ldmnefd	sp!, {r3, pc}
	mov	r0, r1
	bl	s3eKeyboardGetState
	mov	r0, r0, lsr #2
	and	r0, r0, #1
	ldmfd	sp!, {r3, pc}
	.size	_ZNK6CInput14wasKeyReleasedE6s3eKey, .-_ZNK6CInput14wasKeyReleasedE6s3eKey
	.section	.text._ZNK6CInput13wasKeyPressedE6s3eKey,"ax",%progbits
	.align	2
	.global	_ZNK6CInput13wasKeyPressedE6s3eKey
	.hidden	_ZNK6CInput13wasKeyPressedE6s3eKey
	.type	_ZNK6CInput13wasKeyPressedE6s3eKey, %function
_ZNK6CInput13wasKeyPressedE6s3eKey:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #1
	movne	r0, #0
	ldmnefd	sp!, {r3, pc}
	mov	r0, r1
	bl	s3eKeyboardGetState
	mov	r0, r0, lsr #1
	and	r0, r0, #1
	ldmfd	sp!, {r3, pc}
	.size	_ZNK6CInput13wasKeyPressedE6s3eKey, .-_ZNK6CInput13wasKeyPressedE6s3eKey
	.section	.text._ZNK6CInput7isKeyUpE6s3eKey,"ax",%progbits
	.align	2
	.global	_ZNK6CInput7isKeyUpE6s3eKey
	.hidden	_ZNK6CInput7isKeyUpE6s3eKey
	.type	_ZNK6CInput7isKeyUpE6s3eKey, %function
_ZNK6CInput7isKeyUpE6s3eKey:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #1
	movne	r0, #0
	ldmnefd	sp!, {r3, pc}
	mov	r0, r1
	bl	s3eKeyboardGetState
	mov	r0, #1
	ldmfd	sp!, {r3, pc}
	.size	_ZNK6CInput7isKeyUpE6s3eKey, .-_ZNK6CInput7isKeyUpE6s3eKey
	.section	.text._ZNK6CInput9isKeyDownE6s3eKey,"ax",%progbits
	.align	2
	.global	_ZNK6CInput9isKeyDownE6s3eKey
	.hidden	_ZNK6CInput9isKeyDownE6s3eKey
	.type	_ZNK6CInput9isKeyDownE6s3eKey, %function
_ZNK6CInput9isKeyDownE6s3eKey:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #1
	movne	r0, #0
	ldmnefd	sp!, {r3, pc}
	mov	r0, r1
	bl	s3eKeyboardGetState
	and	r0, r0, #1
	ldmfd	sp!, {r3, pc}
	.size	_ZNK6CInput9isKeyDownE6s3eKey, .-_ZNK6CInput9isKeyDownE6s3eKey
	.section	.text._ZN6CInput6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput6UpdateEv
	.hidden	_ZN6CInput6UpdateEv
	.type	_ZN6CInput6UpdateEv, %function
_ZN6CInput6UpdateEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	mov	r4, r0
	cmp	r3, #0
	bne	.L187
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
.L188:
	ldmfd	sp!, {r4, lr}
	b	s3eKeyboardUpdate
.L187:
	bl	s3ePointerUpdate
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	cmp	r0, #0
	ldmeqfd	sp!, {r4, pc}
	b	.L188
	.size	_ZN6CInput6UpdateEv, .-_ZN6CInput6UpdateEv
	.section	.text._ZN6CInput7ReleaseEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7ReleaseEv
	.hidden	_ZN6CInput7ReleaseEv
	.type	_ZN6CInput7ReleaseEv, %function
_ZN6CInput7ReleaseEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldrb	r3, [r0, #0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L190
	ldrb	r0, [r0, #3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L193
	ldr	r1, .L194
	bl	s3ePointerUnRegister
	mov	r0, #1
	ldr	r1, .L194+4
	bl	s3ePointerUnRegister
.L190:
	ldmfd	sp!, {r4, lr}
	b	s3eAudioStop
.L193:
	ldr	r1, .L194+8
	mov	r0, #2
	bl	s3ePointerUnRegister
	ldr	r1, .L194+12
	mov	r0, #3
	bl	s3ePointerUnRegister
	b	.L190
.L195:
	.align	2
.L194:
	.word	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent
	.word	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent
	.word	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent
	.word	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.size	_ZN6CInput7ReleaseEv, .-_ZN6CInput7ReleaseEv
	.section	.text._ZN6CInput24getAccelerometerVelocityEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput24getAccelerometerVelocityEv
	.hidden	_ZN6CInput24getAccelerometerVelocityEv
	.type	_ZN6CInput24getAccelerometerVelocityEv, %function
_ZN6CInput24getAccelerometerVelocityEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	fstmfdd	sp!, {d8}
	flds	s16, [r0, #72]
	bl	s3eAccelerometerGetZ
	fmsr	s14, r0	@ int
	fsitos	s0, s14
	fsubs	s15, s0, s16
	fmrs	r0, s15
	fldmfdd	sp!, {d8}
	ldmfd	sp!, {r3, pc}
	.size	_ZN6CInput24getAccelerometerVelocityEv, .-_ZN6CInput24getAccelerometerVelocityEv
	.section	.text._ZN6CInput4InitEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput4InitEv
	.hidden	_ZN6CInput4InitEv
	.type	_ZN6CInput4InitEv, %function
_ZN6CInput4InitEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, #1
	mov	r4, r0
	strb	r5, [r0, #112]
	strb	r5, [r0, #115]
	strb	r5, [r0, #114]
	strb	r5, [r0, #113]
	mov	r0, #196
	bl	_Znwj
	ldr	r7, .L207+4
	mov	r8, r0
	bl	_ZN10CIwTextureC1Ev
	ldr	r1, .L207+8
	mov	r0, r8
	str	r8, [r4, #116]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r7, #116]
	ldr	r8, .L207+12
	ldr	r9, [r0, #0]
	ldr	r2, [r9, #64]
	blx	r2
	mov	r0, #196
	bl	_Znwj
	mov	r6, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r6
	str	r6, [r4, #120]
	ldr	r1, .L207+16
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r7, #120]
	mov	r6, #0
	ldr	r1, [r0, #0]
	ldr	r3, [r1, #64]
	blx	r3
	mov	r0, #196
	bl	_Znwj
	mov	sl, r0
	bl	_ZN10CIwTextureC1Ev
	ldr	r1, .L207+20
	mov	r0, sl
	str	sl, [r4, #124]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r7, #124]
	mov	sl, r6	@ movhi
	ldr	ip, [r0, #0]
	ldr	r9, [ip, #64]
	blx	r9
	mov	r0, #196
	bl	_Znwj
	mov	r9, r0
	bl	_ZN10CIwTextureC1Ev
	mov	r0, r9
	ldr	r1, .L207+24
	str	r9, [r4, #128]
	bl	_ZN10CIwTexture12LoadFromFileEPKc
	ldr	r0, [r7, #128]
	ldr	r2, [r0, #0]
	ldr	r1, [r2, #64]
	blx	r1
	mov	r3, #10
	str	r3, [r4, #136]
	str	r5, [r4, #132]
	bl	_Z11IwSoundInitv
	ldr	r1, .L207+28
	mov	r2, r6
	ldr	r0, [r8, #0]
	bl	_ZN13CIwResManager9LoadGroupEPKcb
	ldr	r1, .L207+32
	mov	r2, r6
	ldr	r0, [r8, #0]
	bl	_ZNK13CIwResManager13GetGroupNamedEPKcj
	ldr	ip, [r8, #0]
	str	r0, [r7, #144]
	str	r0, [ip, #100]
	bl	_Z20Iw2DGetSurfaceHeightv
	strb	r5, [r4, #106]
	strb	r6, [r4, #107]
	str	r0, [r4, #108]
	bl	_Z8Iw2DInitv
	bl	_Z19Iw2DGetSurfaceWidthv
	strh	r0, [r4, #96]	@ movhi
	bl	_Z20Iw2DGetSurfaceHeightv
	strh	r0, [r4, #98]	@ movhi
	bl	_Z13Iw2DTerminatev
	mov	r2, #5	@ movhi
	strh	r2, [r4, #100]	@ movhi
	strh	r6, [r4, #104]	@ movhi
	strh	r6, [r4, #102]	@ movhi
	strb	r5, [r4, #140]
	strb	r5, [r4, #141]
	bl	s3eAccelerometerGetZ
	flds	s15, .L207
	ldr	r1, .L207+36
	str	r1, [r4, #92]
	mov	r0, r6
	fsts	s15, [r4, #72]
	bl	s3ePointerGetInt
	subs	r0, r0, r6
	movne	r0, #1
	strb	r0, [r4, #0]
	bl	s3eAccelerometerStart
	ldrb	r3, [r4, #0]	@ zero_extendqisi2
	cmp	r0, r6
	movne	r0, #0
	moveq	r0, #1
	cmp	r3, r6
	strb	r0, [r4, #68]
	beq	.L199
	cmp	r0, r6
	beq	.L199
	strb	r6, [r4, #60]
	strb	r6, [r4, #12]
	str	r6, [r4, #16]
	strb	r6, [r4, #28]
	str	r6, [r4, #32]
	strb	r6, [r4, #44]
	str	r6, [r4, #48]
	str	r6, [r4, #64]
	mov	r0, #4
	bl	s3ePointerGetInt
	subs	r7, r0, r6
	movne	r7, #1
	cmp	r7, r6
	strb	r7, [r4, #3]
	beq	.L200
	mov	r2, r6
	ldr	r1, .L207+40
	mov	r0, #2
	bl	s3ePointerRegister
	mov	r2, r6
	ldr	r1, .L207+44
	mov	r0, #3
	bl	s3ePointerRegister
.L201:
	mov	r0, #0
	bl	s3eKeyboardGetInt
	cmp	r0, #0
	beq	.L206
.L202:
	mov	r0, #1
.L203:
	strb	r0, [r4, #1]
	bl	s3eOSReadStringAvailable
	mov	r3, #1
	cmp	r0, r3
	movne	r0, #0
	moveq	r0, #1
	strb	r0, [r4, #2]
	mov	r0, r3
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L199:
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L206:
	mov	r0, #1
	bl	s3eKeyboardGetInt
	cmp	r0, #0
	beq	.L203
	b	.L202
.L200:
	mov	r2, r7
	ldr	r1, .L207+48
	mov	r0, r7
	bl	s3ePointerRegister
	mov	r0, r5
	mov	r2, r7
	ldr	r1, .L207+52
	bl	s3ePointerRegister
	b	.L201
.L208:
	.align	2
.L207:
	.word	-1003552768
	.word	.LANCHOR0
	.word	.LC6
	.word	g_IwResManager
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	10000
	.word	_Z24HandleMultiTouchButtonCBP20s3ePointerTouchEvent
	.word	_Z24HandleMultiTouchMotionCBP26s3ePointerTouchMotionEvent
	.word	_Z25HandleSingleTouchButtonCBP15s3ePointerEvent
	.word	_Z25HandleSingleTouchMotionCBP21s3ePointerMotionEvent
	.size	_ZN6CInput4InitEv, .-_ZN6CInput4InitEv
	.section	.text._ZN6CInput7advanceEv,"ax",%progbits
	.align	2
	.global	_ZN6CInput7advanceEv
	.hidden	_ZN6CInput7advanceEv
	.type	_ZN6CInput7advanceEv, %function
_ZN6CInput7advanceEv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	mov	r4, r0
	bl	s3eTimerGetUST
	ldrd	r2, [r4, #80]
	subs	r2, r0, r2
	sbc	r3, r1, r3
	ldr	r0, .L213
	mov	r1, #0
	cmp	r0, r2
	sbcs	ip, r1, r3
	movge	r3, #0
	bge	.L211
	bl	s3eTimerGetUST
	ldr	r3, [r4, #136]
	ldr	r5, [r4, #132]
	mov	r2, #1
	add	ip, r3, #2
	add	r5, r5, r2
	mov	r3, r2
	str	r5, [r4, #132]
	str	ip, [r4, #136]
	strb	r2, [r4, #141]
	strb	r2, [r4, #140]
	strd	r0, [r4, #80]
.L211:
	mov	r0, r3
	ldmfd	sp!, {r3, r4, r5, pc}
.L214:
	.align	2
.L213:
	.word	29999
	.size	_ZN6CInput7advanceEv, .-_ZN6CInput7advanceEv
	.hidden	g_Input
	.global	g_Input
	.hidden	Level1Group
	.global	Level1Group
	.hidden	lifeGroup
	.global	lifeGroup
	.hidden	maxiCoinGroup
	.global	maxiCoinGroup
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"maxiCoin\000"
	.space	3
.LC1:
	.ascii	"CIwSoundSpec\000"
	.space	3
.LC2:
	.ascii	"coin\000"
	.space	3
.LC3:
	.ascii	"life\000"
	.space	3
.LC4:
	.ascii	"explosion\000"
	.space	2
.LC5:
	.ascii	"music.wav\000"
	.space	2
.LC6:
	.ascii	"./textures/monedas.png\000"
	.space	1
.LC7:
	.ascii	"./textures/corazones.png\000"
	.space	3
.LC8:
	.ascii	"./textures/claw.png\000"
.LC9:
	.ascii	"./textures/tnt.png\000"
	.space	1
.LC10:
	.ascii	"Level1.group\000"
	.space	3
.LC11:
	.ascii	"Level1\000"
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	g_Input, %object
	.size	g_Input, 144
g_Input:
	.space	144
	.type	Level1Group, %object
	.size	Level1Group, 4
Level1Group:
	.space	4
	.type	lifeGroup, %object
	.size	lifeGroup, 4
lifeGroup:
	.space	4
	.type	maxiCoinGroup, %object
	.size	maxiCoinGroup, 4
maxiCoinGroup:
	.space	4
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
