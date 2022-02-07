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
	.file	"example1.cpp"
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
.LFB1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r0, #1
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r2, #0
	ldr	r1, .L19
	mov	r0, r3
.LEHB0:
	bl	__cxa_throw
.LEHE0:
.L7:
	mov	r3, #0
	b	.L18
.L14:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #3
	beq	.L5
	mov	r3, r1
	b	.L6
.L5:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L19+4
.LEHB1:
	bl	printf
.LEHE1:
	bl	__cxa_end_catch
	b	.L7
.L15:
	mov	r5, r0
	mov	r4, r1
	bl	__cxa_end_catch
	mov	r2, r5
	mov	r3, r4
.L6:
	cmp	r3, #2
	beq	.L10
	mov	r3, r2
	b	.L11
.L10:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L19+8
.LEHB2:
	bl	puts
.LEHE2:
	bl	__cxa_end_catch
	b	.L7
.L16:
	mov	r4, r0
	bl	__cxa_end_catch
	mov	r3, r4
.L11:
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L19+12
.LEHB3:
	bl	puts
.LEHE3:
.LEHB4:
	bl	__cxa_end_catch
.LEHE4:
	b	.L7
.L17:
	bl	__cxa_end_catch
.LEHB5:
	bl	__cxa_end_cleanup
.LEHE5:
.L18:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	_ZTI12SubException
	.word	.LC0
	.word	.LC1
	.word	.LC2
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
	.uleb128 .L14-.LFB1
	.uleb128 0x5
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L15-.LFB1
	.uleb128 0x7
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L16-.LFB1
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L17-.LFB1
	.uleb128 0
	.uleb128 .LEHB4-.LFB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x77
	.align	2
	.word	_ZTI15SubSubException(TARGET2)
	.word	_ZTI9Exception(TARGET2)
	.word	0
.LLSDATT1:
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
	.size	_ZTI15SubSubException, 8
_ZTI15SubSubException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS15SubSubException
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
	.size	_ZTI12SubException, 8
_ZTI12SubException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12SubException
	.weak	_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",%progbits,_ZTS12SubException,comdat
	.align	2
	.type	_ZTS12SubException, %object
	.size	_ZTS12SubException, 15
_ZTS12SubException:
	.ascii	"12SubException\000"
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
