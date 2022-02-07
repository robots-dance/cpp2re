	.text
	.file	"example3.cpp"
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_Z4funcv
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z4funcv                # -- Begin function _Z4funcv
	.p2align	4, 0x90
	.type	_Z4funcv,@function
_Z4funcv:                               # @_Z4funcv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
.Ltmp0:
	callq	_Z7subfuncv
.Ltmp1:
	jmp	.LBB1_1
.LBB1_1:
	jmp	.LBB1_6
.LBB1_2:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -8(%rbp)
	movl	%ecx, -12(%rbp)
# %bb.3:
	movl	-12(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_9
# %bb.4:
	movq	-8(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp3:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp4:
	movl	%eax, -28(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_5:
	callq	__cxa_end_catch
.LBB1_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB1_7:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -8(%rbp)
	movl	%ecx, -12(%rbp)
.Ltmp6:
	callq	__cxa_end_catch
.Ltmp7:
	jmp	.LBB1_8
.LBB1_8:
	jmp	.LBB1_9
.LBB1_9:
	movq	-8(%rbp), %rdi
	callq	_Unwind_Resume
.LBB1_10:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end1:
	.size	_Z4funcv, .Lfunc_end1-_Z4funcv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\334"                  # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	78                      # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	1                       #   On action: 1
	.long	.Ltmp1-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp3-.Ltmp1           #   Call between .Ltmp1 and .Ltmp3
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp6-.Ltmp4           #   Call between .Ltmp4 and .Ltmp6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	3                       #   On action: 2
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 6 <<
	.long	.Lfunc_end1-.Ltmp7      #   Call between .Ltmp7 and .Lfunc_end1
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 2
	.long	_ZTI12IntException      # TypeInfo 1
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z7subfuncv             # -- Begin function _Z7subfuncv
	.p2align	4, 0x90
	.type	_Z7subfuncv,@function
_Z7subfuncv:                            # @_Z7subfuncv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-8(%rbp), %rdi
	callq	_ZN11OrangeClassC2Ev
.Ltmp9:
	callq	_Z10subsubfuncv
.Ltmp10:
	jmp	.LBB2_1
.LBB2_1:
	jmp	.LBB2_7
.LBB2_2:
.Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
# %bb.3:
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_11
# %bb.4:
	movq	-16(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp12:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp13:
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_5:
.Ltmp18:
	callq	__cxa_end_catch
.Ltmp19:
	jmp	.LBB2_6
.LBB2_6:
	jmp	.LBB2_7
.LBB2_7:
	leaq	-8(%rbp), %rdi
	callq	_ZN11OrangeClassD2Ev
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB2_8:
.Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp15:
	callq	__cxa_end_catch
.Ltmp16:
	jmp	.LBB2_10
.LBB2_9:
.Ltmp20:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB2_11
.LBB2_10:
	jmp	.LBB2_11
.LBB2_11:
	leaq	-8(%rbp), %rdi
	callq	_ZN11OrangeClassD2Ev
# %bb.12:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.LBB2_13:
.Ltmp17:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Lfunc_end2:
	.size	_Z7subfuncv, .Lfunc_end2-_Z7subfuncv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\353\200"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	91                      # Call site table length
	.long	.Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.long	.Ltmp9-.Lfunc_begin1    #   Call between .Lfunc_begin1 and .Ltmp9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin1    # >> Call Site 2 <<
	.long	.Ltmp10-.Ltmp9          #   Call between .Ltmp9 and .Ltmp10
	.long	.Ltmp11-.Lfunc_begin1   #     jumps to .Ltmp11
	.byte	3                       #   On action: 2
	.long	.Ltmp10-.Lfunc_begin1   # >> Call Site 3 <<
	.long	.Ltmp12-.Ltmp10         #   Call between .Ltmp10 and .Ltmp12
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp12-.Lfunc_begin1   # >> Call Site 4 <<
	.long	.Ltmp13-.Ltmp12         #   Call between .Ltmp12 and .Ltmp13
	.long	.Ltmp14-.Lfunc_begin1   #     jumps to .Ltmp14
	.byte	0                       #   On action: cleanup
	.long	.Ltmp18-.Lfunc_begin1   # >> Call Site 5 <<
	.long	.Ltmp19-.Ltmp18         #   Call between .Ltmp18 and .Ltmp19
	.long	.Ltmp20-.Lfunc_begin1   #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin1   # >> Call Site 6 <<
	.long	.Ltmp16-.Ltmp15         #   Call between .Ltmp15 and .Ltmp16
	.long	.Ltmp17-.Lfunc_begin1   #     jumps to .Ltmp17
	.byte	5                       #   On action: 3
	.long	.Ltmp16-.Lfunc_begin1   # >> Call Site 7 <<
	.long	.Lfunc_end2-.Ltmp16     #   Call between .Ltmp16 and .Lfunc_end2
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	0                       # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                       #   No further actions
	.byte	1                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                     #   Continue to action 1
	.byte	2                       # >> Action Record 3 <<
                                        #   Catch TypeInfo 2
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 2
	.long	_ZTI12SepException      # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end3:
	.size	__clang_call_terminate, .Lfunc_end3-__clang_call_terminate
                                        # -- End function
	.section	.text._ZN11OrangeClassC2Ev,"axG",@progbits,_ZN11OrangeClassC2Ev,comdat
	.weak	_ZN11OrangeClassC2Ev    # -- Begin function _ZN11OrangeClassC2Ev
	.p2align	4, 0x90
	.type	_ZN11OrangeClassC2Ev,@function
_ZN11OrangeClassC2Ev:                   # @_ZN11OrangeClassC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$100, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	_Znam
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN11OrangeClassC2Ev, .Lfunc_end4-_ZN11OrangeClassC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z10subsubfuncv         # -- Begin function _Z10subsubfuncv
	.p2align	4, 0x90
	.type	_Z10subsubfuncv,@function
_Z10subsubfuncv:                        # @_Z10subsubfuncv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
.Ltmp21:
	leaq	-8(%rbp), %rdi
	callq	_ZN9BlueClassC2Ev
.Ltmp22:
	jmp	.LBB5_1
.LBB5_1:
.Ltmp24:
	leaq	-32(%rbp), %rdi
	callq	_ZN10GreenClassC2Ev
.Ltmp25:
	jmp	.LBB5_2
.LBB5_2:
.Ltmp27:
	leaq	-40(%rbp), %rdi
	callq	_ZN8RedClassC2Ev
.Ltmp28:
	jmp	.LBB5_3
.LBB5_3:
	movl	$1, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
.Ltmp30:
	movl	$_ZTI12IntException, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp31:
	jmp	.LBB5_34
.LBB5_4:
.Ltmp23:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB5_26
.LBB5_5:
.Ltmp26:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB5_17
.LBB5_6:
.Ltmp29:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB5_8
.LBB5_7:
.Ltmp32:
	leaq	-40(%rbp), %rdi
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	callq	_ZN8RedClassD2Ev
.LBB5_8:
	movl	-20(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_16
# %bb.9:
	movq	-16(%rbp), %rdi
	callq	__cxa_begin_catch
	movups	(%rax), %xmm0
	movaps	%xmm0, -64(%rbp)
.Ltmp33:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp34:
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB5_10
.LBB5_10:
.Ltmp38:
	callq	__cxa_end_catch
.Ltmp39:
	jmp	.LBB5_11
.LBB5_11:
	jmp	.LBB5_12
.LBB5_12:
	leaq	-32(%rbp), %rdi
	callq	_ZN10GreenClassD2Ev
	jmp	.LBB5_21
.LBB5_13:
.Ltmp35:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp36:
	callq	__cxa_end_catch
.Ltmp37:
	jmp	.LBB5_15
.LBB5_14:
.Ltmp40:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB5_16
.LBB5_15:
	jmp	.LBB5_16
.LBB5_16:
	leaq	-32(%rbp), %rdi
	callq	_ZN10GreenClassD2Ev
.LBB5_17:
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_25
# %bb.18:
	movq	-16(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)
.Ltmp41:
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp42:
	movl	%eax, -88(%rbp)         # 4-byte Spill
	jmp	.LBB5_19
.LBB5_19:
.Ltmp46:
	callq	__cxa_end_catch
.Ltmp47:
	jmp	.LBB5_20
.LBB5_20:
	jmp	.LBB5_21
.LBB5_21:
	leaq	-8(%rbp), %rdi
	callq	_ZN9BlueClassD2Ev
	jmp	.LBB5_29
.LBB5_22:
.Ltmp43:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp44:
	callq	__cxa_end_catch
.Ltmp45:
	jmp	.LBB5_24
.LBB5_23:
.Ltmp48:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
	jmp	.LBB5_25
.LBB5_24:
	jmp	.LBB5_25
.LBB5_25:
	leaq	-8(%rbp), %rdi
	callq	_ZN9BlueClassD2Ev
.LBB5_26:
	movl	-20(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_32
# %bb.27:
	movq	-16(%rbp), %rdi
	callq	__cxa_begin_catch
	movb	(%rax), %cl
	movb	%cl, -80(%rbp)
.Ltmp49:
	movl	$.L.str.4, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	movb	%dl, %cl
	movb	%cl, %al
	callq	printf
.Ltmp50:
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB5_28
.LBB5_28:
	callq	__cxa_end_catch
.LBB5_29:
	addq	$96, %rsp
	popq	%rbp
	retq
.LBB5_30:
.Ltmp51:
	movl	%edx, %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -20(%rbp)
.Ltmp52:
	callq	__cxa_end_catch
.Ltmp53:
	jmp	.LBB5_31
.LBB5_31:
	jmp	.LBB5_32
.LBB5_32:
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.LBB5_33:
.Ltmp54:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.LBB5_34:
.Lfunc_end5:
	.size	_Z10subsubfuncv, .Lfunc_end5-_Z10subsubfuncv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table5:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\211\202\200\200"      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\352\001"              # Call site table length
	.long	.Ltmp21-.Lfunc_begin2   # >> Call Site 1 <<
	.long	.Ltmp22-.Ltmp21         #   Call between .Ltmp21 and .Ltmp22
	.long	.Ltmp23-.Lfunc_begin2   #     jumps to .Ltmp23
	.byte	9                       #   On action: 5
	.long	.Ltmp24-.Lfunc_begin2   # >> Call Site 2 <<
	.long	.Ltmp25-.Ltmp24         #   Call between .Ltmp24 and .Ltmp25
	.long	.Ltmp26-.Lfunc_begin2   #     jumps to .Ltmp26
	.byte	5                       #   On action: 3
	.long	.Ltmp27-.Lfunc_begin2   # >> Call Site 3 <<
	.long	.Ltmp28-.Ltmp27         #   Call between .Ltmp27 and .Ltmp28
	.long	.Ltmp29-.Lfunc_begin2   #     jumps to .Ltmp29
	.byte	7                       #   On action: 4
	.long	.Ltmp28-.Lfunc_begin2   # >> Call Site 4 <<
	.long	.Ltmp30-.Ltmp28         #   Call between .Ltmp28 and .Ltmp30
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp30-.Lfunc_begin2   # >> Call Site 5 <<
	.long	.Ltmp31-.Ltmp30         #   Call between .Ltmp30 and .Ltmp31
	.long	.Ltmp32-.Lfunc_begin2   #     jumps to .Ltmp32
	.byte	7                       #   On action: 4
	.long	.Ltmp31-.Lfunc_begin2   # >> Call Site 6 <<
	.long	.Ltmp33-.Ltmp31         #   Call between .Ltmp31 and .Ltmp33
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp33-.Lfunc_begin2   # >> Call Site 7 <<
	.long	.Ltmp34-.Ltmp33         #   Call between .Ltmp33 and .Ltmp34
	.long	.Ltmp35-.Lfunc_begin2   #     jumps to .Ltmp35
	.byte	5                       #   On action: 3
	.long	.Ltmp38-.Lfunc_begin2   # >> Call Site 8 <<
	.long	.Ltmp39-.Ltmp38         #   Call between .Ltmp38 and .Ltmp39
	.long	.Ltmp40-.Lfunc_begin2   #     jumps to .Ltmp40
	.byte	5                       #   On action: 3
	.long	.Ltmp36-.Lfunc_begin2   # >> Call Site 9 <<
	.long	.Ltmp37-.Ltmp36         #   Call between .Ltmp36 and .Ltmp37
	.long	.Ltmp54-.Lfunc_begin2   #     jumps to .Ltmp54
	.byte	11                      #   On action: 6
	.long	.Ltmp37-.Lfunc_begin2   # >> Call Site 10 <<
	.long	.Ltmp41-.Ltmp37         #   Call between .Ltmp37 and .Ltmp41
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp41-.Lfunc_begin2   # >> Call Site 11 <<
	.long	.Ltmp42-.Ltmp41         #   Call between .Ltmp41 and .Ltmp42
	.long	.Ltmp43-.Lfunc_begin2   #     jumps to .Ltmp43
	.byte	3                       #   On action: 2
	.long	.Ltmp46-.Lfunc_begin2   # >> Call Site 12 <<
	.long	.Ltmp47-.Ltmp46         #   Call between .Ltmp46 and .Ltmp47
	.long	.Ltmp48-.Lfunc_begin2   #     jumps to .Ltmp48
	.byte	3                       #   On action: 2
	.long	.Ltmp44-.Lfunc_begin2   # >> Call Site 13 <<
	.long	.Ltmp45-.Ltmp44         #   Call between .Ltmp44 and .Ltmp45
	.long	.Ltmp54-.Lfunc_begin2   #     jumps to .Ltmp54
	.byte	11                      #   On action: 6
	.long	.Ltmp45-.Lfunc_begin2   # >> Call Site 14 <<
	.long	.Ltmp49-.Ltmp45         #   Call between .Ltmp45 and .Ltmp49
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp49-.Lfunc_begin2   # >> Call Site 15 <<
	.long	.Ltmp50-.Ltmp49         #   Call between .Ltmp49 and .Ltmp50
	.long	.Ltmp51-.Lfunc_begin2   #     jumps to .Ltmp51
	.byte	0                       #   On action: cleanup
	.long	.Ltmp50-.Lfunc_begin2   # >> Call Site 16 <<
	.long	.Ltmp52-.Ltmp50         #   Call between .Ltmp50 and .Ltmp52
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp52-.Lfunc_begin2   # >> Call Site 17 <<
	.long	.Ltmp53-.Ltmp52         #   Call between .Ltmp52 and .Ltmp53
	.long	.Ltmp54-.Lfunc_begin2   #     jumps to .Ltmp54
	.byte	11                      #   On action: 6
	.long	.Ltmp53-.Lfunc_begin2   # >> Call Site 18 <<
	.long	.Lfunc_end5-.Ltmp53     #   Call between .Ltmp53 and .Lfunc_end5
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	0                       # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                       #   No further actions
	.byte	1                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 1
	.byte	125                     #   Continue to action 1
	.byte	2                       # >> Action Record 3 <<
                                        #   Catch TypeInfo 2
	.byte	125                     #   Continue to action 2
	.byte	3                       # >> Action Record 4 <<
                                        #   Catch TypeInfo 3
	.byte	125                     #   Continue to action 3
	.byte	1                       # >> Action Record 5 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	4                       # >> Action Record 6 <<
                                        #   Catch TypeInfo 4
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 4
	.long	_ZTI15SubSubException   # TypeInfo 3
	.long	_ZTI12SubException      # TypeInfo 2
	.long	_ZTI9Exception          # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZN11OrangeClassD2Ev,"axG",@progbits,_ZN11OrangeClassD2Ev,comdat
	.weak	_ZN11OrangeClassD2Ev    # -- Begin function _ZN11OrangeClassD2Ev
	.p2align	4, 0x90
	.type	_ZN11OrangeClassD2Ev,@function
_ZN11OrangeClassD2Ev:                   # @_ZN11OrangeClassD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB6_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB6_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	_ZN11OrangeClassD2Ev, .Lfunc_end6-_ZN11OrangeClassD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9BlueClassC2Ev,"axG",@progbits,_ZN9BlueClassC2Ev,comdat
	.weak	_ZN9BlueClassC2Ev       # -- Begin function _ZN9BlueClassC2Ev
	.p2align	4, 0x90
	.type	_ZN9BlueClassC2Ev,@function
_ZN9BlueClassC2Ev:                      # @_ZN9BlueClassC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$12, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	_Znam
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZN9BlueClassC2Ev, .Lfunc_end7-_ZN9BlueClassC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10GreenClassC2Ev,"axG",@progbits,_ZN10GreenClassC2Ev,comdat
	.weak	_ZN10GreenClassC2Ev     # -- Begin function _ZN10GreenClassC2Ev
	.p2align	4, 0x90
	.type	_ZN10GreenClassC2Ev,@function
_ZN10GreenClassC2Ev:                    # @_ZN10GreenClassC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$2021, %eax             # imm = 0x7E5
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	_Znam
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_ZN10GreenClassC2Ev, .Lfunc_end8-_ZN10GreenClassC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8RedClassC2Ev,"axG",@progbits,_ZN8RedClassC2Ev,comdat
	.weak	_ZN8RedClassC2Ev        # -- Begin function _ZN8RedClassC2Ev
	.p2align	4, 0x90
	.type	_ZN8RedClassC2Ev,@function
_ZN8RedClassC2Ev:                       # @_ZN8RedClassC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$365, %eax              # imm = 0x16D
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	_Znam
	movq	-16(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_ZN8RedClassC2Ev, .Lfunc_end9-_ZN8RedClassC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8RedClassD2Ev,"axG",@progbits,_ZN8RedClassD2Ev,comdat
	.weak	_ZN8RedClassD2Ev        # -- Begin function _ZN8RedClassD2Ev
	.p2align	4, 0x90
	.type	_ZN8RedClassD2Ev,@function
_ZN8RedClassD2Ev:                       # @_ZN8RedClassD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB10_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB10_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	_ZN8RedClassD2Ev, .Lfunc_end10-_ZN8RedClassD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10GreenClassD2Ev,"axG",@progbits,_ZN10GreenClassD2Ev,comdat
	.weak	_ZN10GreenClassD2Ev     # -- Begin function _ZN10GreenClassD2Ev
	.p2align	4, 0x90
	.type	_ZN10GreenClassD2Ev,@function
_ZN10GreenClassD2Ev:                    # @_ZN10GreenClassD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB11_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB11_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_ZN10GreenClassD2Ev, .Lfunc_end11-_ZN10GreenClassD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9BlueClassD2Ev,"axG",@progbits,_ZN9BlueClassD2Ev,comdat
	.weak	_ZN9BlueClassD2Ev       # -- Begin function _ZN9BlueClassD2Ev
	.p2align	4, 0x90
	.type	_ZN9BlueClassD2Ev,@function
_ZN9BlueClassD2Ev:                      # @_ZN9BlueClassD2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	cmpq	$0, %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	je	.LBB12_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB12_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_ZN9BlueClassD2Ev, .Lfunc_end12-_ZN9BlueClassD2Ev
	.cfi_endproc
                                        # -- End function
	.type	_ZTS12IntException,@object # @_ZTS12IntException
	.section	.rodata._ZTS12IntException,"aG",@progbits,_ZTS12IntException,comdat
	.weak	_ZTS12IntException
_ZTS12IntException:
	.asciz	"12IntException"
	.size	_ZTS12IntException, 15

	.type	_ZTI12IntException,@object # @_ZTI12IntException
	.section	.rodata._ZTI12IntException,"aG",@progbits,_ZTI12IntException,comdat
	.weak	_ZTI12IntException
	.p2align	3
_ZTI12IntException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12IntException
	.size	_ZTI12IntException, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"IntException handler\n"
	.size	.L.str, 22

	.type	_ZTS12SepException,@object # @_ZTS12SepException
	.section	.rodata._ZTS12SepException,"aG",@progbits,_ZTS12SepException,comdat
	.weak	_ZTS12SepException
_ZTS12SepException:
	.asciz	"12SepException"
	.size	_ZTS12SepException, 15

	.type	_ZTI12SepException,@object # @_ZTI12SepException
	.section	.rodata._ZTI12SepException,"aG",@progbits,_ZTI12SepException,comdat
	.weak	_ZTI12SepException
	.p2align	3
_ZTI12SepException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12SepException
	.size	_ZTI12SepException, 16

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"SepException handler\n"
	.size	.L.str.1, 22

	.type	_ZTS9Exception,@object  # @_ZTS9Exception
	.section	.rodata._ZTS9Exception,"aG",@progbits,_ZTS9Exception,comdat
	.weak	_ZTS9Exception
_ZTS9Exception:
	.asciz	"9Exception"
	.size	_ZTS9Exception, 11

	.type	_ZTI9Exception,@object  # @_ZTI9Exception
	.section	.rodata._ZTI9Exception,"aG",@progbits,_ZTI9Exception,comdat
	.weak	_ZTI9Exception
	.p2align	3
_ZTI9Exception:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS9Exception
	.size	_ZTI9Exception, 16

	.type	_ZTS12SubException,@object # @_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",@progbits,_ZTS12SubException,comdat
	.weak	_ZTS12SubException
_ZTS12SubException:
	.asciz	"12SubException"
	.size	_ZTS12SubException, 15

	.type	_ZTI12SubException,@object # @_ZTI12SubException
	.section	.rodata._ZTI12SubException,"aG",@progbits,_ZTI12SubException,comdat
	.weak	_ZTI12SubException
	.p2align	4
_ZTI12SubException:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS12SubException
	.quad	_ZTI9Exception
	.size	_ZTI12SubException, 24

	.type	_ZTS15SubSubException,@object # @_ZTS15SubSubException
	.section	.rodata._ZTS15SubSubException,"aG",@progbits,_ZTS15SubSubException,comdat
	.weak	_ZTS15SubSubException
	.p2align	4
_ZTS15SubSubException:
	.asciz	"15SubSubException"
	.size	_ZTS15SubSubException, 18

	.type	_ZTI15SubSubException,@object # @_ZTI15SubSubException
	.section	.rodata._ZTI15SubSubException,"aG",@progbits,_ZTI15SubSubException,comdat
	.weak	_ZTI15SubSubException
	.p2align	4
_ZTI15SubSubException:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS15SubSubException
	.quad	_ZTI12SubException
	.size	_ZTI15SubSubException, 24

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"SubSubException handler\n"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Exception handler\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"GLOBAL exception handler\n"
	.size	.L.str.4, 26


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
