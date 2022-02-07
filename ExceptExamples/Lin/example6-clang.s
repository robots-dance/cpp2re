	.text
	.file	"example6.cpp"
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
	subq	$208, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$8, %edi
                                        # kill: def %rdi killed %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rsi
.Ltmp0:
	movl	$1, %ecx
	movl	%ecx, %edi
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	_Znwm
.Ltmp1:
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB0_1
.LBB0_1:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp3:
	movl	$_ZTIP11MyException, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def %rdx killed %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_throw
.Ltmp4:
	jmp	.LBB0_43
.LBB0_2:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB0_4
.LBB0_3:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB0_4:
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_9
# %bb.5:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp11:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp12:
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB0_6
.LBB0_6:
	callq	__cxa_end_catch
.LBB0_7:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rdi
.Ltmp16:
	movl	$1, %ecx
	movl	%ecx, %edx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	_Znwm
.Ltmp17:
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB0_8
.LBB0_8:
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp19:
	movl	$_ZTIP11MyException, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def %rdx killed %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	__cxa_throw
.Ltmp20:
	jmp	.LBB0_43
.LBB0_9:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp6:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp7:
	movl	%eax, -140(%rbp)        # 4-byte Spill
	jmp	.LBB0_10
.LBB0_10:
	callq	__cxa_end_catch
	jmp	.LBB0_7
.LBB0_11:
.Ltmp8:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp9:
	callq	__cxa_end_catch
.Ltmp10:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_41
.LBB0_13:
.Ltmp13:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp14:
	callq	__cxa_end_catch
.Ltmp15:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_41
.LBB0_15:
.Ltmp18:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-112(%rbp), %rdi        # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB0_17
.LBB0_16:
.Ltmp21:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB0_17:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_41
# %bb.18:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -40(%rbp)
.Ltmp22:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp23:
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB0_19
.LBB0_19:
	callq	__cxa_end_catch
# %bb.20:
	movl	$8, %eax
	movl	%eax, %edi
	callq	__cxa_allocate_exception
	movq	%rax, %rdi
