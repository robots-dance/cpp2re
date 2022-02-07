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
	.file	"example5.cpp"
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	_ZL20__gthread_key_deletei, %function
_ZL20__gthread_key_deletei:
	.fnstart
.LFB553:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #0
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL20__gthread_key_deletei, .-_ZL20__gthread_key_deletei
	.section	.rodata
	.align	2
.LC0:
	.ascii	"My Exception\000"
	.align	2
.LC1:
	.ascii	"My Exception Next\000"
	.align	2
.LC2:
	.ascii	"Integer exception handler: %d\012\000"
	.global	__aeabi_f2d
	.align	2
.LC3:
	.ascii	"Float exception handler: %f\012\000"
	.align	2
.LC4:
	.ascii	"Double exception handler: %f\012\000"
	.align	2
.LC5:
	.ascii	"STDSTRING exception handler\000"
	.align	2
.LC6:
	.ascii	"CHARPTR exception handler: %s\012\000"
	.align	2
.LC7:
	.ascii	"Global exception handler\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB899:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #68
	sub	sp, sp, #68
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, .L62+8
	str	r3, [r0]
	mov	r2, #0
	ldr	r1, .L62+12
.LEHB0:
	bl	__cxa_throw
.LEHE0:
.L13:
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, .L62+16
	str	r3, [r0]	@ float
	mov	r2, #0
	ldr	r1, .L62+20
.LEHB1:
	bl	__cxa_throw
.LEHE1:
.L20:
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, .L62+16
	str	r3, [r0]	@ float
	mov	r2, #0
	ldr	r1, .L62+20
.LEHB2:
	bl	__cxa_throw
.LEHE2:
.L27:
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, .L62+24
	str	r3, [r0]
	mov	r2, #0
	ldr	r1, .L62+28
.LEHB3:
	bl	__cxa_throw
.LEHE3:
.L34:
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	ldr	r3, .L62+32
	str	r3, [r0]
	mov	r2, #0
	ldr	r1, .L62+28
.LEHB4:
	bl	__cxa_throw
.LEHE4:
.L40:
	mov	r3, #0
	b	.L60
.L43:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #1
	beq	.L7
.LEHB5:
	bl	__cxa_end_cleanup
.LEHE5:
.L7:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r0, .L62+36
.LEHB6:
	bl	printf
.LEHE6:
	bl	__cxa_end_catch
	mov	r0, #8
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r0, r3
	adr	r4, .L62
	ldmia	r4, {r3-r4}
	stm	r0, {r3-r4}
	mov	r2, #0
	ldr	r1, .L62+40
.LEHB7:
	bl	__cxa_throw
.LEHE7:
.L44:
	bl	__cxa_end_catch
.LEHB8:
	bl	__cxa_end_cleanup
.L45:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #2
	beq	.L11
	cmp	r3, #3
	beq	.L12
	bl	__cxa_end_cleanup
.LEHE8:
.L11:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L62+44
.LEHB9:
	bl	printf
.LEHE9:
	bl	__cxa_end_catch
	b	.L13
.L12:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldmia	r3, {r3-r4}
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	sub	r3, fp, #28
	ldmia	r3, {r2-r3}
	ldr	r0, .L62+48
.LEHB10:
	bl	printf
.LEHE10:
	bl	__cxa_end_catch
	b	.L13
.L46:
	bl	__cxa_end_catch
.LEHB11:
	bl	__cxa_end_cleanup
.L47:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.L48:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #2
	beq	.L18
	cmp	r3, #3
	beq	.L19
	bl	__cxa_end_cleanup
