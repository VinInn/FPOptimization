	.section __TEXT,__textcoal_nt,coalesced,pure_instructions
	.align 4
	.globl __ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
	.weak_definition __ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
__ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_:
LFB4263:
	movq	2496(%rdi), %rdx
	pushq	%rbp
LCFI0:
	pushq	%rbx
LCFI1:
	cmpq	$623, %rdx
	ja	L2
	leaq	1(%rdx), %rax
	movl	(%rdi,%rdx,4), %edx
	.align 4
L3:
	movq	%rax, 2496(%rdi)
	movl	%edx, %eax
	pxor	%xmm0, %xmm0
	popq	%rbx
LCFI2:
	shrl	$11, %eax
	popq	%rbp
LCFI3:
	xorl	%edx, %eax
	movl	%eax, %edx
	sall	$7, %edx
	andl	$-1658038656, %edx
	xorl	%eax, %edx
	movl	%edx, %eax
	sall	$15, %eax
	andl	$-272236544, %eax
	xorl	%edx, %eax
	movl	%eax, %edx
	shrl	$18, %edx
	xorl	%edx, %eax
	cvtsi2ssq	%rax, %xmm0
	mulss	LC4(%rip), %xmm0
	ret
L2:
LCFI4:
	movq	%rdi, %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	movq	%rax, %r9
	je	L25
	movl	4(%rdi), %esi
	movl	(%rdi), %eax
	movl	%esi, %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1588(%rdi), %eax
	xorl	%edx, %eax
	cmpq	$1, %r9
	movl	%eax, (%rdi)
	je	L26
	movl	8(%rdi), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1592(%rdi), %eax
	xorl	%edx, %eax
	cmpq	$3, %r9
	movl	%eax, 4(%rdi)
	jne	L27
	movl	12(%rdi), %edx
	andl	$-2147483648, %ecx
	movl	$224, %ebx
	movl	$3, %r10d
	andl	$2147483647, %edx
	orl	%ecx, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1596(%rdi), %eax
	xorl	%edx, %eax
	movl	%eax, 8(%rdi)
L19:
	movl	$227, %r11d
	subq	%r9, %r11
L18:
	movdqa	LC0(%rip), %xmm5
	xorl	%edx, %edx
	pxor	%xmm7, %xmm7
	leaq	0(,%r9,4), %rax
	movdqa	LC1(%rip), %xmm4
	movdqa	LC2(%rip), %xmm3
	leaq	(%rdi,%rax), %rcx
	movdqa	LC3(%rip), %xmm2
	leaq	4(%rdi,%rax), %r8
	leaq	1588(%rdi,%rax), %rsi
	xorl	%eax, %eax
	.align 4
L20:
	movdqu	(%r8,%rax), %xmm1
	addq	$1, %rdx
	movdqa	(%rcx,%rax), %xmm0
	pand	%xmm5, %xmm1
	movdqu	(%rsi,%rax), %xmm6
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm7, %xmm0
	pandn	%xmm2, %xmm0
	pxor	%xmm6, %xmm0
	pxor	%xmm1, %xmm0
	movaps	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	$55, %rdx
	jbe	L20
	leaq	224(%r10), %rax
	cmpq	$224, %r11
	leaq	-224(%rbx), %rbp
	je	L6
	leaq	(%rdi,%rax,4), %rdx
	movl	4(%rdx), %esi
	leaq	225(%r10), %r8
	movl	(%rdx), %eax
	movl	%esi, %ecx
	andl	$-2147483648, %eax
	andl	$2147483647, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	%ecx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1588(%rdx), %eax
	xorl	%ecx, %eax
	cmpq	$225, %rbx
	movl	%eax, (%rdx)
	je	L6
	leaq	(%rdi,%r8,4), %rcx
	andl	$-2147483648, %esi
	addq	$226, %r10
	movl	4(%rcx), %r8d
	movl	%r8d, %edx
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1588(%rcx), %eax
	xorl	%edx, %eax
	cmpq	$2, %rbp
	movl	%eax, (%rcx)
	je	L6
	leaq	(%rdi,%r10,4), %rcx
	andl	$-2147483648, %r8d
	movl	4(%rcx), %edx
	andl	$2147483647, %edx
	orl	%r8d, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	1588(%rcx), %eax
	xorl	%edx, %eax
	movl	%eax, (%rcx)
