	.file	1 "example6.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"MyException exception handler\000"
	.align	2
$LC1:
	.ascii	"Global exception handler\000"
	.align	2
$LC2:
	.ascii	"MyExceptionPtr exception handler\000"
	.align	2
$LC3:
	.ascii	"MyExceptionArray exception handler\000"
	.text
	.align	2
	.globl	main
$LFB0 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0xc0070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	.cfi_def_cfa_offset 72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 18, -12
	.cfi_offset 17, -16
	.cfi_offset 16, -20
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,72($fp)
	sw	$5,76($fp)
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	li	$4,1			# 0x1
	lw	$2,%call16(_Znwj)($28)
	move	$25,$2
$LEHB0 = .
	.reloc	1f,R_MIPS_JALR,_Znwj
1:	jalr	$25
	nop

$LEHE0 = .
	lw	$28,16($fp)
	sw	$2,0($16)
	move	$6,$0
	lui	$2,%hi(_ZTIP11MyException)
	addiu	$5,$2,%lo(_ZTIP11MyException)
	move	$4,$16
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB1 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE1 = .
$L9:
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	li	$4,1			# 0x1
	lw	$2,%call16(_Znwj)($28)
	move	$25,$2
$LEHB2 = .
	.reloc	1f,R_MIPS_JALR,_Znwj
1:	jalr	$25
	nop

$LEHE2 = .
	lw	$28,16($fp)
	sw	$2,0($16)
	move	$6,$0
	lui	$2,%hi(_ZTIP11MyException)
	addiu	$5,$2,%lo(_ZTIP11MyException)
	move	$4,$16
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB3 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE3 = .
$L3:
	bltz	$2,$L2
	nop

	addiu	$2,$2,-1
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L2:
	sw	$3,0($16)
	move	$6,$0
	lui	$2,%hi(_ZTIP11MyException)
	addiu	$5,$2,%lo(_ZTIP11MyException)
	move	$4,$16
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB4 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE4 = .
$L27:
	move	$2,$0
	.option	pic0
	b	$L43
	nop

	.option	pic2
