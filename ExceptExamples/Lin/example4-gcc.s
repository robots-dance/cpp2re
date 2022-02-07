	.file	"example4.cpp"
	.text
	.globl	oldContext
	.bss
	.align 32
	.type	oldContext, @object
	.size	oldContext, 200
oldContext:
	.zero	200
	.section	.rodata
.LC0:
	.string	"SEGV SIGNAL handler: %x\n"
	.text
	.globl	_Z12segv_handleri
	.type	_Z12segv_handleri, @function
_Z12segv_handleri:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, %esi
	leaq	oldContext(%rip), %rdi
	call	longjmp@PLT
	.cfi_endproc
.LFE0:
	.size	_Z12segv_handleri, .-_Z12segv_handleri
	.section	.rodata
.LC1:
	.string	"FPE SIGNAL handler: %x\n"
	.text
	.globl	_Z11fpe_handleri
	.type	_Z11fpe_handleri, @function
_Z11fpe_handleri:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
	cltq
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_Z11fpe_handleri, .-_Z11fpe_handleri
	.section	.rodata
.LC2:
	.string	"main::exit"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	_Z11fpe_handleri(%rip), %rsi
	movl	$8, %edi
	call	signal@PLT
	leaq	_Z12segv_handleri(%rip), %rsi
	movl	$11, %edi
	call	signal@PLT
	leaq	oldContext(%rip), %rdi
	call	_setjmp@PLT
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L5
	movl	$10, -8(%rbp)
.L7:
	cmpl	$0, -8(%rbp)
	jle	.L6
	subl	$1, -8(%rbp)
	jmp	.L7
.L6:
	movl	$20, -4(%rbp)
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, -4(%rbp)
.L5:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
