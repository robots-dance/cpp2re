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
	.file	"example6.cpp"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"MyException exception handler\000"
	.align	2
.LC1:
	.ascii	"Global exception handler\000"
	.align	2
.LC2:
	.ascii	"MyExceptionPtr exception handler\000"
	.align	2
.LC3:
	.ascii	"MyExceptionArray exception handler\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	.save {r4, r5, r6, fp, lr}
	.setfp fp, sp, #16
	add	fp, sp, #16
	.pad #36
	sub	sp, sp, #36
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r4, r3
	mov	r0, #1
.LEHB0:
	bl	_Znwj
.LEHE0:
	mov	r3, r0
	str	r3, [r4]
	mov	r2, #0
	ldr	r1, .L46
	mov	r0, r4
.LEHB1:
	bl	__cxa_throw
.LEHE1:
.L9:
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r4, r3
	mov	r0, #1
.LEHB2:
	bl	_Znwj
.LEHE2:
	mov	r3, r0
	str	r3, [r4]
	mov	r2, #0
	ldr	r1, .L46
	mov	r0, r4
.LEHB3:
	bl	__cxa_throw
.LEHE3:
.L3:
	cmp	r3, #0
	blt	.L2
	sub	r3, r3, #1
	b	.L3
.L2:
	str	r2, [r4]
	mov	r2, #0
	ldr	r1, .L46
	mov	r0, r4
.LEHB4:
	bl	__cxa_throw
.LEHE4:
.L27:
	mov	r3, #0
	b	.L43
.L30:
	mov	r6, r0
	mov	r5, r1
	mov	r0, r4
	bl	__cxa_free_exception
	mov	r2, r6
	mov	r3, r5
	b	.L6
.L31:
	mov	r2, r0
	mov	r3, r1
.L6:
	cmp	r3, #1
	bne	.L44
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L46+4
.LEHB5:
	bl	puts
.LEHE5:
	bl	__cxa_end_catch
	b	.L9
.L44:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L46+8
.LEHB6:
	bl	puts
.LEHE6:
.LEHB7:
	bl	__cxa_end_catch
	b	.L9
.L32:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.LEHE7:
.L33:
	bl	__cxa_end_catch
.LEHB8:
	bl	__cxa_end_cleanup
.L34:
	mov	r6, r0
	mov	r5, r1
	mov	r0, r4
	bl	__cxa_free_exception
	mov	r2, r6
	mov	r3, r5
	b	.L13
.L35:
	mov	r2, r0
	mov	r3, r1
.L13:
	cmp	r3, #3
	beq	.L15
	bl	__cxa_end_cleanup
.LEHE8:
.L15:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, .L46+12
.LEHB9:
	bl	puts
.LEHE9:
	bl	__cxa_end_catch
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r4, r3
	ldr	r0, .L46+16
.LEHB10:
	bl	_Znaj
.LEHE10:
	mov	r3, r0
	mov	r2, r3
	mov	r3, #332
	b	.L3
.L36:
	bl	__cxa_end_catch
.LEHB11:
	bl	__cxa_end_cleanup
.L37:
	mov	r6, r0
	mov	r5, r1
	mov	r0, r4
	bl	__cxa_free_exception
	mov	r2, r6
	mov	r3, r5
	b	.L19
.L38:
	mov	r2, r0
	mov	r3, r1
.L19:
	cmp	r3, #3
	beq	.L21
	bl	__cxa_end_cleanup
.LEHE11:
.L21:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r0, .L46+20
.LEHB12:
	bl	puts
.LEHE12:
	bl	__cxa_end_catch
	ldr	r0, .L46+24
.LEHB13:
	bl	_Znaj
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, [fp, #-32]
	str	r3, [r0]
	mov	r2, #0
	ldr	r1, .L46+28
	bl	__cxa_throw
.LEHE13:
.L39:
	bl	__cxa_end_catch
.LEHB14:
	bl	__cxa_end_cleanup
.LEHE14:
.L40:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #3
	bne	.L45
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, .L46+20
.LEHB15:
	bl	puts
.LEHE15:
	bl	__cxa_end_catch
	b	.L27
.L45:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L46+8
.LEHB16:
	bl	puts
.LEHE16:
.LEHB17:
	bl	__cxa_end_catch
	b	.L27
.L41:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.LEHE17:
.L42:
	bl	__cxa_end_catch
.LEHB18:
	bl	__cxa_end_cleanup
.LEHE18:
.L43:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, lr}
	bx	lr
