	.file	1 "example3.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.section	.text._ZN9BlueClassC2Ev,"axG",@progbits,_ZN9BlueClassC5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassC2Ev
$LFB13 = .
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
$LFE13:
	.size	_ZN9BlueClassC2Ev, .-_ZN9BlueClassC2Ev
	.weak	_ZN9BlueClassC1Ev
	_ZN9BlueClassC1Ev = _ZN9BlueClassC2Ev
	.section	.text._ZN9BlueClassD2Ev,"axG",@progbits,_ZN9BlueClassD5Ev,comdat
	.align	2
	.weak	_ZN9BlueClassD2Ev
$LFB16 = .
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
	beq	$2,$0,$L4
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
$L4:
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
$LFE16:
	.size	_ZN9BlueClassD2Ev, .-_ZN9BlueClassD2Ev
	.weak	_ZN9BlueClassD1Ev
	_ZN9BlueClassD1Ev = _ZN9BlueClassD2Ev
	.section	.text._ZN10GreenClassC2Ev,"axG",@progbits,_ZN10GreenClassC5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassC2Ev
$LFB19 = .
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
$LFE19:
	.size	_ZN10GreenClassC2Ev, .-_ZN10GreenClassC2Ev
	.weak	_ZN10GreenClassC1Ev
	_ZN10GreenClassC1Ev = _ZN10GreenClassC2Ev
	.section	.text._ZN10GreenClassD2Ev,"axG",@progbits,_ZN10GreenClassD5Ev,comdat
	.align	2
	.weak	_ZN10GreenClassD2Ev
$LFB22 = .
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
	beq	$2,$0,$L8
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
$L8:
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
$LFE22:
	.size	_ZN10GreenClassD2Ev, .-_ZN10GreenClassD2Ev
	.weak	_ZN10GreenClassD1Ev
	_ZN10GreenClassD1Ev = _ZN10GreenClassD2Ev
	.section	.text._ZN8RedClassC2Ev,"axG",@progbits,_ZN8RedClassC5Ev,comdat
	.align	2
	.weak	_ZN8RedClassC2Ev
$LFB25 = .
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
$LFE25:
	.size	_ZN8RedClassC2Ev, .-_ZN8RedClassC2Ev
	.weak	_ZN8RedClassC1Ev
	_ZN8RedClassC1Ev = _ZN8RedClassC2Ev
	.section	.text._ZN8RedClassD2Ev,"axG",@progbits,_ZN8RedClassD5Ev,comdat
	.align	2
	.weak	_ZN8RedClassD2Ev
$LFB28 = .
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
	beq	$2,$0,$L12
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
$L12:
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
$LFE28:
	.size	_ZN8RedClassD2Ev, .-_ZN8RedClassD2Ev
	.weak	_ZN8RedClassD1Ev
	_ZN8RedClassD1Ev = _ZN8RedClassD2Ev
	.section	.text._ZN11OrangeClassC2Ev,"axG",@progbits,_ZN11OrangeClassC5Ev,comdat
	.align	2
	.weak	_ZN11OrangeClassC2Ev
$LFB31 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN11OrangeClassC2Ev
	.type	_ZN11OrangeClassC2Ev, @function
_ZN11OrangeClassC2Ev:
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
	li	$4,100			# 0x64
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
	.end	_ZN11OrangeClassC2Ev
	.cfi_endproc
$LFE31:
	.size	_ZN11OrangeClassC2Ev, .-_ZN11OrangeClassC2Ev
	.weak	_ZN11OrangeClassC1Ev
	_ZN11OrangeClassC1Ev = _ZN11OrangeClassC2Ev
	.section	.text._ZN11OrangeClassD2Ev,"axG",@progbits,_ZN11OrangeClassD5Ev,comdat
	.align	2
	.weak	_ZN11OrangeClassD2Ev
$LFB34 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_ZN11OrangeClassD2Ev
	.type	_ZN11OrangeClassD2Ev, @function
_ZN11OrangeClassD2Ev:
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
	beq	$2,$0,$L16
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
$L16:
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
	.end	_ZN11OrangeClassD2Ev
	.cfi_endproc
$LFE34:
	.size	_ZN11OrangeClassD2Ev, .-_ZN11OrangeClassD2Ev
	.weak	_ZN11OrangeClassD1Ev
	_ZN11OrangeClassD1Ev = _ZN11OrangeClassD2Ev
	.text
	.align	2
	.globl	main
$LFB36 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
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
	sw	$5,36($fp)
	.option	pic0
	jal	_Z4funcv
	nop

	.option	pic2
	move	$2,$0
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
	.end	main
	.cfi_endproc
$LFE36:
	.size	main, .-main
	.rdata
	.align	2
$LC0:
	.ascii	"IntException handler\000"
	.text
	.align	2
	.globl	_Z4funcv
