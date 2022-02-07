	.file	1 "example1.cpp"
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
$LFB0 = .
	.cfi_startproc
	.cfi_personality 0x80,DW.ref.__gxx_personality_v0
	.cfi_lsda 0,$LLSDA0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,48,$31		# vars= 8, regs= 4/0, args= 16, gp= 8
	.mask	0xc0030000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-48
	.cfi_def_cfa_offset 48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 17, -12
	.cfi_offset 16, -16
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,48($fp)
	sw	$5,52($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(__cxa_allocate_exception)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_allocate_exception
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$2
	move	$6,$0
	lui	$2,%hi(_ZTI12SubException)
	addiu	$5,$2,%lo(_ZTI12SubException)
	move	$4,$3
	lw	$2,%call16(__cxa_throw)($28)
	move	$25,$2
$LEHB0 = .
	.reloc	1f,R_MIPS_JALR,__cxa_throw
1:	jalr	$25
	nop

$LEHE0 = .
$L7:
	move	$2,$0
	.option	pic0
	b	$L18
	nop

	.option	pic2
$L14:
	lw	$28,16($fp)
	move	$3,$5
	li	$2,3			# 0x3
	beq	$3,$2,$L5
	nop

	move	$3,$4
	move	$2,$5
	.option	pic0
	b	$L6
	nop

	.option	pic2
$L5:
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
	lw	$2,%call16(printf)($28)
	move	$25,$2
$LEHB1 = .
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

$LEHE1 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L15:
	lw	$28,16($fp)
	move	$17,$4
	move	$16,$5
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$3,$17
	move	$2,$16
$L6:
	move	$4,$2
	li	$2,2			# 0x2
	beq	$4,$2,$L10
	nop

	move	$2,$3
	.option	pic0
	b	$L11
	nop

	.option	pic2
$L10:
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
	b	$L7
	nop

	.option	pic2
$L16:
	lw	$28,16($fp)
	move	$16,$4
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$16
$L11:
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
$LEHB3 = .
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

$LEHE3 = .
	lw	$28,16($fp)
	lw	$2,%call16(__cxa_end_catch)($28)
	move	$25,$2
$LEHB4 = .
	.reloc	1f,R_MIPS_JALR,__cxa_end_catch
1:	jalr	$25
	nop

$LEHE4 = .
	lw	$28,16($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L17:
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
$LEHB5 = .
	.reloc	1f,R_MIPS_JALR,_Unwind_Resume
1:	jalr	$25
	nop

$LEHE5 = .
$L18:
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,44($sp)
	lw	$fp,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	addiu	$sp,$sp,48
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
	.uleb128 $L14-$LFB0
	.uleb128 0x5
	.uleb128 $LEHB1-$LFB0
	.uleb128 $LEHE1-$LEHB1
	.uleb128 $L15-$LFB0
	.uleb128 0x7
	.uleb128 $LEHB2-$LFB0
	.uleb128 $LEHE2-$LEHB2
	.uleb128 $L16-$LFB0
	.uleb128 0x9
	.uleb128 $LEHB3-$LFB0
	.uleb128 $LEHE3-$LEHB3
	.uleb128 $L17-$LFB0
	.uleb128 0
	.uleb128 $LEHB4-$LFB0
	.uleb128 $LEHE4-$LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 $LEHB5-$LFB0
	.uleb128 $LEHE5-$LEHB5
	.uleb128 0
	.uleb128 0
$LLSDACSE0:
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
	.4byte	DW.ref._ZTI15SubSubException
	.4byte	DW.ref._ZTI9Exception
	.4byte	0

$LLSDATT0:
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
	.size	_ZTI15SubSubException, 8
_ZTI15SubSubException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS15SubSubException
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
	.size	_ZTI12SubException, 8
_ZTI12SubException:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12SubException
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
