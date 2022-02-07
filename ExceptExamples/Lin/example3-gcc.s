	.file	"example3.cpp"
	.text
	.section	.text._ZN9BlueClassC2Ev,"axG",@progbits,_ZN9BlueClassC5Ev,comdat
	.align 2
	.weak	_ZN9BlueClassC2Ev
	.type	_ZN9BlueClassC2Ev, @function
_ZN9BlueClassC2Ev:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$12, %edi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN9BlueClassC2Ev, .-_ZN9BlueClassC2Ev
	.weak	_ZN9BlueClassC1Ev
	.set	_ZN9BlueClassC1Ev,_ZN9BlueClassC2Ev
	.section	.text._ZN9BlueClassD2Ev,"axG",@progbits,_ZN9BlueClassD5Ev,comdat
	.align 2
	.weak	_ZN9BlueClassD2Ev
	.type	_ZN9BlueClassD2Ev, @function
_ZN9BlueClassD2Ev:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L4:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN9BlueClassD2Ev, .-_ZN9BlueClassD2Ev
	.weak	_ZN9BlueClassD1Ev
	.set	_ZN9BlueClassD1Ev,_ZN9BlueClassD2Ev
	.section	.text._ZN10GreenClassC2Ev,"axG",@progbits,_ZN10GreenClassC5Ev,comdat
	.align 2
	.weak	_ZN10GreenClassC2Ev
	.type	_ZN10GreenClassC2Ev, @function
_ZN10GreenClassC2Ev:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$2021, %edi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN10GreenClassC2Ev, .-_ZN10GreenClassC2Ev
	.weak	_ZN10GreenClassC1Ev
	.set	_ZN10GreenClassC1Ev,_ZN10GreenClassC2Ev
	.section	.text._ZN10GreenClassD2Ev,"axG",@progbits,_ZN10GreenClassD5Ev,comdat
	.align 2
	.weak	_ZN10GreenClassD2Ev
	.type	_ZN10GreenClassD2Ev, @function
_ZN10GreenClassD2Ev:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L8
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN10GreenClassD2Ev, .-_ZN10GreenClassD2Ev
	.weak	_ZN10GreenClassD1Ev
	.set	_ZN10GreenClassD1Ev,_ZN10GreenClassD2Ev
	.section	.text._ZN8RedClassC2Ev,"axG",@progbits,_ZN8RedClassC5Ev,comdat
	.align 2
	.weak	_ZN8RedClassC2Ev
	.type	_ZN8RedClassC2Ev, @function
_ZN8RedClassC2Ev:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$365, %edi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN8RedClassC2Ev, .-_ZN8RedClassC2Ev
	.weak	_ZN8RedClassC1Ev
	.set	_ZN8RedClassC1Ev,_ZN8RedClassC2Ev
	.section	.text._ZN8RedClassD2Ev,"axG",@progbits,_ZN8RedClassD5Ev,comdat
	.align 2
	.weak	_ZN8RedClassD2Ev
	.type	_ZN8RedClassD2Ev, @function
_ZN8RedClassD2Ev:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L12
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L12:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN8RedClassD2Ev, .-_ZN8RedClassD2Ev
	.weak	_ZN8RedClassD1Ev
	.set	_ZN8RedClassD1Ev,_ZN8RedClassD2Ev
	.section	.text._ZN11OrangeClassC2Ev,"axG",@progbits,_ZN11OrangeClassC5Ev,comdat
	.align 2
	.weak	_ZN11OrangeClassC2Ev
	.type	_ZN11OrangeClassC2Ev, @function
_ZN11OrangeClassC2Ev:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$100, %edi
	call	_Znam@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_ZN11OrangeClassC2Ev, .-_ZN11OrangeClassC2Ev
	.weak	_ZN11OrangeClassC1Ev
	.set	_ZN11OrangeClassC1Ev,_ZN11OrangeClassC2Ev
	.section	.text._ZN11OrangeClassD2Ev,"axG",@progbits,_ZN11OrangeClassD5Ev,comdat
	.align 2
	.weak	_ZN11OrangeClassD2Ev
	.type	_ZN11OrangeClassD2Ev, @function
