	.file	"example6.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"MyException exception handler"
.LC1:
	.string	"Global exception handler"
	.align 8
.LC2:
	.string	"MyExceptionPtr exception handler"
	.align 8
.LC3:
	.string	"MyExceptionArray exception handler"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movl	$1, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, (%rbx)
	movl	$0, %edx
	leaq	_ZTIP11MyException(%rip), %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	__cxa_throw@PLT
.LEHE1:
.L9:
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movl	$1, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, (%rbx)
	movl	$0, %edx
	leaq	_ZTIP11MyException(%rip), %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	__cxa_throw@PLT
.LEHE3:
.L3:
	testq	%rax, %rax
	js	.L2
	subq	$1, %rax
	jmp	.L3
.L2:
	movq	%rdx, (%rbx)
	movl	$0, %edx
	leaq	_ZTIP11MyException(%rip), %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	__cxa_throw@PLT
.LEHE4:
.L27:
	movl	$0, %eax
	jmp	.L43
.L30:
	movq	%rax, %r13
	movq	%rdx, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r13, %rax
	movq	%r12, %rdx
	jmp	.L6
.L31:
.L6:
	cmpq	$1, %rdx
	jne	.L44
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC0(%rip), %rdi
.LEHB5:
	call	puts@PLT
.LEHE5:
	call	__cxa_end_catch@PLT
	jmp	.L9
.L44:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC1(%rip), %rdi
.LEHB6:
	call	puts@PLT
.LEHE6:
.LEHB7:
	call	__cxa_end_catch@PLT
	jmp	.L9
.L32:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
.L33:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.L34:
	movq	%rax, %r13
	movq	%rdx, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r13, %rax
	movq	%r12, %rdx
	jmp	.L13
.L35:
.L13:
	cmpq	$3, %rdx
	je	.L15
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
.L15:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -64(%rbp)
	leaq	.LC2(%rip), %rdi
.LEHB9:
	call	puts@PLT
.LEHE9:
	call	__cxa_end_catch@PLT
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movl	$333, %edi
.LEHB10:
	call	_Znam@PLT
.LEHE10:
	movq	%rax, %rdx
	movl	$332, %eax
	jmp	.L3
.L36:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L37:
	movq	%rax, %r13
	movq	%rdx, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r13, %rax
	movq	%r12, %rdx
	jmp	.L19
.L38:
.L19:
	cmpq	$3, %rdx
	je	.L21
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L21:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -56(%rbp)
	leaq	.LC3(%rip), %rdi
.LEHB12:
	call	puts@PLT
.LEHE12:
	call	__cxa_end_catch@PLT
	movl	$5328, %edi
.LEHB13:
	call	_Znam@PLT
	movq	%rax, -48(%rbp)
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	leaq	_ZTIPP11MyException(%rip), %rsi
	movq	%rax, %rdi
	call	__cxa_throw@PLT
.LEHE13:
.L39:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L40:
	cmpq	$3, %rdx
	jne	.L45
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC3(%rip), %rdi
.LEHB15:
	call	puts@PLT
.LEHE15:
	call	__cxa_end_catch@PLT
	jmp	.L27
.L45:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC1(%rip), %rdi
.LEHB16:
	call	puts@PLT
.LEHE16:
.LEHB17:
	call	__cxa_end_catch@PLT
	jmp	.L27
.L41:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE17:
.L42:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB18:
	call	_Unwind_Resume@PLT
.LEHE18:
.L43:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA0:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT0-.LLSDATTD0
.LLSDATTD0:
	.byte	0x1
	.uleb128 .LLSDACSE0-.LLSDACSB0