L6:
	testq	%r9, %r9
	je	L22
	movl	912(%rdi), %esi
	movl	908(%rdi), %eax
	movl	%esi, %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%eax, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	(%rdi), %eax
	xorl	%edx, %eax
	cmpq	$1, %r9
	movl	%eax, 908(%rdi)
	jbe	L23
	movl	916(%rdi), %ecx
	andl	$-2147483648, %esi
	movl	%ecx, %edx
	andl	$2147483647, %edx
	orl	%esi, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	4(%rdi), %eax
	xorl	%edx, %eax
	cmpq	$3, %r9
	movl	%eax, 912(%rdi)
	jne	L24
	movl	920(%rdi), %edx
	andl	$-2147483648, %ecx
	movl	$393, %ebx
	movl	$230, %ebp
	andl	$2147483647, %edx
	orl	%ecx, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	8(%rdi), %eax
	xorl	%edx, %eax
	movl	%eax, 916(%rdi)
L16:
	movl	$396, %r10d
	subq	%r9, %r10
	movq	%r10, %rsi
	shrq	$2, %rsi
	leaq	0(,%rsi,4), %r11
L15:
	leaq	908(,%r9,4), %rax
	xorl	%edx, %edx
	pxor	%xmm6, %xmm6
	leaq	(%rdi,%rax), %rcx
	leaq	4(%rdi,%rax), %r9
	leaq	-908(%rdi,%rax), %r8
	xorl	%eax, %eax
	.align 4
L17:
	movdqa	(%r9,%rax), %xmm1
	addq	$1, %rdx
	movdqu	(%rcx,%rax), %xmm0
	pand	%xmm5, %xmm1
	pand	%xmm4, %xmm0
	por	%xmm0, %xmm1
	movdqa	%xmm1, %xmm0
	psrld	$1, %xmm1
	pand	%xmm3, %xmm0
	pcmpeqd	%xmm6, %xmm0
	pandn	%xmm2, %xmm0
	pxor	(%r8,%rax), %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rdx, %rsi
	ja	L17
	leaq	0(%rbp,%r11), %rsi
	subq	%r11, %rbx
	cmpq	%r10, %r11
	je	L10
	leaq	(%rdi,%rsi,4), %rdx
	movl	4(%rdx), %r8d
	leaq	1(%rsi), %r9
	movl	(%rdx), %eax
	movl	%r8d, %ecx
	andl	$-2147483648, %eax
	andl	$2147483647, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	%ecx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	-908(%rdx), %eax
	xorl	%ecx, %eax
	cmpq	$1, %rbx
	movl	%eax, (%rdx)
	je	L10
	leaq	(%rdi,%r9,4), %rcx
	andl	$-2147483648, %r8d
	addq	$2, %rsi
	movl	4(%rcx), %r9d
	movl	%r9d, %edx
	andl	$2147483647, %edx
	orl	%r8d, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	-908(%rcx), %eax
	xorl	%edx, %eax
	cmpq	$2, %rbx
	movl	%eax, (%rcx)
	je	L10
	leaq	(%rdi,%rsi,4), %rcx
	andl	$-2147483648, %r9d
	movl	4(%rcx), %edx
	andl	$2147483647, %edx
	orl	%r9d, %edx
	movl	%edx, %eax
	shrl	%edx
	andl	$1, %eax
	negl	%eax
	andl	$-1727483681, %eax
	xorl	-908(%rcx), %eax
	xorl	%edx, %eax
	movl	%eax, (%rcx)
L10:
	movl	(%rdi), %edx
	movl	$-1727483681, %esi
	movl	2492(%rdi), %eax
	movl	%edx, %ecx
	andl	$-2147483648, %eax
	andl	$2147483647, %ecx
	orl	%eax, %ecx
	movl	%ecx, %eax
	shrl	%eax
	xorl	1584(%rdi), %eax
	andl	$1, %ecx
	cmovne	%esi, %ecx
	xorl	%ecx, %eax
	movl	%eax, 2492(%rdi)
	movl	$1, %eax
	jmp	L3
	.align 4
