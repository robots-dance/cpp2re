	.text
	.file	"example5.cpp"
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
	subq	$176, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$4, %edi
                                        # kill: def %rdi killed %edi
	callq	__cxa_allocate_exception
	movl	$666, (%rax)            # imm = 0x29A
.Ltmp0:
	movl	$_ZTIi, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp1:
	jmp	.LBB0_61
.LBB0_1:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.2:
	movl	-28(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_59
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movl	(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movl	-32(%rbp), %esi
.Ltmp3:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp4:
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_4
.LBB0_4:
	callq	__cxa_end_catch
# %bb.5:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movabsq	$4607632778762754458, %rdi # imm = 0x3FF199999999999A
	movq	%rdi, (%rax)
.Ltmp6:
	movl	$_ZTId, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp7:
	jmp	.LBB0_61
.LBB0_6:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_7:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.8:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jne	.LBB0_12
# %bb.9:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp12:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp13:
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_10:
	callq	__cxa_end_catch
.LBB0_11:
	movl	$4, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movl	$1066192077, (%rax)     # imm = 0x3F8CCCCD
.Ltmp15:
	movl	$_ZTIf, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp16:
	jmp	.LBB0_61
.LBB0_12:
	movl	$2, %eax
	movl	-104(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_59
# %bb.13:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.Ltmp9:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp10:
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB0_14
.LBB0_14:
	callq	__cxa_end_catch
	jmp	.LBB0_11
.LBB0_15:
.Ltmp11:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_16:
.Ltmp14:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_17:
.Ltmp17:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.18:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	jne	.LBB0_22
# %bb.19:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp21:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp22:
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_20
.LBB0_20:
	callq	__cxa_end_catch
.LBB0_21:
	movl	$4, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movl	$1066192077, (%rax)     # imm = 0x3F8CCCCD
.Ltmp24:
	movl	$_ZTIf, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp25:
	jmp	.LBB0_61
.LBB0_22:
	movl	$2, %eax
	movl	-116(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_59
# %bb.23:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
.Ltmp18:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp19:
	movl	%eax, -124(%rbp)        # 4-byte Spill
	jmp	.LBB0_24
.LBB0_24:
	callq	__cxa_end_catch
	jmp	.LBB0_21
.LBB0_25:
.Ltmp20:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_26:
.Ltmp23:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_27:
.Ltmp26:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.28:
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jne	.LBB0_32
# %bb.29:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0        # xmm0 = mem[0],zero
.Ltmp30:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp31:
	movl	%eax, -132(%rbp)        # 4-byte Spill
	jmp	.LBB0_30
.LBB0_30:
	callq	__cxa_end_catch
.LBB0_31:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	$.L.str.3, (%rax)
.Ltmp33:
	movl	$_ZTIPKc, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp34:
	jmp	.LBB0_61
.LBB0_32:
	movl	$3, %eax
	movl	-128(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_59
# %bb.33:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movss	(%rax), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -64(%rbp)
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp27:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	movb	$1, %al
	callq	printf
.Ltmp28:
	movl	%eax, -136(%rbp)        # 4-byte Spill
	jmp	.LBB0_34
.LBB0_34:
	callq	__cxa_end_catch
	jmp	.LBB0_31
.LBB0_35:
.Ltmp29:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_36:
.Ltmp32:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_37:
.Ltmp35:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.38:
	movl	-28(%rbp), %eax
	movl	$5, %ecx
	cmpl	%ecx, %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jne	.LBB0_42
# %bb.39:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -88(%rbp)
.Ltmp39:
	movl	$.L.str.5, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp40:
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB0_40
.LBB0_40:
	callq	__cxa_end_catch
.LBB0_41:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	$.L.str.6, (%rax)
.Ltmp44:
	movl	$_ZTIPKc, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp45:
	jmp	.LBB0_61
.LBB0_42:
	movl	$4, %eax
	movl	-140(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jne	.LBB0_59
# %bb.43:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rsi
.Ltmp36:
	movl	$.L.str.4, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp37:
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB0_44
.LBB0_44:
	callq	__cxa_end_catch
	jmp	.LBB0_41
.LBB0_45:
.Ltmp38:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_59
.LBB0_46:
.Ltmp41:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp42:
	callq	__cxa_end_catch
.Ltmp43:
	jmp	.LBB0_47
.LBB0_47:
	jmp	.LBB0_59
.LBB0_48:
.Ltmp46:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.49:
	movl	-28(%rbp), %eax
	movl	$5, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_53
# %bb.50:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -96(%rbp)
.Ltmp52:
	movl	$.L.str.5, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp53:
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB0_51
.LBB0_51:
	callq	__cxa_end_catch
.LBB0_52:
	xorl	%eax, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.LBB0_53:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp47:
	movl	$.L.str.7, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp48:
	movl	%eax, -164(%rbp)        # 4-byte Spill
	jmp	.LBB0_54
.LBB0_54:
	callq	__cxa_end_catch
	jmp	.LBB0_52
.LBB0_55:
.Ltmp49:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp50:
	callq	__cxa_end_catch
.Ltmp51:
	jmp	.LBB0_56
.LBB0_56:
	jmp	.LBB0_59
.LBB0_57:
.Ltmp54:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp55:
	callq	__cxa_end_catch
.Ltmp56:
	jmp	.LBB0_58
.LBB0_58:
	jmp	.LBB0_59
.LBB0_59:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.LBB0_60:
.Ltmp57:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -168(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB0_61:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.ascii	"\250\004"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\373\003"              # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	1                       #   On action: 1
	.long	.Ltmp1-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp1           #   Call between .Ltmp1 and .Ltmp3
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp6-.Ltmp4           #   Call between .Ltmp4 and .Ltmp6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 6 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	5                       #   On action: 3
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 7 <<
	.long	.Ltmp12-.Ltmp7          #   Call between .Ltmp7 and .Ltmp12
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp12-.Lfunc_begin0   # >> Call Site 8 <<
	.long	.Ltmp13-.Ltmp12         #   Call between .Ltmp12 and .Ltmp13
	.long	.Ltmp14-.Lfunc_begin0   #     jumps to .Ltmp14
	.byte	0                       #   On action: cleanup
	.long	.Ltmp13-.Lfunc_begin0   # >> Call Site 9 <<
	.long	.Ltmp15-.Ltmp13         #   Call between .Ltmp13 and .Ltmp15
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin0   # >> Call Site 10 <<
	.long	.Ltmp16-.Ltmp15         #   Call between .Ltmp15 and .Ltmp16
	.long	.Ltmp17-.Lfunc_begin0   #     jumps to .Ltmp17
	.byte	5                       #   On action: 3
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 11 <<
	.long	.Ltmp9-.Ltmp16          #   Call between .Ltmp16 and .Ltmp9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 12 <<
	.long	.Ltmp10-.Ltmp9          #   Call between .Ltmp9 and .Ltmp10
	.long	.Ltmp11-.Lfunc_begin0   #     jumps to .Ltmp11
	.byte	0                       #   On action: cleanup
	.long	.Ltmp10-.Lfunc_begin0   # >> Call Site 13 <<
	.long	.Ltmp21-.Ltmp10         #   Call between .Ltmp10 and .Ltmp21
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp21-.Lfunc_begin0   # >> Call Site 14 <<
	.long	.Ltmp22-.Ltmp21         #   Call between .Ltmp21 and .Ltmp22
	.long	.Ltmp23-.Lfunc_begin0   #     jumps to .Ltmp23
	.byte	0                       #   On action: cleanup
	.long	.Ltmp22-.Lfunc_begin0   # >> Call Site 15 <<
	.long	.Ltmp24-.Ltmp22         #   Call between .Ltmp22 and .Ltmp24
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp24-.Lfunc_begin0   # >> Call Site 16 <<
	.long	.Ltmp25-.Ltmp24         #   Call between .Ltmp24 and .Ltmp25
	.long	.Ltmp26-.Lfunc_begin0   #     jumps to .Ltmp26
	.byte	9                       #   On action: 5
	.long	.Ltmp25-.Lfunc_begin0   # >> Call Site 17 <<
	.long	.Ltmp18-.Ltmp25         #   Call between .Ltmp25 and .Ltmp18
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp18-.Lfunc_begin0   # >> Call Site 18 <<
	.long	.Ltmp19-.Ltmp18         #   Call between .Ltmp18 and .Ltmp19
	.long	.Ltmp20-.Lfunc_begin0   #     jumps to .Ltmp20
	.byte	0                       #   On action: cleanup
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 19 <<
	.long	.Ltmp30-.Ltmp19         #   Call between .Ltmp19 and .Ltmp30
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp30-.Lfunc_begin0   # >> Call Site 20 <<
	.long	.Ltmp31-.Ltmp30         #   Call between .Ltmp30 and .Ltmp31
	.long	.Ltmp32-.Lfunc_begin0   #     jumps to .Ltmp32
	.byte	0                       #   On action: cleanup
	.long	.Ltmp31-.Lfunc_begin0   # >> Call Site 21 <<
	.long	.Ltmp33-.Ltmp31         #   Call between .Ltmp31 and .Ltmp33
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp33-.Lfunc_begin0   # >> Call Site 22 <<
	.long	.Ltmp34-.Ltmp33         #   Call between .Ltmp33 and .Ltmp34
	.long	.Ltmp35-.Lfunc_begin0   #     jumps to .Ltmp35
	.byte	13                      #   On action: 7
	.long	.Ltmp34-.Lfunc_begin0   # >> Call Site 23 <<
	.long	.Ltmp27-.Ltmp34         #   Call between .Ltmp34 and .Ltmp27
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp27-.Lfunc_begin0   # >> Call Site 24 <<
	.long	.Ltmp28-.Ltmp27         #   Call between .Ltmp27 and .Ltmp28
	.long	.Ltmp29-.Lfunc_begin0   #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.long	.Ltmp28-.Lfunc_begin0   # >> Call Site 25 <<
	.long	.Ltmp39-.Ltmp28         #   Call between .Ltmp28 and .Ltmp39
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp39-.Lfunc_begin0   # >> Call Site 26 <<
	.long	.Ltmp40-.Ltmp39         #   Call between .Ltmp39 and .Ltmp40
	.long	.Ltmp41-.Lfunc_begin0   #     jumps to .Ltmp41
	.byte	0                       #   On action: cleanup
	.long	.Ltmp40-.Lfunc_begin0   # >> Call Site 27 <<
	.long	.Ltmp44-.Ltmp40         #   Call between .Ltmp40 and .Ltmp44
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp44-.Lfunc_begin0   # >> Call Site 28 <<
	.long	.Ltmp45-.Ltmp44         #   Call between .Ltmp44 and .Ltmp45
	.long	.Ltmp46-.Lfunc_begin0   #     jumps to .Ltmp46
	.byte	17                      #   On action: 9
	.long	.Ltmp45-.Lfunc_begin0   # >> Call Site 29 <<
	.long	.Ltmp36-.Ltmp45         #   Call between .Ltmp45 and .Ltmp36
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp36-.Lfunc_begin0   # >> Call Site 30 <<
	.long	.Ltmp37-.Ltmp36         #   Call between .Ltmp36 and .Ltmp37
	.long	.Ltmp38-.Lfunc_begin0   #     jumps to .Ltmp38
	.byte	0                       #   On action: cleanup
	.long	.Ltmp37-.Lfunc_begin0   # >> Call Site 31 <<
	.long	.Ltmp42-.Ltmp37         #   Call between .Ltmp37 and .Ltmp42
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp42-.Lfunc_begin0   # >> Call Site 32 <<
	.long	.Ltmp43-.Ltmp42         #   Call between .Ltmp42 and .Ltmp43
	.long	.Ltmp57-.Lfunc_begin0   #     jumps to .Ltmp57
	.byte	15                      #   On action: 8
	.long	.Ltmp43-.Lfunc_begin0   # >> Call Site 33 <<
	.long	.Ltmp52-.Ltmp43         #   Call between .Ltmp43 and .Ltmp52
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp52-.Lfunc_begin0   # >> Call Site 34 <<
	.long	.Ltmp53-.Ltmp52         #   Call between .Ltmp52 and .Ltmp53
	.long	.Ltmp54-.Lfunc_begin0   #     jumps to .Ltmp54
	.byte	0                       #   On action: cleanup
	.long	.Ltmp53-.Lfunc_begin0   # >> Call Site 35 <<
	.long	.Ltmp47-.Ltmp53         #   Call between .Ltmp53 and .Ltmp47
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp47-.Lfunc_begin0   # >> Call Site 36 <<
	.long	.Ltmp48-.Ltmp47         #   Call between .Ltmp47 and .Ltmp48
	.long	.Ltmp49-.Lfunc_begin0   #     jumps to .Ltmp49
	.byte	0                       #   On action: cleanup
	.long	.Ltmp48-.Lfunc_begin0   # >> Call Site 37 <<
	.long	.Ltmp50-.Ltmp48         #   Call between .Ltmp48 and .Ltmp50
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp50-.Lfunc_begin0   # >> Call Site 38 <<
	.long	.Ltmp56-.Ltmp50         #   Call between .Ltmp50 and .Ltmp56
	.long	.Ltmp57-.Lfunc_begin0   #     jumps to .Ltmp57
	.byte	15                      #   On action: 8
	.long	.Ltmp56-.Lfunc_begin0   # >> Call Site 39 <<
	.long	.Lfunc_end0-.Ltmp56     #   Call between .Ltmp56 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	0                       #   No further actions
	.byte	3                       # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                     #   Continue to action 2
	.byte	3                       # >> Action Record 4 <<
                                        #   Catch TypeInfo 3
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 5 <<
                                        #   Catch TypeInfo 2
	.byte	125                     #   Continue to action 4
	.byte	4                       # >> Action Record 6 <<
                                        #   Catch TypeInfo 4
	.byte	0                       #   No further actions
	.byte	5                       # >> Action Record 7 <<
                                        #   Catch TypeInfo 5
	.byte	125                     #   Continue to action 6
	.byte	6                       # >> Action Record 8 <<
                                        #   Catch TypeInfo 6
	.byte	0                       #   No further actions
	.byte	5                       # >> Action Record 9 <<
                                        #   Catch TypeInfo 5
	.byte	125                     #   Continue to action 8
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 6
	.long	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # TypeInfo 5
	.long	_ZTIPKc                 # TypeInfo 4
	.long	_ZTIf                   # TypeInfo 3
	.long	_ZTId                   # TypeInfo 2
	.long	_ZTIi                   # TypeInfo 1
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Integer exception handler: %d\n"
	.size	.L.str, 31

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Double exception handler: %f\n"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Float exception handler: %f\n"
	.size	.L.str.2, 29

	.type	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4
_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"
	.size	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 53

	.type	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.rodata._ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	3
_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.size	_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 16

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"My Exception"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CHARPTR exception handler: %s\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"STDSTRING exception handler\n"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"My Exception Next"
	.size	.L.str.6, 18

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Global exception handler\n"
	.size	.L.str.7, 26


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
