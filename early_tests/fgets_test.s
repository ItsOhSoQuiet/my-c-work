	.file	"fgets_test.c"
	.section	.rodata
.LC0:
	.string	"Done!\n"
.LC1:
	.string	"Done!"
	.text
	.globl	num_entry
	.type	num_entry, @function
num_entry:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	stdin(%rip), %rdx
	leaq	-112(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets
	testq	%rax, %rax
	jne	.L2
	movl	$.LC0, %edi
	call	puts
	movabsq	$-4000000000, %rax
	jmp	.L5
.L2:
	movzbl	-112(%rbp), %eax
	cmpb	$10, %al
	jne	.L4
	movl	$.LC1, %edi
	call	puts
	movabsq	$-4000000000, %rax
	jmp	.L5
.L4:
	leaq	-128(%rbp), %rcx
	leaq	-112(%rbp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strtol
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
.L5:
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L6
	call	__stack_chk_fail
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	num_entry, .-num_entry
	.section	.rodata
	.align 8
.LC2:
	.string	"Enter the amount of integers that you wish to enter: "
	.align 8
.LC3:
	.string	"Enter a positive integer for how many numbers you wish to enter."
	.align 8
.LC4:
	.string	"Enter number %d, or enter blank line to exit: "
.LC5:
	.string	"No numbers entered."
.LC6:
	.string	"%li "
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -132(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	stdin(%rip), %rdx
	leaq	-80(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	fgets
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -108(%rbp)
	cmpl	$0, -108(%rbp)
	jg	.L8
	movl	$.LC3, %edi
	call	puts
	movl	$0, %eax
	jmp	.L18
.L8:
	movq	%rsp, %rax
	movq	%rax, %rbx
	movl	-108(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -104(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	salq	$3, %rax
	leaq	7(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -96(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L10
.L13:
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	call	num_entry
	movq	%rax, -88(%rbp)
	movabsq	$-4000000000, %rax
	cmpq	%rax, -88(%rbp)
	je	.L20
	movq	-96(%rbp), %rax
	movl	-116(%rbp), %edx
	movslq	%edx, %rdx
	movq	-88(%rbp), %rcx
	movq	%rcx, (%rax,%rdx,8)
	addl	$1, -116(%rbp)
.L10:
	movl	-116(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jl	.L13
	jmp	.L12
.L20:
	nop
.L12:
	cmpl	$0, -116(%rbp)
	jne	.L14
	movl	$.LC5, %edi
	call	puts
	movl	$0, %eax
	jmp	.L15
.L14:
	movl	$0, -112(%rbp)
	jmp	.L16
.L17:
	movq	-96(%rbp), %rax
	movl	-112(%rbp), %edx
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -112(%rbp)
.L16:
	movl	-112(%rbp), %eax
	cmpl	-116(%rbp), %eax
	jl	.L17
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
.L15:
	movq	%rbx, %rsp
.L18:
	movq	-56(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L19
	call	__stack_chk_fail
.L19:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