L22:
	movl	$227, %ebp
	movl	$396, %ebx
	movl	$99, %esi
	movl	$396, %r10d
	movl	$396, %r11d
	jmp	L15
	.align 4
L25:
	movl	$227, %r11d
	movl	$227, %ebx
	xorl	%r10d, %r10d
	jmp	L18
	.align 4
L27:
	movl	$225, %ebx
	movl	$2, %r10d
	jmp	L19
	.align 4
L26:
	movl	$226, %ebx
	movl	$1, %r10d
	jmp	L19
	.align 4
L24:
	movl	$394, %ebx
	movl	$229, %ebp
	jmp	L16
	.align 4
L23:
	movl	$395, %ebx
	movl	$228, %ebp
	jmp	L16
LFE4263:
	.cstring
LC7:
	.ascii "sum %f : %f\12\0"
LC12:
	.ascii "sinf0 %f : %f\12\0"
LC19:
	.ascii "sinf1 %f : %f\12\0"
LC20:
	.ascii "sincos %f : %f\12\0"
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
	.globl _main
_main:
LFB4020:
	leaq	8(%rsp), %r10
LCFI5:
	andq	$-32, %rsp
	movl	$5489, %edx
	pushq	-8(%r10)
	pushq	%rbp
	movl	$1, %ecx
	movl	$440509467, %edi
LCFI6:
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%r13
	pushq	%r12
LCFI7:
	leaq	-4002560(%rbp), %r12
	pushq	%r10
LCFI8:
	pushq	%rbx
	subq	$4002696, %rsp
LCFI9:
	movl	$5489, -4002560(%rbp)
	.align 4
L43:
	movl	%edx, %eax
	shrl	$30, %eax
	xorl	%edx, %eax
	movl	%ecx, %edx
	shrl	$4, %edx
	imull	$1812433253, %eax, %esi
	movl	%edx, %eax
	mull	%edi
	movl	%ecx, %eax
	shrl	$2, %edx
	imull	$624, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	addl	%esi, %edx
	movl	%edx, (%r12,%rcx,4)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	L43
	movq	$624, -4000064(%rbp)
	leaq	-4000048(%rbp), %r14
	leaq	-48(%rbp), %r13
	movq	%r14, %rbx
	.align 4
L45:
	movq	%r12, %rdi
	addq	$4, %rbx
	call	__ZSt18generate_canonicalIfLm24ESt23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEET_RT1_
	mulss	LC5(%rip), %xmm0
	movss	%xmm0, -4(%rbx)
	cmpq	%r13, %rbx
	jne	L45
	movl	$0, -4002564(%rbp)
	rdtscp
	pxor	%xmm0, %xmm0
	salq	$32, %rdx
	movq	%rax, %rsi
	movl	%ecx, -4002564(%rbp)
	movq	%r14, %rbx
	orq	%rdx, %rsi
	movq	%r14, %rdx
	.align 4
L47:
	addps	(%rdx), %xmm0
	addq	$16, %rdx
	cmpq	%rdx, %r13
	jne	L47
	movl	$0, -4002564(%rbp)
	rdtscp
	leaq	LC7(%rip), %rdi
	haddps	%xmm0, %xmm0
	salq	$32, %rdx
	movl	%ecx, -4002564(%rbp)
	orq	%rax, %rdx
	movl	$2, %eax
	subq	%rsi, %rdx
	haddps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	cvtss2sd	%xmm1, %xmm1
	mulsd	LC6(%rip), %xmm0
	call	_printf
	movl	$0, -4002564(%rbp)
	rdtscp
	movaps	LC8(%rip), %xmm3
	pxor	%xmm7, %xmm7
	movaps	LC9(%rip), %xmm4
	movaps	LC10(%rip), %xmm5
	movaps	LC11(%rip), %xmm2
	salq	$32, %rdx
	movq	%rax, %rsi
	movl	%ecx, -4002564(%rbp)
	orq	%rdx, %rsi
	movq	%r14, %rdx
	.align 4
