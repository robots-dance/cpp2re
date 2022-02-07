	.file	"example5.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC1:
	.string	"My Exception"
.LC2:
	.string	"My Exception Next"
	.align 8
.LC3:
	.string	"Integer exception handler: %d\n"
.LC5:
	.string	"Float exception handler: %f\n"
.LC6:
	.string	"Double exception handler: %f\n"
.LC7:
	.string	"STDSTRING exception handler"
	.align 8
.LC8:
	.string	"CHARPTR exception handler: %s\n"
.LC9:
	.string	"Global exception handler"
	.text
	.globl	main
	.type	main, @function
main:
.LFB984:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA984
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$4, %edi
	call	__cxa_allocate_exception@PLT
	movl	$666, (%rax)
	movl	$0, %edx
	leaq	_ZTIi(%rip), %rsi
	movq	%rax, %rdi
.LEHB0:
	call	__cxa_throw@PLT
.LEHE0:
.L11:
	movl	$4, %edi
	call	__cxa_allocate_exception@PLT
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, (%rax)
	movl	$0, %edx
	leaq	_ZTIf(%rip), %rsi
	movq	%rax, %rdi
.LEHB1:
	call	__cxa_throw@PLT
.LEHE1:
.L18:
	movl	$4, %edi
	call	__cxa_allocate_exception@PLT
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, (%rax)
	movl	$0, %edx
	leaq	_ZTIf(%rip), %rsi
	movq	%rax, %rdi
.LEHB2:
	call	__cxa_throw@PLT
.LEHE2:
.L25:
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	leaq	.LC1(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	leaq	_ZTIPKc(%rip), %rsi
	movq	%rax, %rdi
.LEHB3:
	call	__cxa_throw@PLT
.LEHE3:
.L32:
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	leaq	.LC2(%rip), %rdx
	movq	%rdx, (%rax)
	movl	$0, %edx
	leaq	_ZTIPKc(%rip), %rsi
	movq	%rax, %rdi
.LEHB4:
	call	__cxa_throw@PLT
.LEHE4:
.L38:
	movl	$0, %eax
	jmp	.L58
.L41:
	cmpq	$1, %rdx
	je	.L5
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L5:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movl	(%rax), %eax
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
.LEHB6:
	call	printf@PLT
.LEHE6:
	call	__cxa_end_catch@PLT
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rax)
	movl	$0, %edx
	leaq	_ZTId(%rip), %rsi
	movq	%rax, %rdi
.LEHB7:
	call	__cxa_throw@PLT