.Ltmp25:
	movl	$333, %ecx              # imm = 0x14D
	movl	%ecx, %edx
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	_Znam
.Ltmp26:
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB0_21
.LBB0_21:
	movq	-160(%rbp), %rax        # 8-byte Reload
	movq	-168(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, (%rax)
.Ltmp28:
	movl	$_ZTIP11MyException, %edx
	movl	%edx, %esi
	xorl	%edx, %edx
                                        # kill: def %rdx killed %edx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	__cxa_throw
.Ltmp29:
	jmp	.LBB0_43
.LBB0_22:
.Ltmp24:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_41
.LBB0_23:
.Ltmp27:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-152(%rbp), %rdi        # 8-byte Reload
	callq	__cxa_free_exception
	jmp	.LBB0_25
.LBB0_24:
.Ltmp30:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.LBB0_25:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_41
# %bb.26:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -48(%rbp)
.Ltmp31:
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp32:
	movl	%eax, -172(%rbp)        # 4-byte Spill
	jmp	.LBB0_27
.LBB0_27:
	callq	__cxa_end_catch
# %bb.28:
.Ltmp34:
	movl	$5328, %eax             # imm = 0x14D0
	movl	%eax, %edi
	callq	_Znam
.Ltmp35:
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB0_29
.LBB0_29:
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	movl	$8, %ecx
	movl	%ecx, %edi
	callq	__cxa_allocate_exception
	movq	-56(%rbp), %rdi
	movq	%rdi, (%rax)
.Ltmp36:
	movl	$_ZTIPP11MyException, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp37:
	jmp	.LBB0_43
.LBB0_30:
.Ltmp33:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
	jmp	.LBB0_41
.LBB0_31:
.Ltmp38:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.32:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_36
# %bb.33:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -64(%rbp)
.Ltmp45:
	movl	$.L.str.3, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
.Ltmp46:
	movl	%eax, -188(%rbp)        # 4-byte Spill
	jmp	.LBB0_34
.LBB0_34:
	callq	__cxa_end_catch
.LBB0_35:
	xorl	%eax, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
.LBB0_36:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp39:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp40:
	movl	%eax, -204(%rbp)        # 4-byte Spill
	jmp	.LBB0_37
.LBB0_37:
	callq	__cxa_end_catch
	jmp	.LBB0_35
.LBB0_38:
.Ltmp41:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp42:
	callq	__cxa_end_catch
.Ltmp43:
	jmp	.LBB0_39
.LBB0_39:
	jmp	.LBB0_41
.LBB0_40:
.Ltmp47:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	callq	__cxa_end_catch
.LBB0_41:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.LBB0_42:
.Ltmp44:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -208(%rbp)        # 4-byte Spill
	callq	__clang_call_terminate
.LBB0_43:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\241\203\200\200"      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\206\003"              # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	7                       #   On action: 4
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	7                       #   On action: 4
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp11-.Ltmp4          #   Call between .Ltmp4 and .Ltmp11
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp11-.Lfunc_begin0   # >> Call Site 5 <<
	.long	.Ltmp12-.Ltmp11         #   Call between .Ltmp11 and .Ltmp12
	.long	.Ltmp13-.Lfunc_begin0   #     jumps to .Ltmp13
	.byte	0                       #   On action: cleanup
	.long	.Ltmp12-.Lfunc_begin0   # >> Call Site 6 <<
	.long	.Ltmp16-.Ltmp12         #   Call between .Ltmp12 and .Ltmp16
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 7 <<
	.long	.Ltmp17-.Ltmp16         #   Call between .Ltmp16 and .Ltmp17
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	3                       #   On action: 2
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 8 <<
	.long	.Ltmp20-.Ltmp19         #   Call between .Ltmp19 and .Ltmp20
	.long	.Ltmp21-.Lfunc_begin0   #     jumps to .Ltmp21
	.byte	11                      #   On action: 6
	.long	.Ltmp20-.Lfunc_begin0   # >> Call Site 9 <<
	.long	.Ltmp6-.Ltmp20          #   Call between .Ltmp20 and .Ltmp6
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 10 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin0    #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 11 <<
	.long	.Ltmp9-.Ltmp7           #   Call between .Ltmp7 and .Ltmp9
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp9-.Lfunc_begin0    # >> Call Site 12 <<
	.long	.Ltmp15-.Ltmp9          #   Call between .Ltmp9 and .Ltmp15
	.long	.Ltmp44-.Lfunc_begin0   #     jumps to .Ltmp44
	.byte	5                       #   On action: 3
	.long	.Ltmp15-.Lfunc_begin0   # >> Call Site 13 <<
	.long	.Ltmp22-.Ltmp15         #   Call between .Ltmp15 and .Ltmp22
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp22-.Lfunc_begin0   # >> Call Site 14 <<
	.long	.Ltmp23-.Ltmp22         #   Call between .Ltmp22 and .Ltmp23
	.long	.Ltmp24-.Lfunc_begin0   #     jumps to .Ltmp24
	.byte	0                       #   On action: cleanup
	.long	.Ltmp23-.Lfunc_begin0   # >> Call Site 15 <<
	.long	.Ltmp25-.Ltmp23         #   Call between .Ltmp23 and .Ltmp25
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp25-.Lfunc_begin0   # >> Call Site 16 <<
	.long	.Ltmp26-.Ltmp25         #   Call between .Ltmp25 and .Ltmp26
	.long	.Ltmp27-.Lfunc_begin0   #     jumps to .Ltmp27
	.byte	3                       #   On action: 2
	.long	.Ltmp28-.Lfunc_begin0   # >> Call Site 17 <<
	.long	.Ltmp29-.Ltmp28         #   Call between .Ltmp28 and .Ltmp29
	.long	.Ltmp30-.Lfunc_begin0   #     jumps to .Ltmp30
	.byte	11                      #   On action: 6
	.long	.Ltmp29-.Lfunc_begin0   # >> Call Site 18 <<
	.long	.Ltmp31-.Ltmp29         #   Call between .Ltmp29 and .Ltmp31
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp31-.Lfunc_begin0   # >> Call Site 19 <<
	.long	.Ltmp32-.Ltmp31         #   Call between .Ltmp31 and .Ltmp32
	.long	.Ltmp33-.Lfunc_begin0   #     jumps to .Ltmp33
	.byte	0                       #   On action: cleanup
	.long	.Ltmp32-.Lfunc_begin0   # >> Call Site 20 <<
	.long	.Ltmp34-.Ltmp32         #   Call between .Ltmp32 and .Ltmp34
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp34-.Lfunc_begin0   # >> Call Site 21 <<
	.long	.Ltmp35-.Ltmp34         #   Call between .Ltmp34 and .Ltmp35
	.long	.Ltmp38-.Lfunc_begin0   #     jumps to .Ltmp38
	.byte	9                       #   On action: 5
	.long	.Ltmp35-.Lfunc_begin0   # >> Call Site 22 <<
	.long	.Ltmp36-.Ltmp35         #   Call between .Ltmp35 and .Ltmp36
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp36-.Lfunc_begin0   # >> Call Site 23 <<
	.long	.Ltmp37-.Ltmp36         #   Call between .Ltmp36 and .Ltmp37
	.long	.Ltmp38-.Lfunc_begin0   #     jumps to .Ltmp38
	.byte	9                       #   On action: 5
	.long	.Ltmp37-.Lfunc_begin0   # >> Call Site 24 <<
	.long	.Ltmp45-.Ltmp37         #   Call between .Ltmp37 and .Ltmp45
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp45-.Lfunc_begin0   # >> Call Site 25 <<
	.long	.Ltmp46-.Ltmp45         #   Call between .Ltmp45 and .Ltmp46
	.long	.Ltmp47-.Lfunc_begin0   #     jumps to .Ltmp47
	.byte	0                       #   On action: cleanup
	.long	.Ltmp46-.Lfunc_begin0   # >> Call Site 26 <<
	.long	.Ltmp39-.Ltmp46         #   Call between .Ltmp46 and .Ltmp39
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp39-.Lfunc_begin0   # >> Call Site 27 <<
	.long	.Ltmp40-.Ltmp39         #   Call between .Ltmp39 and .Ltmp40
	.long	.Ltmp41-.Lfunc_begin0   #     jumps to .Ltmp41
	.byte	0                       #   On action: cleanup
	.long	.Ltmp40-.Lfunc_begin0   # >> Call Site 28 <<
	.long	.Ltmp42-.Ltmp40         #   Call between .Ltmp40 and .Ltmp42
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp42-.Lfunc_begin0   # >> Call Site 29 <<
	.long	.Ltmp43-.Ltmp42         #   Call between .Ltmp42 and .Ltmp43
	.long	.Ltmp44-.Lfunc_begin0   #     jumps to .Ltmp44
	.byte	5                       #   On action: 3
	.long	.Ltmp43-.Lfunc_begin0   # >> Call Site 30 <<
	.long	.Lfunc_end0-.Ltmp43     #   Call between .Ltmp43 and .Lfunc_end0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.byte	0                       # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                       #   No further actions
	.byte	3                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 3
	.byte	125                     #   Continue to action 1
	.byte	1                       # >> Action Record 3 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 4 <<
                                        #   Catch TypeInfo 2
	.byte	125                     #   Continue to action 3
	.byte	3                       # >> Action Record 5 <<
                                        #   Catch TypeInfo 3
	.byte	123                     #   Continue to action 3
	.byte	3                       # >> Action Record 6 <<
                                        #   Catch TypeInfo 3
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	_ZTIP11MyException      # TypeInfo 3
	.long	_ZTI11MyException       # TypeInfo 2
	.long	0                       # TypeInfo 1
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
	.type	_ZTS11MyException,@object # @_ZTS11MyException
	.section	.rodata._ZTS11MyException,"aG",@progbits,_ZTS11MyException,comdat
	.weak	_ZTS11MyException
_ZTS11MyException:
	.asciz	"11MyException"
	.size	_ZTS11MyException, 14

	.type	_ZTI11MyException,@object # @_ZTI11MyException
	.section	.rodata._ZTI11MyException,"aG",@progbits,_ZTI11MyException,comdat
	.weak	_ZTI11MyException
	.p2align	3
_ZTI11MyException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS11MyException
	.size	_ZTI11MyException, 16

	.type	_ZTSP11MyException,@object # @_ZTSP11MyException
	.section	.rodata._ZTSP11MyException,"aG",@progbits,_ZTSP11MyException,comdat
	.weak	_ZTSP11MyException
_ZTSP11MyException:
	.asciz	"P11MyException"
	.size	_ZTSP11MyException, 15

	.type	_ZTIP11MyException,@object # @_ZTIP11MyException
	.section	.rodata._ZTIP11MyException,"aG",@progbits,_ZTIP11MyException,comdat
	.weak	_ZTIP11MyException
	.p2align	4
_ZTIP11MyException:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSP11MyException
	.long	0                       # 0x0
	.zero	4
	.quad	_ZTI11MyException
	.size	_ZTIP11MyException, 32

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Global exception handler\n"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"MyException exception handler\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MyExceptionPtr exception handler\n"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"MyExceptionArray exception handler\n"
	.size	.L.str.3, 36

	.type	_ZTSPP11MyException,@object # @_ZTSPP11MyException
	.section	.rodata._ZTSPP11MyException,"aG",@progbits,_ZTSPP11MyException,comdat
	.weak	_ZTSPP11MyException
_ZTSPP11MyException:
	.asciz	"PP11MyException"
	.size	_ZTSPP11MyException, 16

	.type	_ZTIPP11MyException,@object # @_ZTIPP11MyException
	.section	.rodata._ZTIPP11MyException,"aG",@progbits,_ZTIPP11MyException,comdat
	.weak	_ZTIPP11MyException
	.p2align	4
_ZTIPP11MyException:
	.quad	_ZTVN10__cxxabiv119__pointer_type_infoE+16
	.quad	_ZTSPP11MyException
	.long	0                       # 0x0
	.zero	4
	.quad	_ZTIP11MyException
	.size	_ZTIPP11MyException, 32


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