L49:
	movaps	(%rdx), %xmm1
	addq	$16, %rdx
	cmpq	%rdx, %r13
	movaps	%xmm1, %xmm6
	mulps	%xmm1, %xmm6
	movaps	%xmm6, %xmm0
	mulps	%xmm3, %xmm0
	addps	%xmm4, %xmm0
	mulps	%xmm6, %xmm0
	addps	%xmm5, %xmm0
	mulps	%xmm6, %xmm0
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	addps	%xmm0, %xmm7
	jne	L49
	movaps	%xmm2, -4002640(%rbp)
	movaps	%xmm5, -4002624(%rbp)
	movaps	%xmm4, -4002608(%rbp)
	movaps	%xmm3, -4002592(%rbp)
	movl	$0, -4002564(%rbp)
	rdtscp
	pxor	%xmm0, %xmm0
	leaq	LC12(%rip), %rdi
	salq	$32, %rdx
	haddps	%xmm7, %xmm7
	movl	%ecx, -4002564(%rbp)
	orq	%rax, %rdx
	movl	$2, %eax
	subq	%rsi, %rdx
	cvtsi2sdq	%rdx, %xmm0
	mulsd	LC6(%rip), %xmm0
	haddps	%xmm7, %xmm7
	movaps	%xmm7, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	_printf
	movl	$0, -4002564(%rbp)
	rdtscp
	movaps	LC13(%rip), %xmm7
	pxor	%xmm14, %xmm14
	movaps	LC14(%rip), %xmm6
	movaps	LC15(%rip), %xmm8
	movaps	LC16(%rip), %xmm9
	movaps	LC17(%rip), %xmm10
	movaps	LC18(%rip), %xmm11
	movq	%rax, %rsi
	salq	$32, %rdx
	movaps	-4002640(%rbp), %xmm2
	movl	%ecx, -4002564(%rbp)
	movaps	-4002624(%rbp), %xmm5
	orq	%rdx, %rsi
	movaps	-4002608(%rbp), %xmm4
	movaps	-4002592(%rbp), %xmm3
	.align 4
L51:
	movaps	(%r14), %xmm13
	addq	$16, %r14
	cmpq	%r14, %r13
	movaps	%xmm13, %xmm1
	movaps	%xmm13, %xmm12
	mulps	%xmm13, %xmm1
	addps	%xmm7, %xmm12
	mulps	%xmm12, %xmm12
	movaps	%xmm1, %xmm0
	mulps	%xmm3, %xmm0
	addps	%xmm4, %xmm0
	mulps	%xmm1, %xmm0
	addps	%xmm5, %xmm0
	mulps	%xmm1, %xmm0
	movaps	%xmm12, %xmm1
	mulps	%xmm8, %xmm1
	addps	%xmm2, %xmm0
	addps	%xmm9, %xmm1
	mulps	%xmm13, %xmm0
	cmpltps	%xmm6, %xmm13
	mulps	%xmm12, %xmm1
	andps	%xmm13, %xmm0
	addps	%xmm10, %xmm1
	mulps	%xmm12, %xmm1
	addps	%xmm11, %xmm1
	mulps	%xmm12, %xmm1
	addps	%xmm2, %xmm1
	andnps	%xmm1, %xmm13
	orps	%xmm0, %xmm13
	addps	%xmm13, %xmm14
	jne	L51
	movaps	%xmm11, -4002736(%rbp)
	movaps	%xmm10, -4002720(%rbp)
	movaps	%xmm9, -4002704(%rbp)
	movaps	%xmm8, -4002688(%rbp)
	movaps	%xmm6, -4002672(%rbp)
	movaps	%xmm7, -4002656(%rbp)
	movaps	%xmm2, -4002640(%rbp)
	movaps	%xmm5, -4002624(%rbp)
	movaps	%xmm4, -4002608(%rbp)
	movaps	%xmm3, -4002592(%rbp)
	movl	$0, -4002564(%rbp)
	rdtscp
	pxor	%xmm0, %xmm0
	leaq	LC19(%rip), %rdi
	salq	$32, %rdx
	haddps	%xmm14, %xmm14
	movl	%ecx, -4002564(%rbp)
	orq	%rax, %rdx
	movl	$2, %eax
	subq	%rsi, %rdx
	cvtsi2sdq	%rdx, %xmm0
	mulsd	LC6(%rip), %xmm0
	haddps	%xmm14, %xmm14
	movaps	%xmm14, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	_printf
	movl	$0, -4002564(%rbp)
	rdtscp
	pxor	%xmm14, %xmm14
	movaps	-4002736(%rbp), %xmm11
	movaps	-4002720(%rbp), %xmm10
	movaps	-4002704(%rbp), %xmm9
	movaps	-4002688(%rbp), %xmm8
	movq	%rax, %rsi
	salq	$32, %rdx
	movaps	-4002672(%rbp), %xmm6
	movl	%ecx, -4002564(%rbp)
	movaps	-4002656(%rbp), %xmm7
	orq	%rdx, %rsi
	movaps	-4002640(%rbp), %xmm2
	movaps	-4002624(%rbp), %xmm5
	movaps	-4002608(%rbp), %xmm4
	movaps	-4002592(%rbp), %xmm3
	.align 4
