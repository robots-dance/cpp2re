	.file	"example2.cpp"
	.text
	.section	.text._ZN9ExceptionC2Ev,"axG",@progbits,_ZN9ExceptionC5Ev,comdat
	.align 2
	.weak	_ZN9ExceptionC2Ev
	.type	_ZN9ExceptionC2Ev, @function
_ZN9ExceptionC2Ev:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$1, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN9ExceptionC2Ev, .-_ZN9ExceptionC2Ev
	.weak	_ZN9ExceptionC1Ev
	.set	_ZN9ExceptionC1Ev,_ZN9ExceptionC2Ev
	.section	.text._ZN12SubExceptionC2Ev,"axG",@progbits,_ZN12SubExceptionC5Ev,comdat
	.align 2
	.weak	_ZN12SubExceptionC2Ev
	.type	_ZN12SubExceptionC2Ev, @function
_ZN12SubExceptionC2Ev:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9ExceptionC2Ev
	movq	-8(%rbp), %rax
	movl	$-1430532899, 4(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN12SubExceptionC2Ev, .-_ZN12SubExceptionC2Ev
	.weak	_ZN12SubExceptionC1Ev
	.set	_ZN12SubExceptionC1Ev,_ZN12SubExceptionC2Ev
	.section	.text._ZN9BlueClassC2Ev,"axG",@progbits,_ZN9BlueClassC5Ev,comdat
	.align 2
	.weak	_ZN9BlueClassC2Ev
	.type	_ZN9BlueClassC2Ev, @function
_ZN9BlueClassC2Ev:
.LFB10:
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
.LFE10:
	.size	_ZN9BlueClassC2Ev, .-_ZN9BlueClassC2Ev
	.weak	_ZN9BlueClassC1Ev
	.set	_ZN9BlueClassC1Ev,_ZN9BlueClassC2Ev
	.section	.text._ZN9BlueClassD2Ev,"axG",@progbits,_ZN9BlueClassD5Ev,comdat
	.align 2
	.weak	_ZN9BlueClassD2Ev
	.type	_ZN9BlueClassD2Ev, @function
_ZN9BlueClassD2Ev:
.LFB13:
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
	je	.L6
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN9BlueClassD2Ev, .-_ZN9BlueClassD2Ev
	.weak	_ZN9BlueClassD1Ev
	.set	_ZN9BlueClassD1Ev,_ZN9BlueClassD2Ev
	.section	.text._ZN10GreenClassC2Ev,"axG",@progbits,_ZN10GreenClassC5Ev,comdat
	.align 2
	.weak	_ZN10GreenClassC2Ev
	.type	_ZN10GreenClassC2Ev, @function
_ZN10GreenClassC2Ev:
.LFB16:
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
.LFE16:
	.size	_ZN10GreenClassC2Ev, .-_ZN10GreenClassC2Ev
	.weak	_ZN10GreenClassC1Ev
	.set	_ZN10GreenClassC1Ev,_ZN10GreenClassC2Ev
	.section	.text._ZN10GreenClassD2Ev,"axG",@progbits,_ZN10GreenClassD5Ev,comdat
	.align 2
	.weak	_ZN10GreenClassD2Ev
	.type	_ZN10GreenClassD2Ev, @function
_ZN10GreenClassD2Ev:
.LFB19:
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
	je	.L10
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN10GreenClassD2Ev, .-_ZN10GreenClassD2Ev
	.weak	_ZN10GreenClassD1Ev
	.set	_ZN10GreenClassD1Ev,_ZN10GreenClassD2Ev
	.section	.text._ZN8RedClassC2Ev,"axG",@progbits,_ZN8RedClassC5Ev,comdat
	.align 2
	.weak	_ZN8RedClassC2Ev
	.type	_ZN8RedClassC2Ev, @function
_ZN8RedClassC2Ev:
.LFB22:
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
.LFE22:
	.size	_ZN8RedClassC2Ev, .-_ZN8RedClassC2Ev
	.weak	_ZN8RedClassC1Ev
	.set	_ZN8RedClassC1Ev,_ZN8RedClassC2Ev
	.section	.text._ZN8RedClassD2Ev,"axG",@progbits,_ZN8RedClassD5Ev,comdat
	.align 2
	.weak	_ZN8RedClassD2Ev
	.type	_ZN8RedClassD2Ev, @function
_ZN8RedClassD2Ev:
.LFB25:
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
	je	.L14
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN8RedClassD2Ev, .-_ZN8RedClassD2Ev
	.weak	_ZN8RedClassD1Ev
	.set	_ZN8RedClassD1Ev,_ZN8RedClassD2Ev
	.section	.rodata
.LC0:
	.string	"SubSubException handler"
.LC1:
	.string	"Exception handler"
.LC2:
	.string	"GLOBAL exception handler"
	.text
	.globl	main
	.type	main, @function
main:
.LFB27:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA27
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN9BlueClassC1Ev
.LEHE0:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZN10GreenClassC1Ev
.LEHE1:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN8RedClassC1Ev
.LEHE2:
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZN12SubExceptionC1Ev
	movl	$0, %edx
	leaq	_ZTI12SubException(%rip), %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	__cxa_throw@PLT
.LEHE3:
.L22:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9BlueClassD1Ev
.L30:
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L32
	jmp	.L40
.L36:
	movq	%rax, %rbx
	movq	%rdx, %r12
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8RedClassD1Ev
	movq	%r12, %rax
	jmp	.L18
.L35:
	movq	%rax, %rbx
	movq	%rdx, %rax
.L18:
	movq	%rax, %rdx
	cmpq	$3, %rdx
	je	.L20
	movq	%rax, %r12
	jmp	.L21
.L20:
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
	leaq	.LC0(%rip), %rdi
.LEHB4:
	call	puts@PLT
.LEHE4:
	call	__cxa_end_catch@PLT
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10GreenClassD1Ev
	jmp	.L22
.L37:
	movq	%rax, %rbx
	movq	%rdx, %r12
	call	__cxa_end_catch@PLT
.L21:
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10GreenClassD1Ev
	movq	%r12, %rax
	jmp	.L24
.L34:
	movq	%rax, %rbx
	movq	%rdx, %rax
.L24:
	cmpq	$2, %rax
	je	.L26
	jmp	.L27
.L26:
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_get_exception_ptr@PLT
	movzbl	(%rax), %eax
	movb	%al, -48(%rbp)
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC1(%rip), %rdi
.LEHB5:
	call	puts@PLT
.LEHE5:
	call	__cxa_end_catch@PLT
	jmp	.L22
.L38:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
.L27:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9BlueClassD1Ev
	movq	%rbx, %rax
	jmp	.L29
.L33:
.L29:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC2(%rip), %rdi
.LEHB6:
	call	puts@PLT
.LEHE6:
.LEHB7:
	call	__cxa_end_catch@PLT
.LEHE7:
	jmp	.L30
.L39:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L40:
	call	__stack_chk_fail@PLT
.L32:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA27:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT27-.LLSDATTD27
.LLSDATTD27:
	.byte	0x1
	.uleb128 .LLSDACSE27-.LLSDACSB27
.LLSDACSB27:
	.uleb128 .LEHB0-.LFB27
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB27
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB27
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB27
	.uleb128 0x5
	.uleb128 .LEHB2-.LFB27
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L35-.LFB27
	.uleb128 0x7
	.uleb128 .LEHB3-.LFB27
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L36-.LFB27
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB27
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L37-.LFB27
	.uleb128 0x5
	.uleb128 .LEHB5-.LFB27
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L38-.LFB27
	.uleb128 0x3
	.uleb128 .LEHB6-.LFB27
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L39-.LFB27
	.uleb128 0
	.uleb128 .LEHB7-.LFB27
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB27
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE27:
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
	.long	DW.ref._ZTI9Exception-.
	.long	0

.LLSDATT27:
	.text
	.size	main, .-main
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