$L30:
	lw	$28,16($fp)
	move	$18,$4
	move	$17,$5
	move	$4,$16
	lw	$2,%call16(__cxa_free_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_free_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$18
	move	$2,$17
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L31:
	lw	$28,16($fp)
	move	$3,$4
	move	$2,$5
$L6:
	move	$4,$2
	li	$2,1			# 0x1
	bne	$4,$2,$L44
	nop

	move	$2,$3
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB5 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE5 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L44:
	move	$2,$3
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB6 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE6 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB7 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L9
	nop

	.option	pic2
$L32:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE7 = .
$L33:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB8 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$L34:
	lw	$28,16($fp)
	move	$18,$4
	move	$17,$5
	move	$4,$16
	lw	$2,%call16(__cxa_free_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_free_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$18
	move	$2,$17
	.option	pic0
	b	$L13
	nop

	.option	pic2
$L35:
	lw	$28,16($fp)
	move	$3,$4
	move	$2,$5
$L13:
	move	$4,$2
	li	$2,3			# 0x3
	beq	$4,$2,$L15
	nop

	move	$2,$3
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE8 = .
$L15:
	move	$2,$3
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,32($fp)
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB9 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE9 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	li	$4,333			# 0x14d
	lw	$2,%call16(_Znaj)($28)
	move	$25,$2
$LEHB10 = .
	.reloc	1f,R_MIPS_JALR,_Znaj
1:	jalr	$25
	nop

$LEHE10 = .
	lw	$28,16($fp)
	move	$3,$2
	li	$2,332			# 0x14c
	.option	pic0
	b	$L3
	nop

	.option	pic2
$L36:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB11 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$L37:
	lw	$28,16($fp)
	move	$18,$4
	move	$17,$5
	move	$4,$16
	lw	$2,%call16(__cxa_free_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_free_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$18
	move	$2,$17
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L38:
	lw	$28,16($fp)
	move	$3,$4
	move	$2,$5
$L19:
	move	$4,$2
	li	$2,3			# 0x3
	beq	$4,$2,$L21
	nop

	move	$2,$3
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE11 = .
$L21:
	move	$2,$3
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,36($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB12 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE12 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,2664			# 0xa68
	lw	$2,%call16(_Znaj)($28)
	move	$25,$2
$LEHB13 = .
	.reloc	1f,R_MIPS_JALR,_Znaj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,40($fp)
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,40($fp)
	sw	$2,0($3)
	move	$6,$0
	lui	$2,%hi(_ZTIPP11MyException)
	addiu	$5,$2,%lo(_ZTIPP11MyException)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE13 = .
$L39:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB14 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE14 = .
$L40:
	lw	$28,16($fp)
	move	$2,$5
	move	$3,$2
	li	$2,3			# 0x3
	bne	$3,$2,$L45
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB15 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE15 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L27
	nop

	.option	pic2
$L45:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB16 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE16 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB17 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L27
	nop

	.option	pic2
$L41:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE17 = .
$L42:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB18 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE18 = .
$L43:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	addiu	$sp,$sp,72
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 18
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE0:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"aw",@progbits
	.align	2
$LLSDA0:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT0-$LLSDATTD0
$LLSDATTD0:
	.byte	0x1
	.uleb128 $LLSDACSE0-$LLSDACSB0
$LLSDACSB0:
	.uleb128 $LEHB0-$LFB0
	.uleb128 $LEHE0-$LEHB0
	.uleb128 $L30-$LFB0
	.uleb128 0x5
	.uleb128 $LEHB1-$LFB0
	.uleb128 $LEHE1-$LEHB1
	.uleb128 $L31-$LFB0
	.uleb128 0x3
	.uleb128 $LEHB2-$LFB0
	.uleb128 $LEHE2-$LEHB2
	.uleb128 $L34-$LFB0
	.uleb128 0x9
	.uleb128 $LEHB3-$LFB0
	.uleb128 $LEHE3-$LEHB3
	.uleb128 $L35-$LFB0
	.uleb128 0x7
	.uleb128 $LEHB4-$LFB0
	.uleb128 $LEHE4-$LEHB4
	.uleb128 $L38-$LFB0
	.uleb128 0x7
	.uleb128 $LEHB5-$LFB0
	.uleb128 $LEHE5-$LEHB5
	.uleb128 $L32-$LFB0
	.uleb128 0
	.uleb128 $LEHB6-$LFB0
	.uleb128 $LEHE6-$LEHB6
	.uleb128 $L33-$LFB0
	.uleb128 0
	.uleb128 $LEHB7-$LFB0
	.uleb128 $LEHE7-$LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB8-$LFB0
	.uleb128 $LEHE8-$LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB9-$LFB0
	.uleb128 $LEHE9-$LEHB9
	.uleb128 $L36-$LFB0
	.uleb128 0
	.uleb128 $LEHB10-$LFB0
	.uleb128 $LEHE10-$LEHB10
	.uleb128 $L37-$LFB0
	.uleb128 0x9
	.uleb128 $LEHB11-$LFB0
	.uleb128 $LEHE11-$LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB12-$LFB0
	.uleb128 $LEHE12-$LEHB12
	.uleb128 $L39-$LFB0
	.uleb128 0
	.uleb128 $LEHB13-$LFB0
	.uleb128 $LEHE13-$LEHB13
	.uleb128 $L40-$LFB0
	.uleb128 0xb
	.uleb128 $LEHB14-$LFB0
	.uleb128 $LEHE14-$LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB15-$LFB0
	.uleb128 $LEHE15-$LEHB15
	.uleb128 $L41-$LFB0
	.uleb128 0
	.uleb128 $LEHB16-$LFB0
	.uleb128 $LEHE16-$LEHB16
	.uleb128 $L42-$LFB0
	.uleb128 0
	.uleb128 $LEHB17-$LFB0
	.uleb128 $LEHE17-$LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB18-$LFB0
	.uleb128 $LEHE18-$LEHB18
	.uleb128 0
	.uleb128 0
$LLSDACSE0:
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
	.4byte	DW.ref._ZTIP11MyException
	.4byte	0

	.4byte	DW.ref._ZTI11MyException
$LLSDATT0:
	.text
	.size	main, .-main
	.weak	_ZTIPP11MyException
	.section	.data.rel.ro._ZTIPP11MyException,"awG",@progbits,_ZTIPP11MyException,comdat
	.align	2
	.type	_ZTIPP11MyException, @object
	.size	_ZTIPP11MyException, 16
_ZTIPP11MyException:
	.word	_ZTVN10__cxxabiv119__pointer_type_infoE+8
	.word	_ZTSPP11MyException
	.word	0
	.word	_ZTIP11MyException
	.weak	_ZTSPP11MyException
	.section	.rodata._ZTSPP11MyException,"aG",@progbits,_ZTSPP11MyException,comdat
	.align	2
	.type	_ZTSPP11MyException, @object
	.size	_ZTSPP11MyException, 16
_ZTSPP11MyException:
	.ascii	"PP11MyException\000"
	.weak	_ZTI11MyException
	.section	.data.rel.ro._ZTI11MyException,"awG",@progbits,_ZTI11MyException,comdat
	.align	2
	.type	_ZTI11MyException, @object
	.size	_ZTI11MyException, 8
_ZTI11MyException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS11MyException
	.weak	_ZTS11MyException
	.section	.rodata._ZTS11MyException,"aG",@progbits,_ZTS11MyException,comdat
	.align	2
	.type	_ZTS11MyException, @object
	.size	_ZTS11MyException, 14
_ZTS11MyException:
	.ascii	"11MyException\000"
	.weak	_ZTIP11MyException
	.section	.data.rel.ro._ZTIP11MyException,"awG",@progbits,_ZTIP11MyException,comdat
	.align	2
	.type	_ZTIP11MyException, @object
	.size	_ZTIP11MyException, 16
_ZTIP11MyException:
	.word	_ZTVN10__cxxabiv119__pointer_type_infoE+8
	.word	_ZTSP11MyException
	.word	0
	.word	_ZTI11MyException
	.weak	_ZTSP11MyException
	.section	.rodata._ZTSP11MyException,"aG",@progbits,_ZTSP11MyException,comdat
	.align	2
	.type	_ZTSP11MyException, @object
	.size	_ZTSP11MyException, 15
_ZTSP11MyException:
	.ascii	"P11MyException\000"
	.hidden	DW.ref._ZTI11MyException
	.weak	DW.ref._ZTI11MyException
	.section	.data.rel.local.DW.ref._ZTI11MyException,"awG",@progbits,DW.ref._ZTI11MyException,comdat
	.align	2
	.type	DW.ref._ZTI11MyException, @object
	.size	DW.ref._ZTI11MyException, 4
DW.ref._ZTI11MyException:
	.word	_ZTI11MyException
	.hidden	DW.ref._ZTIP11MyException
	.weak	DW.ref._ZTIP11MyException
	.section	.data.rel.local.DW.ref._ZTIP11MyException,"awG",@progbits,DW.ref._ZTIP11MyException,comdat
	.align	2
	.type	DW.ref._ZTIP11MyException, @object
	.size	DW.ref._ZTIP11MyException, 4
DW.ref._ZTIP11MyException:
	.word	_ZTIP11MyException
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	2
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.word	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