$LFB37 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA37
	.set	nomips16
	.set	nomicromips
	.ent	_Z4funcv
	.type	_Z4funcv, @function
_Z4funcv:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
$LEHB0 = .
	.option	pic0
	jal	_Z7subfuncv
	nop

	.option	pic2
$LEHE0 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L25:
	lw	$28,16($fp)
	move	$2,$5
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L22
	nop

	move	$2,$4
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB1 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE1 = .
$L22:
	move	$2,$4
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
$LEHB2 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE2 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L19
	nop

	.option	pic2
$L26:
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
$LEHB3 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE3 = .
$L19:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	.cfi_restore 16
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z4funcv
	.cfi_endproc
$LFE37:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"aw",@progbits
	.align	2
$LLSDA37:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT37-$LLSDATTD37
$LLSDATTD37:
	.byte	0x1
	.uleb128 $LLSDACSE37-$LLSDACSB37
$LLSDACSB37:
	.uleb128 $LEHB0-$LFB37
	.uleb128 $LEHE0-$LEHB0
	.uleb128 $L25-$LFB37
	.uleb128 0x1
	.uleb128 $LEHB1-$LFB37
	.uleb128 $LEHE1-$LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB2-$LFB37
	.uleb128 $LEHE2-$LEHB2
	.uleb128 $L26-$LFB37
	.uleb128 0
	.uleb128 $LEHB3-$LFB37
	.uleb128 $LEHE3-$LEHB3
	.uleb128 0
	.uleb128 0
$LLSDACSE37:
	.byte	0x1
	.byte	0
	.align	2
	.4byte	DW.ref._ZTI12IntException
$LLSDATT37:
	.text
	.size	_Z4funcv, .-_Z4funcv
	.rdata
	.align	2
$LC1:
	.ascii	"SepException handler\000"
	.text
	.align	2
	.globl	_Z7subfuncv
$LFB38 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA38
	.set	nomips16
	.set	nomicromips
	.ent	_Z7subfuncv
	.type	_Z7subfuncv, @function
