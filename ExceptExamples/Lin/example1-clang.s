	.text
	.file	"example1.cpp"
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
	subq	$96, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, %edi
                                        # kill: def %rdi killed %edi
	callq	__cxa_allocate_exception
.Ltmp0:
	movl	$_ZTI12SubException, %ecx
	movl	%ecx, %esi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	__cxa_throw
.Ltmp1:
	jmp	.LBB0_25
.LBB0_1:
.Ltmp2:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
# %bb.2:
	movl	-28(%rbp), %eax
	movl	$3, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_10
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp3:
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp4:
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_4
.LBB0_4:
.Ltmp8:
	callq	__cxa_end_catch
.Ltmp9:
	jmp	.LBB0_5
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	jmp	.LBB0_14
.LBB0_7:
.Ltmp5:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp6:
	callq	__cxa_end_catch
.Ltmp7:
	jmp	.LBB0_9
.LBB0_8:
.Ltmp10:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_18
# %bb.11:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp11:
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp12:
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB0_12
.LBB0_12:
.Ltmp16:
	callq	__cxa_end_catch
.Ltmp17:
	jmp	.LBB0_13
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_20
.LBB0_15:
.Ltmp13:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp14:
	callq	__cxa_end_catch
.Ltmp15:
	jmp	.LBB0_17
.LBB0_16:
.Ltmp18:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
	jmp	.LBB0_18
.LBB0_17:
	jmp	.LBB0_18
.LBB0_18:
	movq	-24(%rbp), %rdi
	callq	__cxa_begin_catch
.Ltmp19:
	movl	$.L.str.2, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movb	%dl, %al
	callq	printf
.Ltmp20:
	movl	%eax, -84(%rbp)         # 4-byte Spill
	jmp	.LBB0_19
.LBB0_19:
	callq	__cxa_end_catch
.LBB0_20:
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.LBB0_21:
.Ltmp21:
	movl	%edx, %ecx
	movq	%rax, -24(%rbp)
	movl	%ecx, -28(%rbp)
.Ltmp22:
	callq	__cxa_end_catch
.Ltmp23:
	jmp	.LBB0_22
.LBB0_22:
	jmp	.LBB0_23
.LBB0_23:
	movq	-24(%rbp), %rdi
	callq	_Unwind_Resume
.LBB0_24:
.Ltmp24:
	movl	%edx, %ecx
	movq	%rax, %rdi
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.LBB0_25:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.ascii	"\330\001"              # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.ascii	"\303\001"              # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	5                       #   On action: 3
	.long	.Ltmp1-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp3-.Ltmp1           #   Call between .Ltmp1 and .Ltmp3
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	3                       #   On action: 2
	.long	.Ltmp8-.Lfunc_begin0    # >> Call Site 5 <<
	.long	.Ltmp9-.Ltmp8           #   Call between .Ltmp8 and .Ltmp9
	.long	.Ltmp10-.Lfunc_begin0   #     jumps to .Ltmp10
	.byte	3                       #   On action: 2
	.long	.Ltmp6-.Lfunc_begin0    # >> Call Site 6 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp24-.Lfunc_begin0   #     jumps to .Ltmp24
	.byte	1                       #   On action: 1
	.long	.Ltmp7-.Lfunc_begin0    # >> Call Site 7 <<
	.long	.Ltmp11-.Ltmp7          #   Call between .Ltmp7 and .Ltmp11
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp11-.Lfunc_begin0   # >> Call Site 8 <<
	.long	.Ltmp12-.Ltmp11         #   Call between .Ltmp11 and .Ltmp12
	.long	.Ltmp13-.Lfunc_begin0   #     jumps to .Ltmp13
	.byte	1                       #   On action: 1
	.long	.Ltmp16-.Lfunc_begin0   # >> Call Site 9 <<
	.long	.Ltmp17-.Ltmp16         #   Call between .Ltmp16 and .Ltmp17
	.long	.Ltmp18-.Lfunc_begin0   #     jumps to .Ltmp18
	.byte	1                       #   On action: 1
	.long	.Ltmp14-.Lfunc_begin0   # >> Call Site 10 <<
	.long	.Ltmp15-.Ltmp14         #   Call between .Ltmp14 and .Ltmp15
	.long	.Ltmp24-.Lfunc_begin0   #     jumps to .Ltmp24
	.byte	1                       #   On action: 1
	.long	.Ltmp15-.Lfunc_begin0   # >> Call Site 11 <<
	.long	.Ltmp19-.Ltmp15         #   Call between .Ltmp15 and .Ltmp19
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp19-.Lfunc_begin0   # >> Call Site 12 <<
	.long	.Ltmp20-.Ltmp19         #   Call between .Ltmp19 and .Ltmp20
	.long	.Ltmp21-.Lfunc_begin0   #     jumps to .Ltmp21
	.byte	0                       #   On action: cleanup
	.long	.Ltmp20-.Lfunc_begin0   # >> Call Site 13 <<
	.long	.Ltmp22-.Ltmp20         #   Call between .Ltmp20 and .Ltmp22
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp22-.Lfunc_begin0   # >> Call Site 14 <<
	.long	.Ltmp23-.Ltmp22         #   Call between .Ltmp22 and .Ltmp23
	.long	.Ltmp24-.Lfunc_begin0   #     jumps to .Ltmp24
	.byte	1                       #   On action: 1
	.long	.Ltmp23-.Lfunc_begin0   # >> Call Site 15 <<
	.long	.Lfunc_end0-.Ltmp23     #   Call between .Ltmp23 and .Lfunc_end0
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

	.type	_ZTI15SubSubException,@object # @_ZTI15SubSubException
	.section	.rodata._ZTI15SubSubException,"aG",@progbits,_ZTI15SubSubException,comdat
	.weak	_ZTI15SubSubException
	.p2align	3
_ZTI15SubSubException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS15SubSubException
	.size	_ZTI15SubSubException, 16

	.type	_ZTS12SubException,@object # @_ZTS12SubException
	.section	.rodata._ZTS12SubException,"aG",@progbits,_ZTS12SubException,comdat
	.weak	_ZTS12SubException
_ZTS12SubException:
	.asciz	"12SubException"
	.size	_ZTS12SubException, 15

	.type	_ZTI12SubException,@object # @_ZTI12SubException
	.section	.rodata._ZTI12SubException,"aG",@progbits,_ZTI12SubException,comdat
	.weak	_ZTI12SubException
	.p2align	3
_ZTI12SubException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS12SubException
	.size	_ZTI12SubException, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"SubSubException handler"
	.size	.L.str, 24

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
