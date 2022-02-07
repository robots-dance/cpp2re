	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"example3.cpp"
	.section	.text._ZN9BlueClassC2Ev,"axG",%progbits,_ZN9BlueClassC5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN9BlueClassC2Ev, %function
_ZN9BlueClassC2Ev:
	.fnstart
.LFB14:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r0, #12
	bl	_Znaj
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.fnend
	.size	_ZN9BlueClassC2Ev, .-_ZN9BlueClassC2Ev
	.weak	_ZN9BlueClassC1Ev
	.set	_ZN9BlueClassC1Ev,_ZN9BlueClassC2Ev
	.section	.text._ZN9BlueClassD2Ev,"axG",%progbits,_ZN9BlueClassD5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassD2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN9BlueClassD2Ev, %function
_ZN9BlueClassD2Ev:
	.fnstart
.LFB17:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L4:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9BlueClassD2Ev, .-_ZN9BlueClassD2Ev
	.weak	_ZN9BlueClassD1Ev
	.set	_ZN9BlueClassD1Ev,_ZN9BlueClassD2Ev
	.section	.text._ZN10GreenClassC2Ev,"axG",%progbits,_ZN10GreenClassC5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN10GreenClassC2Ev, %function
_ZN10GreenClassC2Ev:
	.fnstart
.LFB20:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, .L8
	bl	_Znaj
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	2021
	.fnend
	.size	_ZN10GreenClassC2Ev, .-_ZN10GreenClassC2Ev
	.weak	_ZN10GreenClassC1Ev
	.set	_ZN10GreenClassC1Ev,_ZN10GreenClassC2Ev
	.section	.text._ZN10GreenClassD2Ev,"axG",%progbits,_ZN10GreenClassD5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassD2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN10GreenClassD2Ev, %function
_ZN10GreenClassD2Ev:
	.fnstart
.LFB23:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L11:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10GreenClassD2Ev, .-_ZN10GreenClassD2Ev
	.weak	_ZN10GreenClassD1Ev
	.set	_ZN10GreenClassD1Ev,_ZN10GreenClassD2Ev
	.section	.text._ZN8RedClassC2Ev,"axG",%progbits,_ZN8RedClassC5Ev,comdat
	.align	2
	.weak	_ZN8RedClassC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN8RedClassC2Ev, %function
_ZN8RedClassC2Ev:
	.fnstart
.LFB26:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, .L15
	bl	_Znaj
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	365
	.fnend
	.size	_ZN8RedClassC2Ev, .-_ZN8RedClassC2Ev
	.weak	_ZN8RedClassC1Ev
	.set	_ZN8RedClassC1Ev,_ZN8RedClassC2Ev
	.section	.text._ZN8RedClassD2Ev,"axG",%progbits,_ZN8RedClassD5Ev,comdat
	.align	2
	.weak	_ZN8RedClassD2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN8RedClassD2Ev, %function
_ZN8RedClassD2Ev:
	.fnstart
.LFB29:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L18:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8RedClassD2Ev, .-_ZN8RedClassD2Ev
	.weak	_ZN8RedClassD1Ev
	.set	_ZN8RedClassD1Ev,_ZN8RedClassD2Ev
	.section	.text._ZN11OrangeClassC2Ev,"axG",%progbits,_ZN11OrangeClassC5Ev,comdat
	.align	2
	.weak	_ZN11OrangeClassC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN11OrangeClassC2Ev, %function
_ZN11OrangeClassC2Ev:
	.fnstart
.LFB32:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r0, #100
	bl	_Znaj
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.fnend
	.size	_ZN11OrangeClassC2Ev, .-_ZN11OrangeClassC2Ev
	.weak	_ZN11OrangeClassC1Ev
	.set	_ZN11OrangeClassC1Ev,_ZN11OrangeClassC2Ev
	.section	.text._ZN11OrangeClassD2Ev,"axG",%progbits,_ZN11OrangeClassD5Ev,comdat
	.align	2
	.weak	_ZN11OrangeClassD2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN11OrangeClassD2Ev, %function
_ZN11OrangeClassD2Ev:
	.fnstart
.LFB35:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L23
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L23:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11OrangeClassD2Ev, .-_ZN11OrangeClassD2Ev
	.weak	_ZN11OrangeClassD1Ev
	.set	_ZN11OrangeClassD1Ev,_ZN11OrangeClassD2Ev
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB37:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	bl	_Z4funcv
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
	.fnend
	.size	main, .-main
	.section	.rodata
	.align	2
.LC0:
	.ascii	"IntException handler\000"
	.text
	.align	2
	.global	_Z4funcv
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z4funcv, %function
_Z4funcv:
	.fnstart
.LFB38:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
.LEHB0:
	bl	_Z7subfuncv
.LEHE0:
	b	.L27
.L33:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #1
	beq	.L30
.LEHB1:
	bl	__cxa_end_cleanup
