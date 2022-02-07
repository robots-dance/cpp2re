	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"example4.cpp"
	.global	oldContext
	.bss
	.align	2
	.type	oldContext, %object
	.size	oldContext, 92
oldContext:
	.space	92
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SEGV SIGNAL handler: %x\012\000"
	.text
	.align	2
	.global	_Z12segv_handleri
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z12segv_handleri, %function
_Z12segv_handleri:
	.fnstart
.LFB1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L2
	bl	printf
	mov	r1, #1
	ldr	r0, .L2+4
	bl	longjmp
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	oldContext
	.fnend
	.size	_Z12segv_handleri, .-_Z12segv_handleri
	.section	.rodata
	.align	2
.LC1:
	.ascii	"FPE SIGNAL handler: %x\012\000"
	.text
	.align	2
	.global	_Z11fpe_handleri
	.syntax unified
	.arm
	.fpu softvfp
	.type	_Z11fpe_handleri, %function
_Z11fpe_handleri:
	.fnstart
.LFB2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r1, [fp, #-16]
	ldr	r0, .L5
	bl	printf
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC1
	.fnend
	.size	_Z11fpe_handleri, .-_Z11fpe_handleri
	.global	__aeabi_idiv
	.section	.rodata
	.align	2
.LC2:
	.ascii	"main::exit\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	.fnstart
.LFB3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r1, .L13
	mov	r0, #8
	bl	signal
	ldr	r1, .L13+4
	mov	r0, #11
	bl	signal
	ldr	r0, .L13+8
	bl	setjmp
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L9
	mov	r3, #10
	str	r3, [fp, #-8]
.L11:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	ble	.L10
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L11
.L10:
	mov	r3, #20
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-12]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-12]
.L9:
	ldr	r0, .L13+12
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	_Z11fpe_handleri
	.word	_Z12segv_handleri
	.word	oldContext
	.word	.LC2
	.fnend
	.size	main, .-main
	.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
