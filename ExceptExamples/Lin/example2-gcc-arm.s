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
	.file	"example2.cpp"
	.section	.text._ZN9ExceptionC2Ev,"axG",%progbits,_ZN9ExceptionC5Ev,comdat
	.align	2
	.weak	_ZN9ExceptionC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN9ExceptionC2Ev, %function
_ZN9ExceptionC2Ev:
	.fnstart
.LFB2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN9ExceptionC2Ev, .-_ZN9ExceptionC2Ev
	.weak	_ZN9ExceptionC1Ev
	.set	_ZN9ExceptionC1Ev,_ZN9ExceptionC2Ev
	.section	.text._ZN12SubExceptionC2Ev,"axG",%progbits,_ZN12SubExceptionC5Ev,comdat
	.align	2
	.weak	_ZN12SubExceptionC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN12SubExceptionC2Ev, %function
_ZN12SubExceptionC2Ev:
	.fnstart
.LFB5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN9ExceptionC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L5
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	-1430532899
	.cantunwind
	.fnend
	.size	_ZN12SubExceptionC2Ev, .-_ZN12SubExceptionC2Ev
	.weak	_ZN12SubExceptionC1Ev
	.set	_ZN12SubExceptionC1Ev,_ZN12SubExceptionC2Ev
	.section	.text._ZN9BlueClassC2Ev,"axG",%progbits,_ZN9BlueClassC5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassC2Ev
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZN9BlueClassC2Ev, %function
_ZN9BlueClassC2Ev:
	.fnstart
.LFB11:
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
.LFB14:
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
	beq	.L10
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L10:
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
.LFB17:
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
	ldr	r0, .L14
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
.L15:
	.align	2
.L14:
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
.LFB20:
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
	beq	.L17
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L17:
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
.LFB23:
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
	ldr	r0, .L21
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
.L22:
	.align	2
.L21:
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
.LFB26:
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
	beq	.L24
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZdaPv
.L24:
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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SubSubException handler\000"
	.align	2
.LC1:
	.ascii	"Exception handler\000"
	.align	2
.LC2:
	.ascii	"GLOBAL exception handler\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB28:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #40
	sub	sp, sp, #40
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	sub	r3, fp, #16
	mov	r0, r3
.LEHB0:
	bl	_ZN9BlueClassC1Ev
.LEHE0:
	sub	r3, fp, #20
	mov	r0, r3
.LEHB1:
	bl	_ZN10GreenClassC1Ev
.LEHE1:
	sub	r3, fp, #24
	mov	r0, r3
.LEHB2:
	bl	_ZN8RedClassC1Ev
.LEHE2:
	mov	r0, #8
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r4, r3
	mov	r0, r4
	bl	_ZN12SubExceptionC1Ev
	mov	r2, #0
	ldr	r1, .L51
	mov	r0, r4
.LEHB3:
	bl	__cxa_throw
.LEHE3:
.L33:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZN9BlueClassD1Ev
.L41:
	mov	r3, #0
	b	.L50
.L46:
	mov	r4, r0
	mov	r5, r1
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN8RedClassD1Ev
	mov	r2, r5
	b	.L29
.L45:
	mov	r4, r0
	mov	r2, r1
.L29:
	mov	r3, r2
	cmp	r3, #3
	beq	.L31
	mov	r5, r2
	b	.L32
.L31:
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
	ldr	r0, .L51+4
.LEHB4:
	bl	puts
.LEHE4:
	bl	__cxa_end_catch
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10GreenClassD1Ev
	b	.L33
.L47:
	mov	r4, r0
	mov	r5, r1
	bl	__cxa_end_catch
.L32:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10GreenClassD1Ev
	mov	r3, r5
	b	.L35
.L44:
	mov	r4, r0
	mov	r3, r1
.L35:
	cmp	r3, #2
	beq	.L37
	b	.L38
.L37:
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_get_exception_ptr
	mov	r3, r0
	ldrb	r3, [r3]
	strb	r3, [fp, #-40]
	mov	r3, r4
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L51+8
.LEHB5:
	bl	puts
.LEHE5:
	bl	__cxa_end_catch
	b	.L33
.L48:
	mov	r4, r0
	bl	__cxa_end_catch
.L38:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZN9BlueClassD1Ev
	mov	r3, r4
	b	.L40
.L43:
	mov	r3, r0
.L40:
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L51+12
.LEHB6:
	bl	puts
.LEHE6:
.LEHB7:
	bl	__cxa_end_catch
.LEHE7:
	b	.L41
.L49:
	bl	__cxa_end_catch
.LEHB8:
	bl	__cxa_end_cleanup
.LEHE8:
.L50:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	_ZTI12SubException
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA28:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT28-.LLSDATTD28
.LLSDATTD28:
	.byte	0x1
	.uleb128 .LLSDACSE28-.LLSDACSB28
.LLSDACSB28:
	.uleb128 .LEHB0-.LFB28
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L43-.LFB28
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB28
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L44-.LFB28
	.uleb128 0x5
	.uleb128 .LEHB2-.LFB28
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L45-.LFB28
	.uleb128 0x7
	.uleb128 .LEHB3-.LFB28
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L46-.LFB28
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB28
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L47-.LFB28
	.uleb128 0x5
	.uleb128 .LEHB5-.LFB28
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L48-.LFB28
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB28
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L49-.LFB28
	.uleb128 0
	.uleb128 .LEHB7-.LFB28
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB28
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE28:
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
	.word	_ZTI9Exception(TARGET2)
	.word	0
.LLSDATT28:
	.text
	.fnend
	.size	main, .-main
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
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