.L47:
	.align	2
.L46:
	.word	_ZTIP11MyException
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	333
	.word	.LC3
	.word	2664
	.word	_ZTIPP11MyException
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA1:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB0-.LFB1
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L30-.LFB1
	.uleb128 0x5
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB1
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L34-.LFB1
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L35-.LFB1
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB1
	.uleb128 0x7
	.uleb128 .LEHB5-.LFB1
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L32-.LFB1
	.uleb128 0
	.uleb128 .LEHB6-.LFB1
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L33-.LFB1
	.uleb128 0
	.uleb128 .LEHB7-.LFB1
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB1
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB1
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L36-.LFB1
	.uleb128 0
	.uleb128 .LEHB10-.LFB1
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L37-.LFB1
	.uleb128 0x9
	.uleb128 .LEHB11-.LFB1
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB1
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L39-.LFB1
	.uleb128 0
	.uleb128 .LEHB13-.LFB1
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L40-.LFB1
	.uleb128 0xb
	.uleb128 .LEHB14-.LFB1
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB1
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L41-.LFB1
	.uleb128 0
	.uleb128 .LEHB16-.LFB1
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L42-.LFB1
	.uleb128 0
	.uleb128 .LEHB17-.LFB1
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB1
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x2
	.byte	0
	.byte	0x1
	.byte	0x7d
	.byte	0
	.byte	0x7d
	.byte	0x3
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x3
	.byte	0x75
	.align	2
	.word	_ZTIP11MyException(TARGET2)
	.word	0
	.word	_ZTI11MyException(TARGET2)
.LLSDATT1:
	.text
	.fnend
	.size	main, .-main
	.weak	_ZTIPP11MyException
	.section	.rodata._ZTIPP11MyException,"aG",%progbits,_ZTIPP11MyException,comdat
	.align	2
	.type	_ZTIPP11MyException, %object
	.size	_ZTIPP11MyException, 16
_ZTIPP11MyException:
	.word	_ZTVN10__cxxabiv119__pointer_type_infoE+8
	.word	_ZTSPP11MyException
	.word	0
	.word	_ZTIP11MyException
	.weak	_ZTSPP11MyException
	.section	.rodata._ZTSPP11MyException,"aG",%progbits,_ZTSPP11MyException,comdat
	.align	2
	.type	_ZTSPP11MyException, %object
	.size	_ZTSPP11MyException, 16
_ZTSPP11MyException:
	.ascii	"PP11MyException\000"
	.weak	_ZTI11MyException
	.section	.rodata._ZTI11MyException,"aG",%progbits,_ZTI11MyException,comdat
	.align	2
	.type	_ZTI11MyException, %object
	.size	_ZTI11MyException, 8
_ZTI11MyException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS11MyException
	.weak	_ZTS11MyException
	.section	.rodata._ZTS11MyException,"aG",%progbits,_ZTS11MyException,comdat
	.align	2
	.type	_ZTS11MyException, %object
	.size	_ZTS11MyException, 14
_ZTS11MyException:
	.ascii	"11MyException\000"
	.weak	_ZTIP11MyException
	.section	.rodata._ZTIP11MyException,"aG",%progbits,_ZTIP11MyException,comdat
	.align	2
	.type	_ZTIP11MyException, %object
	.size	_ZTIP11MyException, 16
_ZTIP11MyException:
	.word	_ZTVN10__cxxabiv119__pointer_type_infoE+8
	.word	_ZTSP11MyException
	.word	0
	.word	_ZTI11MyException
	.weak	_ZTSP11MyException
	.section	.rodata._ZTSP11MyException,"aG",%progbits,_ZTSP11MyException,comdat
	.align	2
	.type	_ZTSP11MyException, %object
	.size	_ZTSP11MyException, 15
_ZTSP11MyException:
	.ascii	"P11MyException\000"
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