.LEHE1:
.L30:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L35
.LEHB2:
	bl	puts
.LEHE2:
	bl	__cxa_end_catch
	b	.L27
.L34:
	bl	__cxa_end_catch
.LEHB3:
	bl	__cxa_end_cleanup
.LEHE3:
.L27:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LC0
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA38:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT38-.LLSDATTD38
.LLSDATTD38:
	.byte	0x1
	.uleb128 .LLSDACSE38-.LLSDACSB38
.LLSDACSB38:
	.uleb128 .LEHB0-.LFB38
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB38
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB38
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB38
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L34-.LFB38
	.uleb128 0
	.uleb128 .LEHB3-.LFB38
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE38:
	.byte	0x1
	.byte	0
	.align	2
	.word	_ZTI12IntException(TARGET2)
.LLSDATT38:
	.text
	.fnend
	.size	_Z4funcv, .-_Z4funcv
	.section	.rodata
	.align	2
.LC1:
	.ascii	"SepException handler\000"
	.text
	.align	2
	.global	_Z7subfuncv
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z7subfuncv, %function
_Z7subfuncv:
	.fnstart
.LFB39:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	sub	r3, fp, #8
	mov	r0, r3
.LEHB4:
	bl	_ZN11OrangeClassC1Ev
.LEHE4:
.LEHB5:
	bl	_Z10subsubfuncv
.LEHE5:
.L42:
	sub	r3, fp, #8
	mov	r0, r3
	bl	_ZN11OrangeClassD1Ev
	b	.L46
.L44:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #1
	bne	.L41
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L47
.LEHB6:
	bl	puts
.LEHE6:
	bl	__cxa_end_catch
	b	.L42
.L45:
	bl	__cxa_end_catch
.L41:
	sub	r3, fp, #8
	mov	r0, r3
	bl	_ZN11OrangeClassD1Ev
.LEHB7:
	bl	__cxa_end_cleanup
.LEHE7:
.L46:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LC1
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA39:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT39-.LLSDATTD39
.LLSDATTD39:
	.byte	0x1
	.uleb128 .LLSDACSE39-.LLSDACSB39
.LLSDACSB39:
	.uleb128 .LEHB4-.LFB39
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB39
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L44-.LFB39
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB39
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L45-.LFB39
	.uleb128 0
	.uleb128 .LEHB7-.LFB39
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE39:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align	2
	.word	_ZTI12SepException(TARGET2)
.LLSDATT39:
	.text
	.fnend
	.size	_Z7subfuncv, .-_Z7subfuncv
	.section	.rodata
	.align	2
.LC2:
	.ascii	"SubSubException handler\000"
	.align	2
.LC3:
	.ascii	"Exception handler\000"
	.align	2
.LC4:
	.ascii	"GLOBAL exception handler\000"
	.text
	.align	2
	.global	_Z10subsubfuncv
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z10subsubfuncv, %function
_Z10subsubfuncv:
	.fnstart
.LFB40:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #40
	sub	sp, sp, #40
	sub	r3, fp, #16
	mov	r0, r3
.LEHB8:
	bl	_ZN9BlueClassC1Ev
.LEHE8:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB9:
	bl	_ZN10GreenClassC1Ev
.LEHE9:
	sub	r3, fp, #24
	mov	r0, r3
.LEHB10:
	bl	_ZN8RedClassC1Ev
.LEHE10:
	mov	r0, #1
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r2, #0
	ldr	r1, .L74
	mov	r0, r3
.LEHB11:
	bl	__cxa_throw
.LEHE11:
.L55:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZN9BlueClassD1Ev
	b	.L49
.L70:
	mov	r4, r0
	mov	r5, r1
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN8RedClassD1Ev
	mov	r2, r5
	b	.L51
.L69:
	mov	r4, r0
	mov	r2, r1
.L51:
	mov	r3, r2
	cmp	r3, #3
	beq	.L53
	mov	r5, r2
	b	.L54
.L53:
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_get_exception_ptr
	mov	r2, r0
	sub	r3, fp, #36
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L74+4
.LEHB12:
	bl	puts
.LEHE12:
	bl	__cxa_end_catch
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10GreenClassD1Ev
	b	.L55
.L71:
	mov	r4, r0
	mov	r5, r1
	bl	__cxa_end_catch
.L54:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10GreenClassD1Ev
	mov	r2, r5
	b	.L57
.L68:
	mov	r4, r0
	mov	r2, r1
.L57:
	mov	r3, r2
	cmp	r3, #2
	beq	.L59
	mov	r5, r2
	b	.L60
.L59:
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_get_exception_ptr
	mov	r2, r0
	sub	r3, fp, #44
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L74+8
.LEHB13:
	bl	puts
.LEHE13:
	bl	__cxa_end_catch
	b	.L55
.L72:
	mov	r4, r0
	mov	r5, r1
	bl	__cxa_end_catch
