	.file	1 "example5.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.rdata
	.align	2
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.align	2
$LC1:
	.ascii	"My Exception\000"
	.align	2
$LC2:
	.ascii	"My Exception Next\000"
	.align	2
$LC3:
	.ascii	"Integer exception handler: %d\012\000"
	.align	2
$LC5:
	.ascii	"Float exception handler: %f\012\000"
	.align	2
$LC6:
	.ascii	"Double exception handler: %f\012\000"
	.align	2
$LC7:
	.ascii	"STDSTRING exception handler\000"
	.align	2
$LC8:
	.ascii	"CHARPTR exception handler: %s\012\000"
	.align	2
$LC9:
	.ascii	"Global exception handler\000"
	.text
	.align	2
	.globl	main
$LFB980 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA980
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,96,$31		# vars= 56, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-96
	.cfi_def_cfa_offset 96
	sw	$31,92($sp)
	sw	$fp,88($sp)
	sw	$16,84($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,96($fp)
	sw	$5,100($fp)
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	li	$2,666			# 0x29a
	sw	$2,0($3)
	move	$6,$0
	lw	$5,%got(_ZTIi)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB0 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE0 = .
$L11:
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	swc1	$f0,0($3)
	move	$6,$0
	lw	$5,%got(_ZTIf)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB1 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE1 = .
$L18:
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lui	$2,%hi($LC0)
	lwc1	$f0,%lo($LC0)($2)
	swc1	$f0,0($3)
	move	$6,$0
	lw	$5,%got(_ZTIf)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB2 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE2 = .
$L25:
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lui	$2,%hi($LC1)
	addiu	$2,$2,%lo($LC1)
	sw	$2,0($3)
	move	$6,$0
	lw	$5,%got(_ZTIPKc)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB3 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE3 = .
$L32:
	li	$4,4			# 0x4
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lui	$2,%hi($LC2)
	addiu	$2,$2,%lo($LC2)
	sw	$2,0($3)
	move	$6,$0
	lw	$5,%got(_ZTIPKc)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB4 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE4 = .
$L38:
	move	$2,$0
	.option	pic0
	b	$L58
	nop

	.option	pic2
$L41:
	lw	$28,16($fp)
	move	$2,$5
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L5
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB5 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE5 = .
$L5:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,0($2)
	sw	$2,28($fp)
	lw	$5,28($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB6 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE6 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$4,8			# 0x8
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lui	$2,%hi($LC4)
	ldc1	$f0,%lo($LC4)($2)
	sdc1	$f0,0($3)
	move	$6,$0
	lw	$5,%got(_ZTId)($28)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB7 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE7 = .
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
$LEHB8 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$L43:
	lw	$28,16($fp)
	move	$2,$5
	li	$3,2			# 0x2
	beq	$2,$3,$L9
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L10
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE8 = .
$L9:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lwc1	$f0,0($2)
	swc1	$f0,32($fp)
	lwc1	$f0,32($fp)
	cvt.d.s	$f0,$f0
	mfc1	$7,$f0
	mfhc1	$6,$f0
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB9 = .
	.reloc	1f,R_MIPS_JALR,printf
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
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L10:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	ldc1	$f0,0($2)
	sdc1	$f0,56($fp)
	lw	$7,60($fp)
	lw	$6,56($fp)
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB10 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE10 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L44:
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

$L45:
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

$L46:
	lw	$28,16($fp)
	move	$2,$5
	li	$3,2			# 0x2
	beq	$2,$3,$L16
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L17
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE11 = .
$L16:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lwc1	$f0,0($2)
	swc1	$f0,36($fp)
	lwc1	$f0,36($fp)
	cvt.d.s	$f0,$f0
	mfc1	$7,$f0
	mfhc1	$6,$f0
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB12 = .
	.reloc	1f,R_MIPS_JALR,printf
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
	.option	pic0
	b	$L18
	nop

	.option	pic2
$L17:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	ldc1	$f0,0($2)
	sdc1	$f0,64($fp)
	lw	$7,68($fp)
	lw	$6,64($fp)
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB13 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE13 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L18
	nop

	.option	pic2
$L47:
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

$L48:
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

$L49:
	lw	$28,16($fp)
	move	$2,$5
	li	$3,2			# 0x2
	beq	$2,$3,$L23
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L24
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE14 = .
$L24:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	ldc1	$f0,0($2)
	sdc1	$f0,72($fp)
	lw	$7,76($fp)
	lw	$6,72($fp)
	lui	$2,%hi($LC6)
	addiu	$4,$2,%lo($LC6)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB15 = .
	.reloc	1f,R_MIPS_JALR,printf
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
	b	$L25
	nop

	.option	pic2
$L23:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lwc1	$f0,0($2)
	swc1	$f0,40($fp)
	lwc1	$f0,40($fp)
	cvt.d.s	$f0,$f0
	mfc1	$7,$f0
	mfhc1	$6,$f0
	lui	$2,%hi($LC5)
	addiu	$4,$2,%lo($LC5)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB16 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE16 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L25
	nop

	.option	pic2
$L50:
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
$LEHB17 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$L51:
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

$L52:
	lw	$28,16($fp)
	move	$2,$5
	li	$3,4			# 0x4
	beq	$2,$3,$L30
	nop

	li	$3,5			# 0x5
	beq	$2,$3,$L31
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE17 = .
$L30:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,48($fp)
	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB18 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE18 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB19 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

$LEHE19 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L32
	nop

	.option	pic2
$L31:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,44($fp)
	lw	$5,44($fp)
	lui	$2,%hi($LC8)
	addiu	$4,$2,%lo($LC8)
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB20 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE20 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L32
	nop

	.option	pic2
$L53:
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
$LEHB21 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$L54:
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

$LEHE21 = .
$L55:
	lw	$28,16($fp)
	move	$2,$5
	move	$3,$2
	li	$2,4			# 0x4
	bne	$3,$2,$L59
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sw	$2,52($fp)
	lui	$2,%hi($LC7)
	addiu	$4,$2,%lo($LC7)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB22 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE22 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB23 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

$LEHE23 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L59:
	move	$2,$4
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC9)
	addiu	$4,$2,%lo($LC9)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB24 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE24 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB25 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

$LEHE25 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L56:
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
$LEHB26 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE26 = .
$L57:
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
$LEHB27 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE27 = .
$L58:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,92($sp)
	lw	$fp,88($sp)
	lw	$16,84($sp)
	addiu	$sp,$sp,96
	.cfi_restore 16
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE980:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"aw",@progbits
	.align	2
$LLSDA980:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT980-$LLSDATTD980
$LLSDATTD980:
	.byte	0x1
	.uleb128 $LLSDACSE980-$LLSDACSB980
$LLSDACSB980:
	.uleb128 $LEHB0-$LFB980
	.uleb128 $LEHE0-$LEHB0
	.uleb128 $L41-$LFB980
	.uleb128 0x1
	.uleb128 $LEHB1-$LFB980
	.uleb128 $LEHE1-$LEHB1
	.uleb128 $L46-$LFB980
	.uleb128 0x5
	.uleb128 $LEHB2-$LFB980
	.uleb128 $LEHE2-$LEHB2
	.uleb128 $L49-$LFB980
	.uleb128 0x9
	.uleb128 $LEHB3-$LFB980
	.uleb128 $LEHE3-$LEHB3
	.uleb128 $L52-$LFB980
	.uleb128 0xd
	.uleb128 $LEHB4-$LFB980
	.uleb128 $LEHE4-$LEHB4
	.uleb128 $L55-$LFB980
	.uleb128 0x11
	.uleb128 $LEHB5-$LFB980
	.uleb128 $LEHE5-$LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB6-$LFB980
	.uleb128 $LEHE6-$LEHB6
	.uleb128 $L42-$LFB980
	.uleb128 0
	.uleb128 $LEHB7-$LFB980
	.uleb128 $LEHE7-$LEHB7
	.uleb128 $L43-$LFB980
	.uleb128 0x5
	.uleb128 $LEHB8-$LFB980
	.uleb128 $LEHE8-$LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB9-$LFB980
	.uleb128 $LEHE9-$LEHB9
	.uleb128 $L44-$LFB980
	.uleb128 0
	.uleb128 $LEHB10-$LFB980
	.uleb128 $LEHE10-$LEHB10
	.uleb128 $L45-$LFB980
	.uleb128 0
	.uleb128 $LEHB11-$LFB980
	.uleb128 $LEHE11-$LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB12-$LFB980
	.uleb128 $LEHE12-$LEHB12
	.uleb128 $L47-$LFB980
	.uleb128 0
	.uleb128 $LEHB13-$LFB980
	.uleb128 $LEHE13-$LEHB13
	.uleb128 $L48-$LFB980
	.uleb128 0
	.uleb128 $LEHB14-$LFB980
	.uleb128 $LEHE14-$LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB15-$LFB980
	.uleb128 $LEHE15-$LEHB15
	.uleb128 $L50-$LFB980
	.uleb128 0
	.uleb128 $LEHB16-$LFB980
	.uleb128 $LEHE16-$LEHB16
	.uleb128 $L51-$LFB980
	.uleb128 0
	.uleb128 $LEHB17-$LFB980
	.uleb128 $LEHE17-$LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB18-$LFB980
	.uleb128 $LEHE18-$LEHB18
	.uleb128 $L53-$LFB980
	.uleb128 0
	.uleb128 $LEHB19-$LFB980
	.uleb128 $LEHE19-$LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB20-$LFB980
	.uleb128 $LEHE20-$LEHB20
	.uleb128 $L54-$LFB980
	.uleb128 0
	.uleb128 $LEHB21-$LFB980
	.uleb128 $LEHE21-$LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB22-$LFB980
	.uleb128 $LEHE22-$LEHB22
	.uleb128 $L56-$LFB980
	.uleb128 0
	.uleb128 $LEHB23-$LFB980
	.uleb128 $LEHE23-$LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB24-$LFB980
	.uleb128 $LEHE24-$LEHB24
	.uleb128 $L57-$LFB980
	.uleb128 0
	.uleb128 $LEHB25-$LFB980
	.uleb128 $LEHE25-$LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB26-$LFB980
	.uleb128 $LEHE26-$LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB27-$LFB980
	.uleb128 $LEHE27-$LEHB27
	.uleb128 0
	.uleb128 0
$LLSDACSE980:
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
	.4byte	0

	.4byte	DW.ref._ZTIPKc
	.4byte	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.4byte	DW.ref._ZTId
	.4byte	DW.ref._ZTIf
	.4byte	DW.ref._ZTIi
$LLSDATT980:
	.text
	.size	main, .-main
	.weak	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.data.rel.ro._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"awG",@progbits,_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.type	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 8
_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.type	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 53
_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.ascii	"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE\000"
	.rdata
	.align	2
$LC0:
	.word	1066192077
	.align	3
$LC4:
	.word	1072798105
	.word	2576980378
	.hidden	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.data.rel.local.DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"awG",@progbits,DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align	2
	.type	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 4
DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.word	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.hidden	DW.ref._ZTIPKc
	.weak	DW.ref._ZTIPKc
	.section	.data.rel.local.DW.ref._ZTIPKc,"awG",@progbits,DW.ref._ZTIPKc,comdat
	.align	2
	.type	DW.ref._ZTIPKc, @object
	.size	DW.ref._ZTIPKc, 4
DW.ref._ZTIPKc:
	.word	_ZTIPKc
	.hidden	DW.ref._ZTId
	.weak	DW.ref._ZTId
	.section	.data.rel.local.DW.ref._ZTId,"awG",@progbits,DW.ref._ZTId,comdat
	.align	2
	.type	DW.ref._ZTId, @object
	.size	DW.ref._ZTId, 4
DW.ref._ZTId:
	.word	_ZTId
	.hidden	DW.ref._ZTIf
	.weak	DW.ref._ZTIf
	.section	.data.rel.local.DW.ref._ZTIf,"awG",@progbits,DW.ref._ZTIf,comdat
	.align	2
	.type	DW.ref._ZTIf, @object
	.size	DW.ref._ZTIf, 4
DW.ref._ZTIf:
	.word	_ZTIf
	.hidden	DW.ref._ZTIi
	.weak	DW.ref._ZTIi
	.section	.data.rel.local.DW.ref._ZTIi,"awG",@progbits,DW.ref._ZTIi,comdat
	.align	2
	.type	DW.ref._ZTIi, @object
	.size	DW.ref._ZTIi, 4
DW.ref._ZTIi:
	.word	_ZTIi
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	2
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.word	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