.LLSDACSB0:
	.uleb128 .LEHB0-.LFB0
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L30-.LFB0
	.uleb128 0x5
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB0
	.uleb128 0x3
	.uleb128 .LEHB2-.LFB0
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L34-.LFB0
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L35-.LFB0
	.uleb128 0x7
	.uleb128 .LEHB4-.LFB0
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L38-.LFB0
	.uleb128 0x7
	.uleb128 .LEHB5-.LFB0
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L32-.LFB0
	.uleb128 0
	.uleb128 .LEHB6-.LFB0
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L33-.LFB0
	.uleb128 0
	.uleb128 .LEHB7-.LFB0
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB8-.LFB0
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB0
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L36-.LFB0
	.uleb128 0
	.uleb128 .LEHB10-.LFB0
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L37-.LFB0
	.uleb128 0x9
	.uleb128 .LEHB11-.LFB0
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB0
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L39-.LFB0
	.uleb128 0
	.uleb128 .LEHB13-.LFB0
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L40-.LFB0
	.uleb128 0xb
	.uleb128 .LEHB14-.LFB0
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB0
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L41-.LFB0
	.uleb128 0
	.uleb128 .LEHB16-.LFB0
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L42-.LFB0
	.uleb128 0
	.uleb128 .LEHB17-.LFB0
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB0
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE0:
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
	.align 4
	.long	DW.ref._ZTIP11MyException-.
	.long	0

	.long	DW.ref._ZTI11MyException-.
.LLSDATT0:
	.text
	.size	main, .-main
	.weak	_ZTIPP11MyException
	.section	.data.rel.ro._ZTIPP11MyException,"awG",@progbits,_ZTIPP11MyException,comdat
	.align 8
	.type	_ZTIPP11MyException, @object
	.size	_ZTIPP11MyException, 32
_ZTIPP11MyException:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPP11MyException
	.long	0
	.zero	4
	.quad	_ZTIP11MyException
	.weak	_ZTSPP11MyException
	.section	.rodata._ZTSPP11MyException,"aG",@progbits,_ZTSPP11MyException,comdat
	.align 16
	.type	_ZTSPP11MyException, @object
	.size	_ZTSPP11MyException, 16
_ZTSPP11MyException:
	.string	"PP11MyException"
	.weak	_ZTI11MyException
	.section	.data.rel.ro._ZTI11MyException,"awG",@progbits,_ZTI11MyException,comdat
	.align 8
	.type	_ZTI11MyException, @object
	.size	_ZTI11MyException, 16
_ZTI11MyException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS11MyException
	.weak	_ZTS11MyException
	.section	.rodata._ZTS11MyException,"aG",@progbits,_ZTS11MyException,comdat
	.align 8
	.type	_ZTS11MyException, @object
	.size	_ZTS11MyException, 14
_ZTS11MyException:
	.string	"11MyException"
	.weak	_ZTIP11MyException
	.section	.data.rel.ro._ZTIP11MyException,"awG",@progbits,_ZTIP11MyException,comdat
	.align 8
	.type	_ZTIP11MyException, @object
	.size	_ZTIP11MyException, 32
_ZTIP11MyException:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSP11MyException
	.long	0
	.zero	4
	.quad	_ZTI11MyException
	.weak	_ZTSP11MyException
	.section	.rodata._ZTSP11MyException,"aG",@progbits,_ZTSP11MyException,comdat
	.align 8
	.type	_ZTSP11MyException, @object
	.size	_ZTSP11MyException, 15
_ZTSP11MyException:
	.string	"P11MyException"
	.hidden	DW.ref._ZTI11MyException
	.weak	DW.ref._ZTI11MyException
	.section	.data.rel.local.DW.ref._ZTI11MyException,"awG",@progbits,DW.ref._ZTI11MyException,comdat
	.align 8
	.type	DW.ref._ZTI11MyException, @object
	.size	DW.ref._ZTI11MyException, 8
DW.ref._ZTI11MyException:
	.quad	_ZTI11MyException
	.hidden	DW.ref._ZTIP11MyException
	.weak	DW.ref._ZTIP11MyException
	.section	.data.rel.local.DW.ref._ZTIP11MyException,"awG",@progbits,DW.ref._ZTIP11MyException,comdat
	.align 8
	.type	DW.ref._ZTIP11MyException, @object
	.size	DW.ref._ZTIP11MyException, 8
DW.ref._ZTIP11MyException:
	.quad	_ZTIP11MyException
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