.L60:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZN9BlueClassD1Ev
	mov	r3, r5
	b	.L62
.L67:
	mov	r4, r0
	mov	r3, r1
.L62:
	cmp	r3, #1
	beq	.L64
.LEHB14:
	bl	__cxa_end_cleanup
.LEHE14:
.L64:
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_get_exception_ptr
	mov	r3, r0
	ldrb	r3, [r3]
	strb	r3, [fp, #-48]
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L74+12
.LEHB15:
	bl	puts
.LEHE15:
	bl	__cxa_end_catch
	b	.L49
.L73:
	bl	__cxa_end_catch
.LEHB16:
	bl	__cxa_end_cleanup
.LEHE16:
.L49:
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	_ZTI12IntException
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA40:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT40-.LLSDATTD40
.LLSDATTD40:
	.byte	0x1
	.uleb128 .LLSDACSE40-.LLSDACSB40
.LLSDACSB40:
	.uleb128 .LEHB8-.LFB40
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L67-.LFB40
	.uleb128 0x1
	.uleb128 .LEHB9-.LFB40
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L68-.LFB40
	.uleb128 0x5
	.uleb128 .LEHB10-.LFB40
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L69-.LFB40
	.uleb128 0x7
	.uleb128 .LEHB11-.LFB40
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L70-.LFB40
	.uleb128 0x7
	.uleb128 .LEHB12-.LFB40
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L71-.LFB40
	.uleb128 0x5
	.uleb128 .LEHB13-.LFB40
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L72-.LFB40
	.uleb128 0x3
	.uleb128 .LEHB14-.LFB40
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB40
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L73-.LFB40
	.uleb128 0
	.uleb128 .LEHB16-.LFB40
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE40:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x2
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align	2
	.word	_ZTI15SubSubException(TARGET2)
	.word	_ZTI12SubException(TARGET2)
	.word	_ZTI9Exception(TARGET2)
.LLSDATT40:
	.text
	.fnend
	.size	_Z10subsubfuncv, .-_Z10subsubfuncv
	.weak	_ZTI9Exception
	.section	.rodata._ZTI9Exception,"aG",%progbits,_ZTI9Exception,comdat
	.align	2
	.type	_ZTI9Exception, %object
	.size	_ZTI9Exception, 8
_ZTI9Exception:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS9Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",%progbits,_ZTS9Exception,comdat
	.align	2
	.type	_ZTS9Exception, %object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.ascii	"9Exception\000"
	.weak	_ZTI12SubException
	.section	.rodata._ZTI12SubException,"aG",%progbits,_ZTI12SubException,comdat
	.align	2
	.type	_ZTI12SubException, %object
	.size	_ZTI12SubException, 12
_ZTI12SubException:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS12SubException
	.word	_ZTI9Exception
	.weak	_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",%progbits,_ZTS12SubException,comdat
	.align	2
	.type	_ZTS12SubException, %object
	.size	_ZTS12SubException, 15
_ZTS12SubException:
	.ascii	"12SubException\000"
	.weak	_ZTI15SubSubException
	.section	.rodata._ZTI15SubSubException,"aG",%progbits,_ZTI15SubSubException,comdat
	.align	2
	.type	_ZTI15SubSubException, %object
	.size	_ZTI15SubSubException, 12
_ZTI15SubSubException:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS15SubSubException
	.word	_ZTI12SubException
	.weak	_ZTS15SubSubException
	.section	.rodata._ZTS15SubSubException,"aG",%progbits,_ZTS15SubSubException,comdat
	.align	2
	.type	_ZTS15SubSubException, %object
	.size	_ZTS15SubSubException, 18
_ZTS15SubSubException:
	.ascii	"15SubSubException\000"
	.weak	_ZTI12SepException
	.section	.rodata._ZTI12SepException,"aG",%progbits,_ZTI12SepException,comdat
	.align	2
	.type	_ZTI12SepException, %object
	.size	_ZTI12SepException, 8
_ZTI12SepException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12SepException
	.weak	_ZTS12SepException
	.section	.rodata._ZTS12SepException,"aG",%progbits,_ZTS12SepException,comdat
	.align	2
	.type	_ZTS12SepException, %object
	.size	_ZTS12SepException, 15
_ZTS12SepException:
	.ascii	"12SepException\000"
	.weak	_ZTI12IntException
	.section	.rodata._ZTI12IntException,"aG",%progbits,_ZTI12IntException,comdat
	.align	2
	.type	_ZTI12IntException, %object
	.size	_ZTI12IntException, 8
_ZTI12IntException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12IntException
	.weak	_ZTS12IntException
	.section	.rodata._ZTS12IntException,"aG",%progbits,_ZTS12IntException,comdat
	.align	2
	.type	_ZTS12IntException, %object
	.size	_ZTS12IntException, 15
_ZTS12IntException:
	.ascii	"12IntException\000"
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