L53:
	movaps	(%rbx), %xmm13
	movaps	%xmm6, %xmm1
	addq	$16, %rbx
	cmpq	%rbx, %r13
	movaps	%xmm13, %xmm0
	cmpltps	%xmm13, %xmm1
	addps	%xmm7, %xmm0
	andps	%xmm1, %xmm0
	andnps	%xmm13, %xmm1
	orps	%xmm0, %xmm1
	movaps	%xmm1, %xmm12
	mulps	%xmm1, %xmm12
	cmpleps	%xmm6, %xmm13
	movaps	%xmm12, %xmm0
	mulps	%xmm3, %xmm0
	addps	%xmm4, %xmm0
	mulps	%xmm12, %xmm0
	addps	%xmm5, %xmm0
	mulps	%xmm12, %xmm0
	addps	%xmm2, %xmm0
	mulps	%xmm1, %xmm0
	movaps	%xmm12, %xmm1
	mulps	%xmm8, %xmm1
	andps	%xmm13, %xmm0
	addps	%xmm9, %xmm1
	mulps	%xmm12, %xmm1
	addps	%xmm10, %xmm1
	mulps	%xmm12, %xmm1
	addps	%xmm11, %xmm1
	mulps	%xmm12, %xmm1
	addps	%xmm2, %xmm1
	andnps	%xmm1, %xmm13
	orps	%xmm0, %xmm13
	addps	%xmm13, %xmm14
	jne	L53
	movl	$0, -4002564(%rbp)
	rdtscp
	pxor	%xmm0, %xmm0
	leaq	LC20(%rip), %rdi
	salq	$32, %rdx
	haddps	%xmm14, %xmm14
	movl	%ecx, -4002564(%rbp)
	orq	%rax, %rdx
	movl	$2, %eax
	subq	%rsi, %rdx
	cvtsi2sdq	%rdx, %xmm0
	mulsd	LC6(%rip), %xmm0
	haddps	%xmm14, %xmm14
	movaps	%xmm14, %xmm1
	cvtss2sd	%xmm1, %xmm1
	call	_printf
	addq	$4002696, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
LCFI10:
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%r10), %rsp
LCFI11:
	ret
LFE4020:
	.align 4
__GLOBAL__sub_I_sincos.cpp:
LFB4304:
	leaq	__ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
LCFI12:
	call	__ZNSt8ios_base4InitC1Ev
	movq	__ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
LCFI13:
	leaq	___dso_handle(%rip), %rdx
	leaq	__ZStL8__ioinit(%rip), %rsi
	jmp	___cxa_atexit
LFE4304:
	.static_data
__ZStL8__ioinit:
	.space	1
	.literal16
	.align 4
LC0:
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.long	2147483647
	.align 4
LC1:
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.long	-2147483648
	.align 4
LC2:
	.long	1
	.long	1
	.long	1
	.long	1
	.align 4
LC3:
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.long	-1727483681
	.literal4
	.align 2
LC4:
	.long	796917760
	.align 2
