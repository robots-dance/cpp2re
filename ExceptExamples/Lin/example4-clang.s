	.text
	.file	"example4.cpp"
	.globl	_Z12segv_handleri       # -- Begin function _Z12segv_handleri
	.p2align	4, 0x90
	.type	_Z12segv_handleri,@function
_Z12segv_handleri:                      # @_Z12segv_handleri
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str, %rax
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$oldContext, %rdi
	movl	$1, %esi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	longjmp
.Lfunc_end0:
	.size	_Z12segv_handleri, .Lfunc_end0-_Z12segv_handleri
	.cfi_endproc
                                        # -- End function
	.globl	_Z11fpe_handleri        # -- Begin function _Z11fpe_handleri
	.p2align	4, 0x90
	.type	_Z11fpe_handleri,@function
_Z11fpe_handleri:                       # @_Z11fpe_handleri
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movabsq	$.L.str.1, %rax
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movslq	-4(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, (%rdi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_Z11fpe_handleri, .Lfunc_end1-_Z11fpe_handleri
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$8, %eax
	movabsq	$_Z11fpe_handleri, %rcx
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, %edi
	movq	%rcx, %rsi
	callq	signal
	movl	$11, %edi
	movabsq	$_Z12segv_handleri, %rsi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	signal
	movabsq	$oldContext, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	_setjmp
	cmpl	$0, %eax
	jne	.LBB2_5
# %bb.1:
	movl	$10, -20(%rbp)
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jle	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_2
.LBB2_4:
	movl	$20, -24(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	-20(%rbp)
	movl	%eax, -24(%rbp)
.LBB2_5:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	oldContext,@object      # @oldContext
	.bss
	.globl	oldContext
	.p2align	4
oldContext:
	.zero	200
	.size	oldContext, 200

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SEGV SIGNAL handler: %x\n"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FPE SIGNAL handler: %x\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"main::exit\n"
	.size	.L.str.2, 12


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