_ZN11OrangeClassD2Ev:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L16
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	_ZN11OrangeClassD2Ev, .-_ZN11OrangeClassD2Ev
	.weak	_ZN11OrangeClassD1Ev
	.set	_ZN11OrangeClassD1Ev,_ZN11OrangeClassD2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	call	_Z4funcv
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"IntException handler"
	.text
	.globl	_Z4funcv
	.type	_Z4funcv, @function
_Z4funcv:
.LFB37:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA37
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
.LEHB0:
	call	_Z7subfuncv
.LEHE0:
	jmp	.L19
.L25:
	cmpq	$1, %rdx
	je	.L22
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L22:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	puts@PLT
.LEHE2:
	call	__cxa_end_catch@PLT
	jmp	.L19
.L26:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L19:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA37:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT37-.LLSDATTD37
.LLSDATTD37:
	.byte	0x1
	.uleb128 .LLSDACSE37-.LLSDACSB37
.LLSDACSB37:
	.uleb128 .LEHB0-.LFB37
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L25-.LFB37
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB37
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB37
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L26-.LFB37
	.uleb128 0
	.uleb128 .LEHB3-.LFB37
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE37:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI12IntException-.
.LLSDATT37:
	.text
	.size	_Z4funcv, .-_Z4funcv
	.section	.rodata
.LC1:
	.string	"SepException handler"
	.text
	.globl	_Z7subfuncv
	.type	_Z7subfuncv, @function
_Z7subfuncv:
.LFB38:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA38
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZN11OrangeClassC1Ev
.LEHE4:
.LEHB5:
	call	_Z10subsubfuncv
.LEHE5:
.L32:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN11OrangeClassD1Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L34
	jmp	.L37
.L35:
	cmpq	$1, %rdx
	je	.L30
	movq	%rax, %rbx
	jmp	.L31
.L30:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC1(%rip), %rdi
.LEHB6:
	call	puts@PLT
.LEHE6:
	call	__cxa_end_catch@PLT
	jmp	.L32
.L36:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
.L31:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN11OrangeClassD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L37:
	call	__stack_chk_fail@PLT
.L34:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.section	.gcc_except_table
	.align 4
.LLSDA38:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT38-.LLSDATTD38
.LLSDATTD38:
	.byte	0x1
	.uleb128 .LLSDACSE38-.LLSDACSB38
.LLSDACSB38:
	.uleb128 .LEHB4-.LFB38
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB38
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L35-.LFB38
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB38
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L36-.LFB38
	.uleb128 0
	.uleb128 .LEHB7-.LFB38
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE38:
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTI12SepException-.
.LLSDATT38:
	.text
	.size	_Z7subfuncv, .-_Z7subfuncv
	.section	.rodata
.LC2:
	.string	"SubSubException handler"
.LC3:
	.string	"Exception handler"
.LC4:
	.string	"GLOBAL exception handler"
	.text
	.globl	_Z10subsubfuncv
	.type	_Z10subsubfuncv, @function
_Z10subsubfuncv:
.LFB39:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA39
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZN9BlueClassC1Ev
.LEHE8:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZN10GreenClassC1Ev
.LEHE9:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB10:
	call	_ZN8RedClassC1Ev
.LEHE10:
	movl	$1, %edi
	call	__cxa_allocate_exception@PLT
	movl	$0, %edx
	leaq	_ZTI12IntException(%rip), %rsi
	movq	%rax, %rdi
.LEHB11:
	call	__cxa_throw@PLT
.LEHE11:
.L44:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9BlueClassD1Ev
	jmp	.L38
.L60:
	movq	%rax, %rbx
	movq	%rdx, %r12
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8RedClassD1Ev
	movq	%r12, %rax
	jmp	.L40
.L59:
	movq	%rax, %rbx
	movq	%rdx, %rax
.L40:
	movq	%rax, %rdx
	cmpq	$3, %rdx
	je	.L42
	movq	%rax, %r12
	jmp	.L43