_Z7subfuncv:
	.frame	$fp,48,$31		# vars= 8, regs= 3/0, args= 16, gp= 8
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$16,36($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 16, -12
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,28($fp)
	addiu	$2,$fp,24
	move	$4,$2
$LEHB4 = .
	.option	pic0
	jal	_ZN11OrangeClassC1Ev
	nop

	.option	pic2
$LEHE4 = .
	lw	$28,16($fp)
$LEHB5 = .
	.option	pic0
	jal	_Z10subsubfuncv
	nop

	.option	pic2
$LEHE5 = .
	lw	$28,16($fp)
$L32:
	addiu	$2,$fp,24
	move	$4,$2
	.option	pic0
	jal	_ZN11OrangeClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	nop
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,28($fp)
	lw	$2,0($2)
	beq	$3,$2,$L34
	nop

	.option	pic0
	b	$L37
	nop

	.option	pic2
$L35:
	lw	$28,16($fp)
	move	$2,$5
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L30
	nop

	move	$16,$4
	.option	pic0
	b	$L31
	nop

	.option	pic2
$L30:
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
$LEHB6 = .
	.reloc	1f,R_MIPS_JALR,puts
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
	.option	pic0
	b	$L32
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
$L31:
	addiu	$2,$fp,24
	move	$4,$2
	.option	pic0
	jal	_ZN11OrangeClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB7 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE7 = .
$L37:
	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L34:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$16,36($sp)
	addiu	$sp,$sp,48
	.cfi_restore 16
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z7subfuncv
	.cfi_endproc
$LFE38:
	.section	.gcc_except_table
	.align	2
$LLSDA38:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT38-$LLSDATTD38
$LLSDATTD38:
	.byte	0x1
	.uleb128 $LLSDACSE38-$LLSDACSB38
$LLSDACSB38:
	.uleb128 $LEHB4-$LFB38
	.uleb128 $LEHE4-$LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB5-$LFB38
	.uleb128 $LEHE5-$LEHB5
	.uleb128 $L35-$LFB38
	.uleb128 0x3
	.uleb128 $LEHB6-$LFB38
	.uleb128 $LEHE6-$LEHB6
	.uleb128 $L36-$LFB38
	.uleb128 0
	.uleb128 $LEHB7-$LFB38
	.uleb128 $LEHE7-$LEHB7
	.uleb128 0
	.uleb128 0
$LLSDACSE38:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align	2
	.4byte	DW.ref._ZTI12SepException
$LLSDATT38:
	.text
	.size	_Z7subfuncv, .-_Z7subfuncv
	.rdata
	.align	2
$LC2:
	.ascii	"SubSubException handler\000"
	.align	2
$LC3:
	.ascii	"Exception handler\000"
	.align	2
$LC4:
	.ascii	"GLOBAL exception handler\000"
	.text
	.align	2
	.globl	_Z10subsubfuncv
$LFB39 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA39
	.set	nomips16
	.set	nomicromips
	.ent	_Z10subsubfuncv
	.type	_Z10subsubfuncv, @function
_Z10subsubfuncv:
	.frame	$fp,64,$31		# vars= 24, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	sw	$31,60($sp)
	sw	$fp,56($sp)
	sw	$17,52($sp)
	sw	$16,48($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 17, -12
	.cfi_offset 16, -16
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,44($fp)
	addiu	$2,$fp,24
	move	$4,$2
$LEHB8 = .
	.option	pic0
	jal	_ZN9BlueClassC1Ev
	nop

	.option	pic2
$LEHE8 = .
	lw	$28,16($fp)
	addiu	$2,$fp,28
	move	$4,$2
$LEHB9 = .
	.option	pic0
	jal	_ZN10GreenClassC1Ev
	nop

	.option	pic2
$LEHE9 = .
	lw	$28,16($fp)
	addiu	$2,$fp,32
	move	$4,$2
$LEHB10 = .
	.option	pic0
	jal	_ZN8RedClassC1Ev
	nop

	.option	pic2
$LEHE10 = .
	lw	$28,16($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	move	$6,$0
	lui	$2,%hi(_ZTI12IntException)
	addiu	$5,$2,%lo(_ZTI12IntException)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB11 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE11 = .
$L44:
	addiu	$2,$fp,24
	move	$4,$2
	.option	pic0
	jal	_ZN9BlueClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L38
	nop

	.option	pic2
$L60:
	lw	$28,16($fp)
	move	$16,$4
	move	$17,$5
	addiu	$2,$fp,32
	move	$4,$2
	.option	pic0
	jal	_ZN8RedClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$17
	.option	pic0
	b	$L40
	nop

	.option	pic2
$L59:
	lw	$28,16($fp)
	move	$16,$4
	move	$3,$5
$L40:
	move	$4,$3
	li	$2,3			# 0x3
	beq	$4,$2,$L42
	nop

	move	$17,$3
	.option	pic0
	b	$L43
	nop

	.option	pic2
$L42:
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
	sw	$4,32($fp)
	sw	$3,36($fp)
	sw	$2,40($fp)
	move	$2,$16
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
	addiu	$2,$fp,28
	move	$4,$2
	.option	pic0
	jal	_ZN10GreenClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	.option	pic0
	b	$L44
	nop

	.option	pic2
$L61:
	lw	$28,16($fp)
	move	$16,$4
	move	$17,$5
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L43:
	addiu	$2,$fp,28
	move	$4,$2
	.option	pic0
	jal	_ZN10GreenClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$3,$17
	.option	pic0
	b	$L46
	nop

	.option	pic2
$L58:
	lw	$28,16($fp)
	move	$16,$4
	move	$3,$5
$L46:
	move	$4,$3
	li	$2,2			# 0x2
	beq	$4,$2,$L48
	nop

	move	$17,$3
	.option	pic0
	b	$L49
	nop

	.option	pic2
$L48:
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_get_exception_ptr)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_get_exception_ptr
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$3,0($2)
	lw	$2,4($2)
	sw	$3,32($fp)
	sw	$2,36($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC3)
	addiu	$4,$2,%lo($LC3)
	lw	$2,%call16(puts)($28)
	move	$25,$2
$LEHB13 = .
	.reloc	1f,R_MIPS_JALR,puts
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
	b	$L44
	nop

	.option	pic2
$L62:
	lw	$28,16($fp)
	move	$16,$4
	move	$17,$5
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
$L49:
	addiu	$2,$fp,24
	move	$4,$2
	.option	pic0
	jal	_ZN9BlueClassD1Ev
	nop

	.option	pic2
	lw	$28,16($fp)
	move	$2,$17
	.option	pic0
	b	$L51
	nop

	.option	pic2
$L57:
	lw	$28,16($fp)
	move	$16,$4
	move	$2,$5
$L51:
	move	$3,$2
	li	$2,1			# 0x1
	beq	$3,$2,$L53
	nop

	move	$2,$16
	move	$4,$2
	lw	$2,%call16(_Unwind_Resume)($28)
	move	$25,$2
$LEHB14 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE14 = .
$L53:
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_get_exception_ptr)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_get_exception_ptr
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lbu	$2,0($2)
	sb	$2,32($fp)
	move	$2,$16
	move	$4,$2
	lw	$2,%call16(__cxa_begin_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_begin_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi($LC4)
	addiu	$4,$2,%lo($LC4)
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
	b	$L38
	nop

	.option	pic2
$L63:
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
$LEHB16 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE16 = .
$L38:
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,44($fp)
	lw	$2,0($2)
	beq	$3,$2,$L56
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L56:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,60($sp)
	lw	$fp,56($sp)
	lw	$17,52($sp)
	lw	$16,48($sp)
	addiu	$sp,$sp,64
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z10subsubfuncv
	.cfi_endproc
$LFE39:
	.section	.gcc_except_table
	.align	2
$LLSDA39:
	.byte	0xff
	.byte	0x80
	.uleb128 $LLSDATT39-$LLSDATTD39
$LLSDATTD39:
	.byte	0x1
	.uleb128 $LLSDACSE39-$LLSDACSB39
$LLSDACSB39:
	.uleb128 $LEHB8-$LFB39
	.uleb128 $LEHE8-$LEHB8
	.uleb128 $L57-$LFB39
	.uleb128 0x1
	.uleb128 $LEHB9-$LFB39
	.uleb128 $LEHE9-$LEHB9
	.uleb128 $L58-$LFB39
	.uleb128 0x5
	.uleb128 $LEHB10-$LFB39
	.uleb128 $LEHE10-$LEHB10
	.uleb128 $L59-$LFB39
	.uleb128 0x7
	.uleb128 $LEHB11-$LFB39
	.uleb128 $LEHE11-$LEHB11
	.uleb128 $L60-$LFB39
	.uleb128 0x7
	.uleb128 $LEHB12-$LFB39
	.uleb128 $LEHE12-$LEHB12
	.uleb128 $L61-$LFB39
	.uleb128 0x5
	.uleb128 $LEHB13-$LFB39
	.uleb128 $LEHE13-$LEHB13
	.uleb128 $L62-$LFB39
	.uleb128 0x3
	.uleb128 $LEHB14-$LFB39
	.uleb128 $LEHE14-$LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB15-$LFB39
	.uleb128 $LEHE15-$LEHB15
	.uleb128 $L63-$LFB39
	.uleb128 0
	.uleb128 $LEHB16-$LFB39
	.uleb128 $LEHE16-$LEHB16
	.uleb128 0
	.uleb128 0
$LLSDACSE39:
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
	.4byte	DW.ref._ZTI12SubException
	.4byte	DW.ref._ZTI9Exception
$LLSDATT39:
	.text
	.size	_Z10subsubfuncv, .-_Z10subsubfuncv
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
	.weak	_ZTI12SepException
	.section	.data.rel.ro._ZTI12SepException,"awG",@progbits,_ZTI12SepException,comdat
	.align	2
	.type	_ZTI12SepException, @object
	.size	_ZTI12SepException, 8
_ZTI12SepException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12SepException
	.weak	_ZTS12SepException
	.section	.rodata._ZTS12SepException,"aG",@progbits,_ZTS12SepException,comdat
	.align	2
	.type	_ZTS12SepException, @object
	.size	_ZTS12SepException, 15
_ZTS12SepException:
	.ascii	"12SepException\000"
	.weak	_ZTI12IntException
	.section	.data.rel.ro._ZTI12IntException,"awG",@progbits,_ZTI12IntException,comdat
	.align	2
	.type	_ZTI12IntException, @object
	.size	_ZTI12IntException, 8
_ZTI12IntException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12IntException
	.weak	_ZTS12IntException
	.section	.rodata._ZTS12IntException,"aG",@progbits,_ZTS12IntException,comdat
	.align	2
	.type	_ZTS12IntException, @object
	.size	_ZTS12IntException, 15
_ZTS12IntException:
	.ascii	"12IntException\000"
	.hidden	DW.ref._ZTI12IntException
	.weak	DW.ref._ZTI12IntException
	.section	.data.rel.local.DW.ref._ZTI12IntException,"awG",@progbits,DW.ref._ZTI12IntException,comdat
	.align	2
	.type	DW.ref._ZTI12IntException, @object
	.size	DW.ref._ZTI12IntException, 4
DW.ref._ZTI12IntException:
	.word	_ZTI12IntException
	.hidden	DW.ref._ZTI12SepException
	.weak	DW.ref._ZTI12SepException
	.section	.data.rel.local.DW.ref._ZTI12SepException,"awG",@progbits,DW.ref._ZTI12SepException,comdat
	.align	2
	.type	DW.ref._ZTI12SepException, @object
	.size	DW.ref._ZTI12SepException, 4
DW.ref._ZTI12SepException:
	.word	_ZTI12SepException
	.hidden	DW.ref._ZTI12SubException
	.weak	DW.ref._ZTI12SubException
	.section	.data.rel.local.DW.ref._ZTI12SubException,"awG",@progbits,DW.ref._ZTI12SubException,comdat
	.align	2
	.type	DW.ref._ZTI12SubException, @object
	.size	DW.ref._ZTI12SubException, 4
DW.ref._ZTI12SubException:
	.word	_ZTI12SubException
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
