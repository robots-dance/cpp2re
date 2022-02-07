	.file	1 "example4.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.globl	oldContext
	.section	.bss,"aw",@nobits
	.align	3
	.type	oldContext, @object
	.size	oldContext, 240
oldContext:
	.space	240
	.rdata
	.align	2
$LC0:
	.ascii	"SEGV SIGNAL handler: %x\012\000"
	.text
	.align	2
	.globl	_Z12segv_handleri
$LFB5 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z12segv_handleri
	.type	_Z12segv_handleri, @function
_Z12segv_handleri:
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
	lw	$5,32($fp)
	lui	$2,%hi($LC0)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	li	$5,1			# 0x1
	lui	$2,%hi(oldContext)
	addiu	$4,$2,%lo(oldContext)
	lw	$2,%call16(longjmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,longjmp
1:	jalr	$25
	nop

	.set	macro
	.set	reorder
	.end	_Z12segv_handleri
	.cfi_endproc
$LFE5:
	.size	_Z12segv_handleri, .-_Z12segv_handleri
	.rdata
	.align	2
$LC1:
	.ascii	"FPE SIGNAL handler: %x\012\000"
	.text
	.align	2
	.globl	_Z11fpe_handleri
$LFB6 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_Z11fpe_handleri
	.type	_Z11fpe_handleri, @function
_Z11fpe_handleri:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	lw	$5,40($fp)
	lui	$2,%hi($LC1)
	addiu	$4,$2,%lo($LC1)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,40($fp)
	sw	$2,28($fp)
	lw	$2,28($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	nop
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	_Z11fpe_handleri
	.cfi_endproc
$LFE6:
	.size	_Z11fpe_handleri, .-_Z11fpe_handleri
	.rdata
	.align	2
$LC2:
	.ascii	"main::exit\000"
	.text
	.align	2
	.globl	main
$LFB7 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-40
	.cfi_def_cfa_offset 40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	move	$fp,$sp
	.cfi_def_cfa_register 30
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	.cprestore	16
	sw	$4,40($fp)
	sw	$5,44($fp)
	lui	$2,%hi(_Z11fpe_handleri)
	addiu	$5,$2,%lo(_Z11fpe_handleri)
	li	$4,8			# 0x8
	lw	$2,%call16(signal)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,signal
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi(_Z12segv_handleri)
	addiu	$5,$2,%lo(_Z12segv_handleri)
	li	$4,11			# 0xb
	lw	$2,%call16(signal)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,signal
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lui	$2,%hi(oldContext)
	addiu	$4,$2,%lo(oldContext)
	lw	$2,%call16(_setjmp)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,_setjmp
1:	jalr	$25
	nop

	lw	$28,16($fp)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	beq	$2,$0,$L5
	nop

	li	$2,10			# 0xa
	sw	$2,24($fp)
$L7:
	lw	$2,24($fp)
	blez	$2,$L6
	nop

	lw	$2,24($fp)
	addiu	$2,$2,-1
	sw	$2,24($fp)
	.option	pic0
	b	$L7
	nop

	.option	pic2
$L6:
	li	$2,20			# 0x14
	sw	$2,28($fp)
	lw	$3,28($fp)
	lw	$2,24($fp)
	teq	$2,$0,7
	div	$0,$3,$2
	mfhi	$2
	mflo	$2
	sw	$2,28($fp)
$L5:
	lui	$2,%hi($LC2)
	addiu	$4,$2,%lo($LC2)
	lw	$2,%call16(puts)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,puts
1:	jalr	$25
	nop

	lw	$28,16($fp)
	move	$2,$0
	move	$sp,$fp
	.cfi_def_cfa_register 29
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_def_cfa_offset 0
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