.L42:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_get_exception_ptr@PLT
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC2(%rip), %rdi
.LEHB12:
	call	puts@PLT
.LEHE12:
	call	__cxa_end_catch@PLT
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10GreenClassD1Ev
	jmp	.L44
.L61:
	movq	%rax, %rbx
	movq	%rdx, %r12
	call	__cxa_end_catch@PLT
.L43:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10GreenClassD1Ev
	movq	%r12, %rax
	jmp	.L46
.L58:
	movq	%rax, %rbx
	movq	%rdx, %rax
.L46:
	movq	%rax, %rdx
	cmpq	$2, %rdx
	je	.L48
	movq	%rax, %r12
	jmp	.L49
.L48:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_get_exception_ptr@PLT
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC3(%rip), %rdi
.LEHB13:
	call	puts@PLT
.LEHE13:
	call	__cxa_end_catch@PLT
	jmp	.L44
.L62:
	movq	%rax, %rbx
	movq	%rdx, %r12
	call	__cxa_end_catch@PLT
.L49:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9BlueClassD1Ev
	movq	%r12, %rax
	jmp	.L51
.L57:
	movq	%rax, %rbx
	movq	%rdx, %rax
.L51:
	cmpq	$1, %rax
	je	.L53
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L53:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_get_exception_ptr@PLT
	movzbl	(%rax), %eax
	movb	%al, -48(%rbp)
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC4(%rip), %rdi
.LEHB15:
	call	puts@PLT
.LEHE15:
	call	__cxa_end_catch@PLT
	jmp	.L38
.L63:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L38:
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE39:
	.section	.gcc_except_table
	.align 4
.LLSDA39:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT39-.LLSDATTD39
.LLSDATTD39:
	.byte	0x1
	.uleb128 .LLSDACSE39-.LLSDACSB39
.LLSDACSB39:
	.uleb128 .LEHB8-.LFB39
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L57-.LFB39
	.uleb128 0x1
	.uleb128 .LEHB9-.LFB39
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L58-.LFB39
	.uleb128 0x5
	.uleb128 .LEHB10-.LFB39
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L59-.LFB39
	.uleb128 0x7
	.uleb128 .LEHB11-.LFB39
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L60-.LFB39
	.uleb128 0x7
	.uleb128 .LEHB12-.LFB39
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L61-.LFB39
	.uleb128 0x5
	.uleb128 .LEHB13-.LFB39
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L62-.LFB39
	.uleb128 0x3
	.uleb128 .LEHB14-.LFB39
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB39
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L63-.LFB39
	.uleb128 0
	.uleb128 .LEHB16-.LFB39
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE39:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.byte	0x2
	.byte	0x7d
	.byte	0x3
	.byte	0x7d
	.align 4
	.long	DW.ref._ZTI15SubSubException-.
	.long	DW.ref._ZTI12SubException-.
	.long	DW.ref._ZTI9Exception-.
.LLSDATT39:
	.text
	.size	_Z10subsubfuncv, .-_Z10subsubfuncv
	.weak	_ZTI9Exception
	.section	.data.rel.ro._ZTI9Exception,"awG",@progbits,_ZTI9Exception,comdat
	.align 8
	.type	_ZTI9Exception, @object
	.size	_ZTI9Exception, 16
_ZTI9Exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS9Exception
	.weak	_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.align 8
	.type	_ZTS9Exception, @object
	.size	_ZTS9Exception, 11
_ZTS9Exception:
	.string	"9Exception"
	.weak	_ZTI12SubException
	.section	.data.rel.ro._ZTI12SubException,"awG",@progbits,_ZTI12SubException,comdat
	.align 8
	.type	_ZTI12SubException, @object
	.size	_ZTI12SubException, 24
_ZTI12SubException:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS12SubException
	.quad	_ZTI9Exception
	.weak	_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",@progbits,_ZTS12SubException,comdat
	.align 8
	.type	_ZTS12SubException, @object
	.size	_ZTS12SubException, 15