.LEHE7:
.L42:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.L43:
	cmpq	$2, %rdx
	je	.L9
	cmpq	$3, %rdx
	je	.L10
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
.L9:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movss	(%rax), %xmm0
	movss	%xmm0, -76(%rbp)
	cvtss2sd	-76(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
.LEHB9:
	call	printf@PLT
.LEHE9:
	call	__cxa_end_catch@PLT
	jmp	.L11
.L10:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
.LEHB10:
	call	printf@PLT
.LEHE10:
	call	__cxa_end_catch@PLT
	jmp	.L11
.L44:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.L45:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L46:
	cmpq	$2, %rdx
	je	.L16
	cmpq	$3, %rdx
	je	.L17
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE11:
.L16:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movss	(%rax), %xmm0
	movss	%xmm0, -72(%rbp)
	cvtss2sd	-72(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
.LEHB12:
	call	printf@PLT
.LEHE12:
	call	__cxa_end_catch@PLT
	jmp	.L18
.L17:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movsd	(%rax), %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
.LEHB13:
	call	printf@PLT
.LEHE13:
	call	__cxa_end_catch@PLT
	jmp	.L18
.L47:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB14:
	call	_Unwind_Resume@PLT
.L48:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L49:
	cmpq	$2, %rdx
	je	.L23
	cmpq	$3, %rdx
	je	.L24
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE14:
.L24:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
.LEHB15:
	call	printf@PLT
.LEHE15:
	call	__cxa_end_catch@PLT
	jmp	.L25
.L23:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movss	(%rax), %xmm0
	movss	%xmm0, -68(%rbp)
	cvtss2sd	-68(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
.LEHB16:
	call	printf@PLT
.LEHE16:
	call	__cxa_end_catch@PLT
	jmp	.L25
.L50:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.L51:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L52:
	cmpq	$4, %rdx
	je	.L30
	cmpq	$5, %rdx
	je	.L31
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE17:
.L30:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC7(%rip), %rdi
.LEHB18:
	call	puts@PLT
.LEHE18:
.LEHB19:
	call	__cxa_end_catch@PLT
.LEHE19:
	jmp	.L32
.L31:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
.LEHB20:
	call	printf@PLT
.LEHE20:
	call	__cxa_end_catch@PLT
	jmp	.L32
.L53:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.L54:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE21:
.L55:
	cmpq	$4, %rdx
	jne	.L59
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	%rax, -24(%rbp)
	leaq	.LC7(%rip), %rdi
.LEHB22:
	call	puts@PLT
.LEHE22:
.LEHB23:
	call	__cxa_end_catch@PLT
.LEHE23:
	jmp	.L38
.L59:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	leaq	.LC9(%rip), %rdi
.LEHB24:
	call	puts@PLT
.LEHE24:
.LEHB25:
	call	__cxa_end_catch@PLT
.LEHE25:
	jmp	.L38
.L56:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L57:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
.L58:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE984:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA984:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT984-.LLSDATTD984
.LLSDATTD984:
	.byte	0x1
	.uleb128 .LLSDACSE984-.LLSDACSB984
.LLSDACSB984:
	.uleb128 .LEHB0-.LFB984
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L41-.LFB984
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB984
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L46-.LFB984
	.uleb128 0x5
	.uleb128 .LEHB2-.LFB984
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L49-.LFB984
	.uleb128 0x9
	.uleb128 .LEHB3-.LFB984
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L52-.LFB984
	.uleb128 0xd
	.uleb128 .LEHB4-.LFB984
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L55-.LFB984
	.uleb128 0x11
	.uleb128 .LEHB5-.LFB984
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB984
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L42-.LFB984
	.uleb128 0
	.uleb128 .LEHB7-.LFB984
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L43-.LFB984
	.uleb128 0x5
	.uleb128 .LEHB8-.LFB984
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB984
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L44-.LFB984
	.uleb128 0
	.uleb128 .LEHB10-.LFB984
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L45-.LFB984
	.uleb128 0
	.uleb128 .LEHB11-.LFB984
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB984
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L47-.LFB984
	.uleb128 0
	.uleb128 .LEHB13-.LFB984
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L48-.LFB984
	.uleb128 0
	.uleb128 .LEHB14-.LFB984
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB984
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L50-.LFB984
	.uleb128 0
	.uleb128 .LEHB16-.LFB984
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L51-.LFB984
	.uleb128 0
	.uleb128 .LEHB17-.LFB984
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB984
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L53-.LFB984
	.uleb128 0
	.uleb128 .LEHB19-.LFB984
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB20-.LFB984
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L54-.LFB984
	.uleb128 0
	.uleb128 .LEHB21-.LFB984
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB984
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L56-.LFB984
	.uleb128 0
	.uleb128 .LEHB23-.LFB984
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB984
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L57-.LFB984
	.uleb128 0
	.uleb128 .LEHB25-.LFB984
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB984
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB984
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE984:
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
	.align 4
	.long	0

	.long	DW.ref._ZTIPKc-.
	.long	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE-.
	.long	DW.ref._ZTId-.
	.long	DW.ref._ZTIf-.
	.long	DW.ref._ZTIi-.
.LLSDATT984:
	.text
	.size	main, .-main
	.weak	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.data.rel.ro._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"awG",@progbits,_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 8
	.type	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 16
_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 32
	.type	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 53
_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.string	"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"
	.section	.rodata
	.align 4
.LC0:
	.long	1066192077
	.align 8
.LC4:
	.long	2576980378
	.long	1072798105
	.hidden	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.data.rel.local.DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"awG",@progbits,DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 8
	.type	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @object
	.size	DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 8
DW.ref._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.hidden	DW.ref._ZTIPKc
	.weak	DW.ref._ZTIPKc
	.section	.data.rel.local.DW.ref._ZTIPKc,"awG",@progbits,DW.ref._ZTIPKc,comdat
	.align 8
	.type	DW.ref._ZTIPKc, @object
	.size	DW.ref._ZTIPKc, 8
DW.ref._ZTIPKc:
	.quad	_ZTIPKc
	.hidden	DW.ref._ZTId
	.weak	DW.ref._ZTId
	.section	.data.rel.local.DW.ref._ZTId,"awG",@progbits,DW.ref._ZTId,comdat
	.align 8
	.type	DW.ref._ZTId, @object
	.size	DW.ref._ZTId, 8
DW.ref._ZTId:
	.quad	_ZTId
	.hidden	DW.ref._ZTIf
	.weak	DW.ref._ZTIf
	.section	.data.rel.local.DW.ref._ZTIf,"awG",@progbits,DW.ref._ZTIf,comdat
	.align 8
	.type	DW.ref._ZTIf, @object
	.size	DW.ref._ZTIf, 8
DW.ref._ZTIf:
	.quad	_ZTIf
	.hidden	DW.ref._ZTIi
	.weak	DW.ref._ZTIi
	.section	.data.rel.local.DW.ref._ZTIi,"awG",@progbits,DW.ref._ZTIi,comdat
	.align 8
	.type	DW.ref._ZTIi, @object
	.size	DW.ref._ZTIi, 8
DW.ref._ZTIi:
	.quad	_ZTIi
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
