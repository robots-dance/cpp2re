	.file	"example1.cpp"
	.text
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
.LFB0:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$1, %edi
	call	__cxa_allocate_exception@PLT
	movl	$0, %edx
	leaq	_ZTI12SubException(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	__cxa_throw@PLT
.LEHE0:
.L7:
	movl	$0, %eax
	jmp	.L18
.L14:
	movq	%rdx, %rcx
	cmpq	$3, %rcx
	je	.L5
	jmp	.L6
.L5:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
.LEHB1:
	call	printf@PLT
.LEHE1:
	call	__cxa_end_catch@PLT
	jmp	.L7
.L15:
	movq	%rax, %r12
	movq	%rdx, %rbx
	call	__cxa_end_catch@PLT
	movq	%r12, %rax
	movq	%rbx, %rdx
.L6:
	cmpq	$2, %rdx
	je	.L10
	jmp	.L11
.L10:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC1(%rip), %rdi
.LEHB2:
	call	puts@PLT
.LEHE2:
	call	__cxa_end_catch@PLT
	jmp	.L7
.L16:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
.L11:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC2(%rip), %rdi
.LEHB3:
	call	puts@PLT
.LEHE3:
.LEHB4:
	call	__cxa_end_catch@PLT
.LEHE4:
	jmp	.L7
.L17:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L18:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
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
	.uleb128 .L14-.LFB0
	.uleb128 0x5
	.uleb128 .LEHB1-.LFB0
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L15-.LFB0
	.uleb128 0x7
	.uleb128 .LEHB2-.LFB0
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L16-.LFB0
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB0
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L17-.LFB0
	.uleb128 0
	.uleb128 .LEHB4-.LFB0
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB0
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE0:
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
	.align 4
	.long	DW.ref._ZTI15SubSubException-.
	.long	DW.ref._ZTI9Exception-.
	.long	0

.LLSDATT0:
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
	.size	_ZTI15SubSubException, 16
_ZTI15SubSubException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS15SubSubException
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
	.size	_ZTI12SubException, 16
_ZTI12SubException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12SubException
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