_ZTS12SubException:
	.string	"12SubException"
	.weak	_ZTI15SubSubException
	.section	.data.rel.ro._ZTI15SubSubException,"awG",@progbits,_ZTI15SubSubException,comdat
	.align 8
	.type	_ZTI15SubSubException, @object
	.size	_ZTI15SubSubException, 24
_ZTI15SubSubException:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS15SubSubException
	.quad	_ZTI12SubException
	.weak	_ZTS15SubSubException
	.section	.rodata._ZTS15SubSubException,"aG",@progbits,_ZTS15SubSubException,comdat
	.align 16
	.type	_ZTS15SubSubException, @object
	.size	_ZTS15SubSubException, 18
_ZTS15SubSubException:
	.string	"15SubSubException"
	.weak	_ZTI12SepException
	.section	.data.rel.ro._ZTI12SepException,"awG",@progbits,_ZTI12SepException,comdat
	.align 8
	.type	_ZTI12SepException, @object
	.size	_ZTI12SepException, 16
_ZTI12SepException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12SepException
	.weak	_ZTS12SepException
	.section	.rodata._ZTS12SepException,"aG",@progbits,_ZTS12SepException,comdat
	.align 8
	.type	_ZTS12SepException, @object
	.size	_ZTS12SepException, 15
_ZTS12SepException:
	.string	"12SepException"
	.weak	_ZTI12IntException
	.section	.data.rel.ro._ZTI12IntException,"awG",@progbits,_ZTI12IntException,comdat
	.align 8
	.type	_ZTI12IntException, @object
	.size	_ZTI12IntException, 16
_ZTI12IntException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12IntException
	.weak	_ZTS12IntException
	.section	.rodata._ZTS12IntException,"aG",@progbits,_ZTS12IntException,comdat
	.align 8
	.type	_ZTS12IntException, @object
	.size	_ZTS12IntException, 15
_ZTS12IntException:
	.string	"12IntException"
	.hidden	DW.ref._ZTI12IntException
	.weak	DW.ref._ZTI12IntException
	.section	.data.rel.local.DW.ref._ZTI12IntException,"awG",@progbits,DW.ref._ZTI12IntException,comdat
	.align 8
	.type	DW.ref._ZTI12IntException, @object
	.size	DW.ref._ZTI12IntException, 8
DW.ref._ZTI12IntException:
	.quad	_ZTI12IntException
	.hidden	DW.ref._ZTI12SepException
	.weak	DW.ref._ZTI12SepException
	.section	.data.rel.local.DW.ref._ZTI12SepException,"awG",@progbits,DW.ref._ZTI12SepException,comdat
	.align 8
	.type	DW.ref._ZTI12SepException, @object
	.size	DW.ref._ZTI12SepException, 8
DW.ref._ZTI12SepException:
	.quad	_ZTI12SepException
	.hidden	DW.ref._ZTI12SubException
	.weak	DW.ref._ZTI12SubException
	.section	.data.rel.local.DW.ref._ZTI12SubException,"awG",@progbits,DW.ref._ZTI12SubException,comdat
	.align 8
	.type	DW.ref._ZTI12SubException, @object
	.size	DW.ref._ZTI12SubException, 8
DW.ref._ZTI12SubException:
	.quad	_ZTI12SubException
	.hidden	DW.ref._ZTI15SubSubException
	.weak	DW.ref._ZTI15SubSubException
	.section	.data.rel.local.DW.ref._ZTI15SubSubException,"awG",@progbits,DW.ref._ZTI15SubSubException,comdat
	.align 8
	.type	DW.ref._ZTI15SubSubException, @object
	.size	DW.ref._ZTI15SubSubException, 8
DW.ref._ZTI15SubSubException:
	.quad	_ZTI15SubSubException
	.hidden	DW.ref._ZTI9Exception
	.weak	DW.ref._ZTI9Exception
	.section	.data.rel.local.DW.ref._ZTI9Exception,"awG",@progbits,DW.ref._ZTI9Exception,comdat
	.align 8
	.type	DW.ref._ZTI9Exception, @object
	.size	DW.ref._ZTI9Exception, 8
DW.ref._ZTI9Exception:
	.quad	_ZTI9Exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