.LEHE11:
.L18:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r0, [fp, #-32]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L62+44
.LEHB12:
	bl	printf
.LEHE12:
	bl	__cxa_end_catch
	b	.L20
.L19:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldmia	r3, {r3-r4}
	str	r3, [fp, #-44]
	str	r4, [fp, #-40]
	sub	r3, fp, #44
	ldmia	r3, {r2-r3}
	ldr	r0, .L62+48
.LEHB13:
	bl	printf
.LEHE13:
	bl	__cxa_end_catch
	b	.L20
.L49:
	bl	__cxa_end_catch
.LEHB14:
	bl	__cxa_end_cleanup
.L50:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.L51:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #2
	beq	.L25
	cmp	r3, #3
	beq	.L26
	bl	__cxa_end_cleanup
.LEHE14:
.L26:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldmia	r3, {r3-r4}
	str	r3, [fp, #-52]
	str	r4, [fp, #-48]
	sub	r3, fp, #52
	ldmia	r3, {r2-r3}
	ldr	r0, .L62+48
.LEHB15:
	bl	printf
.LEHE15:
	bl	__cxa_end_catch
	b	.L27
.L25:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-56]	@ float
	ldr	r0, [fp, #-56]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L62+44
.LEHB16:
	bl	printf
.LEHE16:
	bl	__cxa_end_catch
	b	.L27
.L52:
	bl	__cxa_end_catch
.LEHB17:
	bl	__cxa_end_cleanup
.L53:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.L54:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #4
	beq	.L32
	cmp	r3, #5
	beq	.L33
	bl	__cxa_end_cleanup
.LEHE17:
.L32:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r0, .L62+52
.LEHB18:
	bl	puts
.LEHE18:
.LEHB19:
	bl	__cxa_end_catch
.LEHE19:
	b	.L34
.L33:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r1, [fp, #-64]
	ldr	r0, .L62+56
.LEHB20:
	bl	printf
.LEHE20:
	bl	__cxa_end_catch
	b	.L34
.L55:
	bl	__cxa_end_catch
.LEHB21:
	bl	__cxa_end_cleanup
.L56:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.LEHE21:
.L57:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #4
	bne	.L61
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-68]
	ldr	r0, .L62+52
.LEHB22:
	bl	puts
.LEHE22:
.LEHB23:
	bl	__cxa_end_catch
.LEHE23:
	b	.L40
.L61:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	ldr	r0, .L62+60
.LEHB24:
	bl	puts
.LEHE24:
.LEHB25:
	bl	__cxa_end_catch
.LEHE25:
	b	.L40
.L58:
	bl	__cxa_end_catch
.LEHB26:
	bl	__cxa_end_cleanup
.LEHE26:
.L59:
	bl	__cxa_end_catch
.LEHB27:
	bl	__cxa_end_cleanup
.LEHE27:
.L60:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, lr}
	bx	lr
.L63:
	.align	3
.L62:
	.word	2576980378
	.word	1072798105
	.word	666
	.word	_ZTIi
	.word	1066192077
	.word	_ZTIf
	.word	.LC0
	.word	_ZTIPKc
	.word	.LC1
	.word	.LC2
	.word	_ZTId
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA899:
	.byte	0xff
	.byte	0x10
	.uleb128 .LLSDATT899-.LLSDATTD899
.LLSDATTD899:
	.byte	0x1
	.uleb128 .LLSDACSE899-.LLSDACSB899
.LLSDACSB899:
	.uleb128 .LEHB0-.LFB899
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L43-.LFB899
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB899
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L48-.LFB899
	.uleb128 0x5
	.uleb128 .LEHB2-.LFB899
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L51-.LFB899
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB899
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L54-.LFB899
	.uleb128 0xd
	.uleb128 .LEHB4-.LFB899
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L57-.LFB899
	.uleb128 0x11
	.uleb128 .LEHB5-.LFB899
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB899
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L44-.LFB899
	.uleb128 0
	.uleb128 .LEHB7-.LFB899
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L45-.LFB899
	.uleb128 0x5
	.uleb128 .LEHB8-.LFB899
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB899
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L46-.LFB899
	.uleb128 0
	.uleb128 .LEHB10-.LFB899
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L47-.LFB899
	.uleb128 0
	.uleb128 .LEHB11-.LFB899
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB899
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L49-.LFB899
	.uleb128 0
	.uleb128 .LEHB13-.LFB899
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L50-.LFB899
	.uleb128 0
	.uleb128 .LEHB14-.LFB899
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB899
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L52-.LFB899
	.uleb128 0
	.uleb128 .LEHB16-.LFB899
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L53-.LFB899
	.uleb128 0
	.uleb128 .LEHB17-.LFB899
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB899
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L55-.LFB899
	.uleb128 0
	.uleb128 .LEHB19-.LFB899
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB899
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L56-.LFB899
	.uleb128 0
	.uleb128 .LEHB21-.LFB899
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB899
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L58-.LFB899
	.uleb128 0
	.uleb128 .LEHB23-.LFB899
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB899
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L59-.LFB899
	.uleb128 0
	.uleb128 .LEHB25-.LFB899
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB899
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB899
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE899:
	.byte	0x1
	.byte	0
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x7d
	.byte	0x2
	.byte	0
	.byte	0x3
	.byte	0x7d
	.byte	0x5
	.byte	0
	.byte	0x4
	.byte	0x7d
	.byte	0x6
	.byte	0
	.byte	0x4
	.byte	0x7d
	.align	2
	.word	0
	.word	_ZTIPKc(TARGET2)
	.word	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(TARGET2)
	.word	_ZTId(TARGET2)
	.word	_ZTIf(TARGET2)
	.word	_ZTIi(TARGET2)
.LLSDATT899:
	.text
	.fnend
	.size	main, .-main
	.weak	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",%progbits,_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.type	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %object
	.size	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 8
_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",%progbits,_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.type	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, %object
	.size	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 53
_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.ascii	"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE"
	.ascii	"E\000"
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
