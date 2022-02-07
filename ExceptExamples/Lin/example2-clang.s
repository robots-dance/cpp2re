	.text
	.file	"example2.cpp"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	leaq	-24(%rbp), %rdi
	callq	_ZN9BlueClassC2Ev
.Ltmp1:
	jmp	.LBB0_1
.LBB0_1:
.Ltmp3:
	leaq	-48(%rbp), %rdi
	callq	_ZN10GreenClassC2Ev
.Ltmp4:
	jmp	.LBB0_2
.LBB0_2:
.Ltmp6:
	leaq	-56(%rbp), %rdi
	callq	_ZN8RedClassC2Ev
.Ltmp7:
	jmp	.LBB0_3
.LBB0_3:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rdi
.Ltmp9:
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN12SubExceptionC2Ev
.Ltmp10:
	jmp	.LBB0_4
.LBB0_4:
.Ltmp12:
	movl	$_ZTI12SubException, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_throw
.Ltmp13:
	jmp	.LBB0_36
.LBB0_5:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_29
.LBB0_6:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_20
.LBB0_7:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_11
.LBB0_8:
.Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB0_10
.LBB0_9:
.Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
.LBB0_10:
	leaq	-56(%rbp), %rdi
	callq	_ZN8RedClassD2Ev
.LBB0_11:
	movl	-36(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_19
# %bb.12:
	movq	-32(%rbp), %rdi
	callq	__cxa_begin_catch
	movups	(%rax), %xmm0
	movaps	%xmm0, -80(%rbp)
.Ltmp15:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp16:
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_13
.LBB0_13:
.Ltmp20:
	callq	__cxa_end_catch
.Ltmp21:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	leaq	-48(%rbp), %rdi
	callq	_ZN10GreenClassD2Ev
	jmp	.LBB0_24
.LBB0_16:
.Ltmp17:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
.Ltmp18:
	callq	__cxa_end_catch
.Ltmp19:
	jmp	.LBB0_18
.LBB0_17:
.Ltmp22:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	leaq	-48(%rbp), %rdi
	callq	_ZN10GreenClassD2Ev
.LBB0_20:
	movl	-36(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_28
# %bb.21:
	movq	-32(%rbp), %rdi
	callq	__cxa_begin_catch
	movb	(%rax), %cl
	movb	%cl, -88(%rbp)
.Ltmp23:
	movl	$.L.str.1, %edx
	movl	%edx, %edi
	xorl	%edx, %edx
	movb	%dl, %cl
	movb	%cl, %al
	callq	printf
.Ltmp24:
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB0_22
.LBB0_22:
.Ltmp28:
	callq	__cxa_end_catch
.Ltmp29:
	jmp	.LBB0_23
.LBB0_23:
	jmp	.LBB0_24
.LBB0_24:
	leaq	-24(%rbp), %rdi
	callq	_ZN9BlueClassD2Ev
	jmp	.LBB0_31
.LBB0_25:
.Ltmp25:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
.Ltmp26:
	callq	__cxa_end_catch
.Ltmp27:
	jmp	.LBB0_27
.LBB0_26:
.Ltmp30:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
	jmp	.LBB0_28
.LBB0_27:
	jmp	.LBB0_28
.LBB0_28:
	leaq	-24(%rbp), %rdi
	callq	_ZN9BlueClassD2Ev
.LBB0_29:
	movq	-32(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp31:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp32:
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jmp	.LBB0_30
.LBB0_30:
	callq	__cxa_end_catch
.LBB0_31:
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.LBB0_32:
.Ltmp33:
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	movl	%ecx, -36(%rbp)
.Ltmp34:
	callq	__cxa_end_catch
.Ltmp35:
	jmp	.LBB0_33
.LBB0_33:
	jmp	.LBB0_34
.LBB0_34:
	movq	-32(%rbp), %rdi
	callq	_Unwind_Resume
.LBB0_35:
.Ltmp36:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -120(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB0_36:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.ascii	"\214\002"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\367\001"              # Call site table length
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 1 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	1                       #   On action: 1
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	3                       #   On action: 2
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	5                       #   On action: 3
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp9-.Ltmp7           #   Call between .Ltmp7 and .Ltmp9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp10-.Ltmp9          #   Call between .Ltmp9 and .Ltmp10
	.long	.Ltmp11-.Lfunc_begin0   #     jumps to .Ltmp11
	.byte	5                       #   On action: 3
	.long	.Ltmp12-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp13-.Ltmp12         #   Call between .Ltmp12 and .Ltmp13
	.long	.Ltmp14-.Lfunc_begin0   #     jumps to .Ltmp14
	.byte	5                       #   On action: 3
	.long	.Ltmp13-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Ltmp15-.Ltmp13         #   Call between .Ltmp13 and .Ltmp15
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin0   # >> Call Site 8 <<
	.long	.Ltmp16-.Ltmp15         #   Call between .Ltmp15 and .Ltmp16
	.long	.Ltmp17-.Lfunc_begin0   #     jumps to .Ltmp17
	.byte	3                       #   On action: 2
	.long	.Ltmp20-.Lfunc_begin0   # >> Call Site 9 <<
	.long	.Ltmp21-.Ltmp20         #   Call between .Ltmp20 and .Ltmp21
	.long	.Ltmp22-.Lfunc_begin0   #     jumps to .Ltmp22
	.byte	3                       #   On action: 2
	.long	.Ltmp18-.Lfunc_begin0   # >> Call Site 10 <<
	.long	.Ltmp19-.Ltmp18         #   Call between .Ltmp18 and .Ltmp19
	.long	.Ltmp36-.Lfunc_begin0   #     jumps to .Ltmp36
	.byte	1                       #   On action: 1
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 11 <<
	.long	.Ltmp23-.Ltmp19         #   Call between .Ltmp19 and .Ltmp23
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp23-.Lfunc_begin0   # >> Call Site 12 <<
	.long	.Ltmp24-.Ltmp23         #   Call between .Ltmp23 and .Ltmp24
	.long	.Ltmp25-.Lfunc_begin0   #     jumps to .Ltmp25
	.byte	1                       #   On action: 1
	.long	.Ltmp28-.Lfunc_begin0   # >> Call Site 13 <<
	.long	.Ltmp29-.Ltmp28         #   Call between .Ltmp28 and .Ltmp29
	.long	.Ltmp30-.Lfunc_begin0   #     jumps to .Ltmp30
	.byte	1                       #   On action: 1
	.long	.Ltmp26-.Lfunc_begin0   # >> Call Site 14 <<
	.long	.Ltmp27-.Ltmp26         #   Call between .Ltmp26 and .Ltmp27
	.long	.Ltmp36-.Lfunc_begin0   #     jumps to .Ltmp36
	.byte	1                       #   On action: 1
	.long	.Ltmp27-.Lfunc_begin0   # >> Call Site 15 <<
	.long	.Ltmp31-.Ltmp27         #   Call between .Ltmp27 and .Ltmp31
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp31-.Lfunc_begin0   # >> Call Site 16 <<
	.long	.Ltmp32-.Ltmp31         #   Call between .Ltmp31 and .Ltmp32
	.long	.Ltmp33-.Lfunc_begin0   #     jumps to .Ltmp33
	.byte	0                       #   On action: cleanup
	.long	.Ltmp32-.Lfunc_begin0   # >> Call Site 17 <<
	.long	.Ltmp34-.Ltmp32         #   Call between .Ltmp32 and .Ltmp34
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp34-.Lfunc_begin0   # >> Call Site 18 <<
	.long	.Ltmp35-.Ltmp34         #   Call between .Ltmp34 and .Ltmp35
	.long	.Ltmp36-.Lfunc_begin0   #     jumps to .Ltmp36
	.byte	1                       #   On action: 1
	.long	.Ltmp35-.Lfunc_begin0   # >> Call Site 19 <<
	.long	.Lfunc_end0-.Ltmp35     #   Call between .Ltmp35 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                     #   Continue to action 1
	.byte	3                       # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                     #   Continue to action 2
                                        # >> Catch TypeInfos <<
	.long	_ZTI15SubSubException   # TypeInfo 3
	.long	_ZTI9Exception          # TypeInfo 2
	.long	0                       # TypeInfo 1
	.p2align	2
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
.Lfunc_end1:
	.size	_ZN9BlueClassC2Ev, .Lfunc_end1-_ZN9BlueClassC2Ev
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
.Lfunc_end2:
	.size	_ZN10GreenClassC2Ev, .Lfunc_end2-_ZN10GreenClassC2Ev
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
.Lfunc_end3:
	.size	_ZN8RedClassC2Ev, .Lfunc_end3-_ZN8RedClassC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12SubExceptionC2Ev,"axG",@progbits,_ZN12SubExceptionC2Ev,comdat
	.weak	_ZN12SubExceptionC2Ev   # -- Begin function _ZN12SubExceptionC2Ev
	.p2align	4, 0x90
	.type	_ZN12SubExceptionC2Ev,@function
_ZN12SubExceptionC2Ev:                  # @_ZN12SubExceptionC2Ev
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
	movq	%rdi, %rax
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	_ZN9ExceptionC2Ev
	movq	-16(%rbp), %rax         # 8-byte Reload
	movl	$-1430532899, 4(%rax)   # imm = 0xAABBCCDD
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	_ZN12SubExceptionC2Ev, .Lfunc_end4-_ZN12SubExceptionC2Ev
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
	je	.LBB5_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB5_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	_ZN8RedClassD2Ev, .Lfunc_end5-_ZN8RedClassD2Ev
	.cfi_endproc
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
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
	je	.LBB7_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB7_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	_ZN10GreenClassD2Ev, .Lfunc_end7-_ZN10GreenClassD2Ev
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
	je	.LBB8_2
# %bb.1:
	movq	-16(%rbp), %rdi         # 8-byte Reload
	callq	_ZdaPv
.LBB8_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	_ZN9BlueClassD2Ev, .Lfunc_end8-_ZN9BlueClassD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9ExceptionC2Ev,"axG",@progbits,_ZN9ExceptionC2Ev,comdat
	.weak	_ZN9ExceptionC2Ev       # -- Begin function _ZN9ExceptionC2Ev
	.p2align	4, 0x90
	.type	_ZN9ExceptionC2Ev,@function
_ZN9ExceptionC2Ev:                      # @_ZN9ExceptionC2Ev
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	$1, (%rdi)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	_ZN9ExceptionC2Ev, .Lfunc_end9-_ZN9ExceptionC2Ev
	.cfi_endproc
                                        # -- End function
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

	.type	_ZTS15SubSubException,@object # @_ZTS15SubSubException
	.section	.rodata._ZTS15SubSubException,"aG",@progbits,_ZTS15SubSubException,comdat
	.weak	_ZTS15SubSubException
	.p2align	4
_ZTS15SubSubException:
	.asciz	"15SubSubException"
	.size	_ZTS15SubSubException, 18

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

	.type	_ZTI15SubSubException,@object # @_ZTI15SubSubException
	.section	.rodata._ZTI15SubSubException,"aG",@progbits,_ZTI15SubSubException,comdat
	.weak	_ZTI15SubSubException
	.p2align	4
_ZTI15SubSubException:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS15SubSubException
	.quad	_ZTI12SubException
	.size	_ZTI15SubSubException, 24

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SubSubException handler\n"
	.size	.L.str, 25

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Exception handler\n"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GLOBAL exception handler\n"
	.size	.L.str.2, 26


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