LC5:
	.long	1061752795
	.literal8
	.align 3
LC6:
	.long	2696277389
	.long	1051772663
	.literal16
	.align 4
LC8:
	.long	3108807161
	.long	3108807161
	.long	3108807161
	.long	3108807161
	.align 4
LC9:
	.long	1007190942
	.long	1007190942
	.long	1007190942
	.long	1007190942
	.align 4
LC10:
	.long	3190467235
	.long	3190467235
	.long	3190467235
	.long	3190467235
	.align 4
LC11:
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.align 4
LC13:
	.long	3209236443
	.long	3209236443
	.long	3209236443
	.long	3209236443
	.align 4
LC14:
	.long	1061752795
	.long	1061752795
	.long	1061752795
	.long	1061752795
	.align 4
LC15:
	.long	936179150
	.long	936179150
	.long	936179150
	.long	936179150
	.align 4
LC16:
	.long	3132491290
	.long	3132491290
	.long	3132491290
	.long	3132491290
	.align 4
LC17:
	.long	1026206373
	.long	1026206373
	.long	1026206373
	.long	1026206373
	.align 4
LC18:
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.long	3204448256
	.section __TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame1:
	.set L$set$0,LECIE1-LSCIE1
	.long L$set$0
LSCIE1:
	.long	0
	.byte	0x1
	.ascii "zR\0"
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0x1
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align 3
LECIE1:
LSFDE1:
	.set L$set$1,LEFDE1-LASFDE1
	.long L$set$1
LASFDE1:
	.long	LASFDE1-EH_frame1
	.quad	LFB4263-.
	.set L$set$2,LFE4263-LFB4263
	.quad L$set$2
	.byte	0
	.byte	0x4
	.set L$set$3,LCFI0-LFB4263
	.long L$set$3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.set L$set$4,LCFI1-LCFI0
	.long L$set$4
	.byte	0xe
	.byte	0x18
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.set L$set$5,LCFI2-LCFI1
	.long L$set$5
	.byte	0xa
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$6,LCFI3-LCFI2
	.long L$set$6
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$7,LCFI4-LCFI3
	.long L$set$7
	.byte	0xb
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$8,LEFDE3-LASFDE3
	.long L$set$8
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB4020-.
	.set L$set$9,LFE4020-LFB4020
	.quad L$set$9
	.byte	0
	.byte	0x4
	.set L$set$10,LCFI5-LFB4020
	.long L$set$10
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$11,LCFI6-LCFI5
	.long L$set$11
	.byte	0x10
	.byte	0x6
	.byte	0x2
	.byte	0x76
	.byte	0
	.byte	0x4
	.set L$set$12,LCFI7-LCFI6
	.long L$set$12
	.byte	0x10
	.byte	0xe
	.byte	0x2
	.byte	0x76
	.byte	0x78
	.byte	0x10
	.byte	0xd
	.byte	0x2
	.byte	0x76
	.byte	0x70
	.byte	0x10
	.byte	0xc
	.byte	0x2
	.byte	0x76
	.byte	0x68
	.byte	0x4
	.set L$set$13,LCFI8-LCFI7
	.long L$set$13
	.byte	0xf
	.byte	0x3
	.byte	0x76
	.byte	0x60
	.byte	0x6
	.byte	0x4
	.set L$set$14,LCFI9-LCFI8
	.long L$set$14
	.byte	0x10
	.byte	0x3
	.byte	0x2
	.byte	0x76
	.byte	0x58
	.byte	0x4
	.set L$set$15,LCFI10-LCFI9
	.long L$set$15
	.byte	0xc
	.byte	0xa
	.byte	0
	.byte	0x4
	.set L$set$16,LCFI11-LCFI10
	.long L$set$16
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$17,LEFDE5-LASFDE5
	.long L$set$17
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB4304-.
	.set L$set$18,LFE4304-LFB4304
	.quad L$set$18
	.byte	0
	.byte	0x4
	.set L$set$19,LCFI12-LFB4304
	.long L$set$19
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$20,LCFI13-LCFI12
	.long L$set$20
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE5:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_sincos.cpp
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
