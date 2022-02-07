	.file	1 "example2.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.section	.text._ZN9ExceptionC2Ev,"axG",@progbits,_ZN9ExceptionC5Ev,comdat
	.align	2
	.weak	_ZN9ExceptionC2Ev
$LFB1 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN9ExceptionC2Ev
	.type	_ZN9ExceptionC2Ev, @function
_ZN9ExceptionC2Ev:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	.cfi_def_cfa_offset 8
	sw	$fp,4($sp)
	.cfi_offset 30, -4
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,8($fp)
	lw	$2,8($fp)
	li	$3,1			# 0x1
	sb	$3,0($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN9ExceptionC2Ev
	.cfi_endproc
$LFE1:
	.size	_ZN9ExceptionC2Ev, .-_ZN9ExceptionC2Ev
	.weak	_ZN9ExceptionC1Ev
	_ZN9ExceptionC1Ev = _ZN9ExceptionC2Ev
	.section	.text._ZN12SubExceptionC2Ev,"axG",@progbits,_ZN12SubExceptionC5Ev,comdat
	.align	2
	.weak	_ZN12SubExceptionC2Ev
$LFB4 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN12SubExceptionC2Ev
	.type	_ZN12SubExceptionC2Ev, @function
_ZN12SubExceptionC2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	sw	$4,32($fp)
	lw	$2,32($fp)
	move	$4,$2
	.option	pic0
	jal	_ZN9ExceptionC2Ev
	nop

	.option	pic2
	lw	$2,32($fp)
	li	$3,-1430585344			# 0xffffffffaabb0000
	ori	$3,$3,0xccdd
	sw	$3,4($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN12SubExceptionC2Ev
	.cfi_endproc
$LFE4:
	.size	_ZN12SubExceptionC2Ev, .-_ZN12SubExceptionC2Ev
	.weak	_ZN12SubExceptionC1Ev
	_ZN12SubExceptionC1Ev = _ZN12SubExceptionC2Ev
	.section	.text._ZN9BlueClassC2Ev,"axG",@progbits,_ZN9BlueClassC5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassC2Ev
$LFB10 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN9BlueClassC2Ev
	.type	_ZN9BlueClassC2Ev, @function
_ZN9BlueClassC2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	li	$4,12			# 0xc
	lw	$2,%call16(_Znaj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Znaj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN9BlueClassC2Ev
	.cfi_endproc
$LFE10:
	.size	_ZN9BlueClassC2Ev, .-_ZN9BlueClassC2Ev
	.weak	_ZN9BlueClassC1Ev
	_ZN9BlueClassC1Ev = _ZN9BlueClassC2Ev
	.section	.text._ZN9BlueClassD2Ev,"axG",@progbits,_ZN9BlueClassD5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassD2Ev
$LFB13 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN9BlueClassD2Ev
	.type	_ZN9BlueClassD2Ev, @function
_ZN9BlueClassD2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	lw	$2,32($fp)
	lw	$2,0($2)
	beq	$2,$0,$L6
	nop

	lw	$2,32($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_ZdaPv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L6:
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN9BlueClassD2Ev
	.cfi_endproc
$LFE13:
	.size	_ZN9BlueClassD2Ev, .-_ZN9BlueClassD2Ev
	.weak	_ZN9BlueClassD1Ev
	_ZN9BlueClassD1Ev = _ZN9BlueClassD2Ev
	.section	.text._ZN10GreenClassC2Ev,"axG",@progbits,_ZN10GreenClassC5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassC2Ev
$LFB16 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN10GreenClassC2Ev
	.type	_ZN10GreenClassC2Ev, @function
_ZN10GreenClassC2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	li	$4,2021			# 0x7e5
	lw	$2,%call16(_Znaj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Znaj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN10GreenClassC2Ev
	.cfi_endproc
$LFE16:
	.size	_ZN10GreenClassC2Ev, .-_ZN10GreenClassC2Ev
	.weak	_ZN10GreenClassC1Ev
	_ZN10GreenClassC1Ev = _ZN10GreenClassC2Ev
	.section	.text._ZN10GreenClassD2Ev,"axG",@progbits,_ZN10GreenClassD5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassD2Ev
$LFB19 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN10GreenClassD2Ev
	.type	_ZN10GreenClassD2Ev, @function
_ZN10GreenClassD2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	lw	$2,32($fp)
	lw	$2,0($2)
	beq	$2,$0,$L10
	nop

	lw	$2,32($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_ZdaPv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L10:
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN10GreenClassD2Ev
	.cfi_endproc
$LFE19:
	.size	_ZN10GreenClassD2Ev, .-_ZN10GreenClassD2Ev
	.weak	_ZN10GreenClassD1Ev
	_ZN10GreenClassD1Ev = _ZN10GreenClassD2Ev
	.section	.text._ZN8RedClassC2Ev,"axG",@progbits,_ZN8RedClassC5Ev,comdat
	.align	2
	.weak	_ZN8RedClassC2Ev
$LFB22 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN8RedClassC2Ev
	.type	_ZN8RedClassC2Ev, @function
_ZN8RedClassC2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	li	$4,365			# 0x16d
	lw	$2,%call16(_Znaj)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_Znaj
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	lw	$2,32($fp)
	sw	$3,0($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN8RedClassC2Ev
	.cfi_endproc
$LFE22:
	.size	_ZN8RedClassC2Ev, .-_ZN8RedClassC2Ev
	.weak	_ZN8RedClassC1Ev
	_ZN8RedClassC1Ev = _ZN8RedClassC2Ev
	.section	.text._ZN8RedClassD2Ev,"axG",@progbits,_ZN8RedClassD5Ev,comdat
	.align	2
	.weak	_ZN8RedClassD2Ev
$LFB25 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN8RedClassD2Ev
	.type	_ZN8RedClassD2Ev, @function
_ZN8RedClassD2Ev:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	sw	$31,28($sp)
	sw	$fp,24($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,32($fp)
	lw	$2,32($fp)
	lw	$2,0($2)
	beq	$2,$0,$L14
	nop

	lw	$2,32($fp)
	lw	$2,0($2)
	move	$4,$2
	lw	$2,%call16(_ZdaPv)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_ZdaPv
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L14:
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_ZN8RedClassD2Ev
	.cfi_endproc
$LFE25:
	.size	_ZN8RedClassD2Ev, .-_ZN8RedClassD2Ev
	.weak	_ZN8RedClassD1Ev
	_ZN8RedClassD1Ev = _ZN8RedClassD2Ev
	.rdata
	.align	2
$LC0:
	.ascii	"SubSubException handler\000"
	.align	2
$LC1:
	.ascii	"Exception handler\000"
	.align	2
$LC2:
	.ascii	"GLOBAL exception handler\000"
	.text
	.align	2
	.globl	main
$LFB27 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA27
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,72,$31		# vars= 32, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-72
	.cfi_def_cfa_offset 72
	sw	$31,68($sp)
	sw	$fp,64($sp)
	sw	$17,60($sp)
	sw	$16,56($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 17, -12
	.cfi_offset 16, -16
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,72($fp)
	sw	$5,28($fp)
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,52($fp)
	addiu	$2,$fp,32
	move	$4,$2
$LEHB0 = .
	.option	pic0
	jal	_ZN9BlueClassC1Ev
	nop

	.option	pic2
$LEHE0 = .
	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$4,$2
$LEHB1 = .
	.option	pic0
	jal	_ZN10GreenClassC1Ev
	nop

	.option	pic2
$LEHE1 = .
	lw	$28,16($fp)
	addiu	$2,$fp,40
	move	$4,$2
$LEHB2 = .
	.option	pic0
	jal	_ZN8RedClassC1Ev
	nop

	.option	pic2
$LEHE2 = .
	lw	$28,16($fp)
	li	$4,8			# 0x8
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$16,$2
	move	$4,$16
	.option	pic0
	jal	_ZN12SubExceptionC1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$6,$0
	lui	$2,%hi(_ZTI12SubException)
	addiu	$5,$2,%lo(_ZTI12SubException)
	move	$4,$16
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB3 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE3 = .
$L22:
	addiu	$2,$fp,32
	move	$4,$2
	.option	pic0
	jal	_ZN9BlueClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
$L30:
	move	$2,$0
	lw	$3,%got(__stack_chk_guard)($28)
	lw	$4,52($fp)
	lw	$3,0($3)
	beq	$4,$3,$L32
	nop

	.option	pic0
	b	$L40
	nop

	.option	pic2
$L36:
	lw	$28,16($fp)
	move	$16,$4
	move	$17,$5
	addiu	$2,$fp,40
	move	$4,$2
	.option	pic0
	jal	_ZN8RedClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$17
	.option	pic0
	b	$L18
	nop

	.option	pic2
$L35:
	lw	$28,16($fp)
	move	$16,$4
	move	$3,$5
$L18:
	move	$4,$3
	li	$2,3			# 0x3
	beq	$4,$2,$L20
	nop

	move	$17,$3
	.option	pic0
	b	$L21
	nop

	.option	pic2
$L20:
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_get_exception_ptr)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_get_exception_ptr
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$4,0($2)
	lw	$3,4($2)
	lw	$2,8($2)
	sw	$4,40($fp)
	sw	$3,44($fp)
	sw	$2,48($fp)
	move	$2,$16
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
$LEHB4 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE4 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	addiu	$2,$fp,36
	move	$4,$2
	.option	pic0
	jal	_ZN10GreenClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L22
	nop

	.option	pic2
$L37:
	lw	$28,16($fp)
	move	$16,$4
	move	$17,$5
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L21:
	addiu	$2,$fp,36
	move	$4,$2
	.option	pic0
	jal	_ZN10GreenClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$2,$17
	.option	pic0
	b	$L24
	nop

	.option	pic2
$L34:
	lw	$28,16($fp)
	move	$16,$4
	move	$2,$5
$L24:
	move	$3,$2
	li	$2,2			# 0x2
	beq	$3,$2,$L26
	nop

	.option	pic0
	b	$L27
	nop

	.option	pic2
$L26:
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_get_exception_ptr)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_get_exception_ptr
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lbu	$2,0($2)
	sb	$2,40($fp)
	move	$2,$16
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
	b	$L22
	nop

	.option	pic2
$L38:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L27:
	addiu	$2,$fp,32
	move	$4,$2
	.option	pic0
	jal	_ZN9BlueClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$2,$16
	.option	pic0
	b	$L29
	nop

	.option	pic2
$L33:
	lw	$28,16($fp)
	move	$2,$4
$L29:
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
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

$LEHE7 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L30
	nop

	.option	pic2
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
$LEHB8 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE8 = .
$L40:
	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L32:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,68($sp)
	lw	$fp,64($sp)
	lw	$17,60($sp)
	lw	$16,56($sp)
	addiu	$sp,$sp,72
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE27:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"aw",@progbits
	.align	2
$LLSDA27:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT27-$LLSDATTD27
$LLSDATTD27:
	.byte	0x1
	.uleb128 $LLSDACSE27-$LLSDACSB27
$LLSDACSB27:
	.uleb128 $LEHB0-$LFB27
	.uleb128 $LEHE0-$LEHB0
	.uleb128 $L33-$LFB27
	.uleb128 0x1
	.uleb128 $LEHB1-$LFB27
	.uleb128 $LEHE1-$LEHB1
	.uleb128 $L34-$LFB27
	.uleb128 0x5
	.uleb128 $LEHB2-$LFB27
	.uleb128 $LEHE2-$LEHB2
	.uleb128 $L35-$LFB27
	.uleb128 0x7
	.uleb128 $LEHB3-$LFB27
	.uleb128 $LEHE3-$LEHB3
	.uleb128 $L36-$LFB27
	.uleb128 0x7
	.uleb128 $LEHB4-$LFB27
	.uleb128 $LEHE4-$LEHB4
	.uleb128 $L37-$LFB27
	.uleb128 0x5
	.uleb128 $LEHB5-$LFB27
	.uleb128 $LEHE5-$LEHB5
	.uleb128 $L38-$LFB27
	.uleb128 0x3
	.uleb128 $LEHB6-$LFB27
	.uleb128 $LEHE6-$LEHB6
	.uleb128 $L39-$LFB27
	.uleb128 0
	.uleb128 $LEHB7-$LFB27
	.uleb128 $LEHE7-$LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB8-$LFB27
	.uleb128 $LEHE8-$LEHB8
	.uleb128 0
	.uleb128 0
$LLSDACSE27:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x2
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTI15SubSubException
	.4byte	DW.ref._ZTI9Exception
	.4byte	0

$LLSDATT27:
	.text
	.size	main, .-main
	.weak	_ZTI9Exception
	.section	.data.rel.ro._ZTI9Exception,"awG",@progbits,_ZTI9Exception,comdat
	.align	2
	.type	_ZTI9Exception, @object
	.size	_ZTI9Exception, 8
_ZTI9Exception:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS9Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.align	2
	.type	_ZTS9Exception, @object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.ascii	"9Exception\000"
	.weak	_ZTI15SubSubException
	.section	.data.rel.ro._ZTI15SubSubException,"awG",@progbits,_ZTI15SubSubException,comdat
	.align	2
	.type	_ZTI15SubSubException, @object
	.size	_ZTI15SubSubException, 12
_ZTI15SubSubException:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS15SubSubException
	.word	_ZTI12SubException
	.weak	_ZTS15SubSubException
	.section	.rodata._ZTS15SubSubException,"aG",@progbits,_ZTS15SubSubException,comdat
	.align	2
	.type	_ZTS15SubSubException, @object
	.size	_ZTS15SubSubException, 18
_ZTS15SubSubException:
	.ascii	"15SubSubException\000"
	.weak	_ZTI12SubException
	.section	.data.rel.ro._ZTI12SubException,"awG",@progbits,_ZTI12SubException,comdat
	.align	2
	.type	_ZTI12SubException, @object
	.size	_ZTI12SubException, 12
_ZTI12SubException:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS12SubException
	.word	_ZTI9Exception
	.weak	_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",@progbits,_ZTS12SubException,comdat
	.align	2
	.type	_ZTS12SubException, @object
	.size	_ZTS12SubException, 15
_ZTS12SubException:
	.ascii	"12SubException\000"
	.hidden	DW.ref._ZTI15SubSubException
	.weak	DW.ref._ZTI15SubSubException
	.section	.data.rel.local.DW.ref._ZTI15SubSubException,"awG",@progbits,DW.ref._ZTI15SubSubException,comdat
	.align	2
	.type	DW.ref._ZTI15SubSubException, @object
	.size	DW.ref._ZTI15SubSubException, 4
DW.ref._ZTI15SubSubException:
	.word	_ZTI15SubSubException
	.hidden	DW.ref._ZTI9Exception
	.weak	DW.ref._ZTI9Exception
	.section	.data.rel.local.DW.ref._ZTI9Exception,"awG",@progbits,DW.ref._ZTI9Exception,comdat
	.align	2
	.type	DW.ref._ZTI9Exception, @object
	.size	DW.ref._ZTI9Exception, 4
DW.ref._ZTI9Exception:
	.word	_ZTI9Exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align	2
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 4
DW.ref.__gxx_personality_v0:
	.word	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
