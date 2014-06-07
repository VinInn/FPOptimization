	.text
	.align 4,0x90
	.globl __Z4hsumRK13LorentzVector
__Z4hsumRK13LorentzVector:
LFB10:
	movss	4(%rdi), %xmm0
	addss	(%rdi), %xmm0
	addss	8(%rdi), %xmm0
	addss	12(%rdi), %xmm0
	ret
LFE10:
	.align 4,0x90
	.globl __Z4sum1R13LorentzVectorfRKS_S2_
__Z4sum1R13LorentzVectorfRKS_S2_:
LFB11:
	movaps	(%rsi), %xmm1
	shufps	$0, %xmm0, %xmm0
	addps	(%rdx), %xmm1
	mulps	%xmm0, %xmm1
	addps	(%rdi), %xmm1
	movaps	%xmm1, (%rdi)
	ret
LFE11:
	.align 4,0x90
	.globl __Z4msumR13LorentzVectorfRKS_S2_
__Z4msumR13LorentzVectorfRKS_S2_:
LFB13:
	movaps	(%rdx), %xmm2
	shufps	$0, %xmm0, %xmm0
	movaps	(%rsi), %xmm3
	movaps	%xmm2, %xmm1
	addps	%xmm2, %xmm2
	addps	%xmm3, %xmm1
	addps	%xmm3, %xmm1
	subps	%xmm2, %xmm1
	mulps	%xmm0, %xmm1
	movaps	%xmm1, (%rdi)
	ret
LFE13:
	.align 4,0x90
	.globl __ZN3aos4fillEP13LorentzVectorPfi
__ZN3aos4fillEP13LorentzVectorPfi:
LFB20:
	testl	%edx, %edx
	je	L26
	pushq	%r15
LCFI0:
	leal	(%rdx,%rdx), %r9d
	movl	%edx, %ecx
	movslq	%edx, %r10
	leaq	(%rsi,%rcx,4), %rax
	movq	%rcx, %r11
	pushq	%r14
LCFI1:
	salq	$4, %r11
	pushq	%r13
LCFI2:
	pushq	%r12
LCFI3:
	leal	(%r9,%rdx), %r13d
	addq	%rdi, %r11
	cmpq	%rax, %rdi
	setae	%al
	cmpq	%r11, %rsi
	movslq	%r13d, %r8
	pushq	%rbp
LCFI4:
	leaq	(%rsi,%r8,4), %r15
	setae	%r12b
	movslq	%r9d, %r9
	pushq	%rbx
LCFI5:
	leaq	0(,%r9,4), %r14
	orl	%r12d, %eax
	cmpl	$6, %edx
	leaq	(%rsi,%r14), %rbp
	seta	%r12b
	leaq	(%rsi,%r10,4), %rbx
	andl	%r12d, %eax
	leaq	(%r8,%rcx), %r12
	leaq	(%rsi,%r12,4), %r12
	cmpq	%r12, %rdi
	setae	%r12b
	cmpq	%r15, %r11
	setbe	%r15b
	orl	%r15d, %r12d
	andl	%r12d, %eax
	leaq	(%r9,%rcx), %r12
	leaq	(%rsi,%r12,4), %r12
	cmpq	%r12, %rdi
	setae	%r12b
	cmpq	%r11, %rbp
	setae	%r15b
	orl	%r15d, %r12d
	testb	%r12b, %al
	je	L6
	addq	%r10, %rcx
	leaq	(%rsi,%rcx,4), %rax
	cmpq	%rax, %rdi
	setae	%cl
	cmpq	%rbx, %r11
	setbe	%al
	orb	%al, %cl
	je	L6
	movl	%edx, %r9d
	addq	%rbx, %r14
	xorl	%eax, %eax
	pxor	%xmm4, %xmm4
	shrl	$2, %r9d
	xorl	%ecx, %ecx
	leal	0(,%r9,4), %r8d
L11:
	movaps	%xmm4, %xmm3
	movaps	%xmm4, %xmm2
	movaps	%xmm4, %xmm1
	movlps	(%rsi,%rax), %xmm3
	movlps	0(%rbp,%rax), %xmm2
	movlps	(%rbx,%rax), %xmm1
	movhps	8(%rsi,%rax), %xmm3
	movaps	%xmm4, %xmm0
	movhps	8(%rbp,%rax), %xmm2
	movhps	8(%rbx,%rax), %xmm1
	movlps	(%r14,%rax), %xmm0
	movaps	%xmm3, %xmm5
	unpckhps	%xmm2, %xmm3
	movhps	8(%r14,%rax), %xmm0
	unpcklps	%xmm2, %xmm5
	movaps	%xmm1, %xmm2
	addl	$1, %ecx
	unpcklps	%xmm0, %xmm2
	unpckhps	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	unpckhps	%xmm2, %xmm5
	unpcklps	%xmm2, %xmm0
	movaps	%xmm0, (%rdi,%rax,4)
	movaps	%xmm3, %xmm0
	unpckhps	%xmm1, %xmm3
	movaps	%xmm5, 16(%rdi,%rax,4)
	unpcklps	%xmm1, %xmm0
	movaps	%xmm3, 48(%rdi,%rax,4)
	movaps	%xmm0, 32(%rdi,%rax,4)
	addq	$16, %rax
	cmpl	%r9d, %ecx
	jb	L11
	cmpl	%r8d, %edx
	je	L4
	leal	0(%r13,%r8), %r9d
	movslq	%r8d, %rcx
	movslq	%r9d, %r10
	subl	%edx, %r9d
	movq	%rcx, %rax
	movss	(%rsi,%rcx,4), %xmm0
	movss	(%rsi,%r10,4), %xmm1
	movslq	%r9d, %r10
	subl	%edx, %r9d
	salq	$4, %rax
	movss	(%rsi,%r10,4), %xmm2
	leal	1(%r8), %ecx
	movslq	%r9d, %r9
	addq	%rdi, %rax
	movss	(%rsi,%r9,4), %xmm3
	cmpl	%ecx, %edx
	movss	%xmm0, (%rax)
	movss	%xmm2, 8(%rax)
	movss	%xmm3, 4(%rax)
	movss	%xmm1, 12(%rax)
	je	L4
	movslq	%ecx, %r9
	addl	%r13d, %ecx
	addl	$2, %r8d
	movslq	%ecx, %r10
	subl	%edx, %ecx
	movq	%r9, %rax
	movss	(%rsi,%r9,4), %xmm0
	movss	(%rsi,%r10,4), %xmm1
	movslq	%ecx, %r10
	subl	%edx, %ecx
	salq	$4, %rax
	movslq	%ecx, %rcx
	movss	(%rsi,%r10,4), %xmm2
	addq	%rdi, %rax
	cmpl	%r8d, %edx
	movss	(%rsi,%rcx,4), %xmm3
	movss	%xmm0, (%rax)
	movss	%xmm2, 8(%rax)
	movss	%xmm3, 4(%rax)
	movss	%xmm1, 12(%rax)
	je	L4
	movslq	%r8d, %rax
	addl	%r13d, %r8d
	movq	%rax, %rcx
	movss	(%rsi,%rax,4), %xmm0
	salq	$4, %rcx
	addq	%rcx, %rdi
	movslq	%r8d, %rcx
	subl	%edx, %r8d
	movss	(%rsi,%rcx,4), %xmm1
	movslq	%r8d, %rcx
	subl	%edx, %r8d
	movslq	%r8d, %r8
	movss	(%rsi,%rcx,4), %xmm2
	movss	(%rsi,%r8,4), %xmm3
	movss	%xmm0, (%rdi)
	movss	%xmm2, 8(%rdi)
	movss	%xmm3, 4(%rdi)
	movss	%xmm1, 12(%rdi)
L4:
	popq	%rbx
LCFI6:
	popq	%rbp
LCFI7:
	popq	%r12
LCFI8:
	popq	%r13
LCFI9:
	popq	%r14
LCFI10:
	popq	%r15
LCFI11:
L26:
	ret
	.align 4,0x90
L6:
LCFI12:
	subl	$1, %edx
	leaq	4(%rsi,%rdx,4), %rax
	.align 4,0x90
L13:
	movss	(%rsi), %xmm0
	addq	$16, %rdi
	movss	(%rsi,%r8,4), %xmm1
	movss	(%rsi,%r9,4), %xmm2
	movss	(%rsi,%r10,4), %xmm3
	addq	$4, %rsi
	movss	%xmm0, -16(%rdi)
	movss	%xmm2, -8(%rdi)
	movss	%xmm3, -12(%rdi)
	movss	%xmm1, -4(%rdi)
	cmpq	%rax, %rsi
	jne	L13
	jmp	L4
LFE20:
	.align 4,0x90
	.globl __ZN3aos4lsumEb
__ZN3aos4lsumEb:
LFB21:
	leaq	__ZN3aos1aE(%rip), %r8
	movss	__ZN3aos1sE(%rip), %xmm1
	leaq	12+__ZN3aos1cE(%rip), %rax
	movq	%r8, %rdx
	leaq	12+__ZN3aos1bE(%rip), %rcx
	leaq	16396+__ZN3aos1cE(%rip), %rsi
	.align 4,0x90
L29:
	movss	-12(%rcx), %xmm9
	addq	$16, %rax
	addq	$16, %rcx
	addq	$16, %rdx
	movss	-28(%rax), %xmm5
	movaps	%xmm9, %xmm0
	movss	-24(%rcx), %xmm8
	addss	%xmm5, %xmm0
	movss	-24(%rax), %xmm4
	addss	%xmm5, %xmm5
	movss	-20(%rcx), %xmm7
	movss	-20(%rax), %xmm3
	addss	%xmm9, %xmm0
	movss	-16(%rcx), %xmm6
	movss	-16(%rax), %xmm2
	subss	%xmm5, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rdx)
	movaps	%xmm8, %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm4
	addss	%xmm8, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rdx)
	movaps	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm3, %xmm3
	addss	%xmm7, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rdx)
	movaps	%xmm6, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rdx)
	cmpq	%rsi, %rax
	jne	L29
	testb	%dil, %dil
	je	L35
	leaq	__ZN3aos1mE(%rip), %rdx
	leaq	__ZN3aos1bE(%rip), %rax
	leaq	4096+__ZN3aos1mE(%rip), %rcx
	.align 4,0x90
L34:
	movaps	(%r8), %xmm1
	addq	$16, %rdx
	addq	$64, %rax
	addq	$64, %r8
	movaps	-32(%r8), %xmm6
	movaps	-48(%r8), %xmm3
	movaps	%xmm1, %xmm2
	movaps	-16(%r8), %xmm0
	movaps	%xmm6, %xmm9
	movaps	-64(%rax), %xmm5
	shufps	$136, %xmm3, %xmm2
	shufps	$221, %xmm3, %xmm1
	movaps	-32(%rax), %xmm4
	shufps	$136, %xmm0, %xmm9
	shufps	$221, %xmm0, %xmm6
	movaps	-48(%rax), %xmm3
	movaps	%xmm5, %xmm8
	movaps	-16(%rax), %xmm0
	movaps	%xmm4, %xmm7
	shufps	$136, %xmm3, %xmm8
	shufps	$221, %xmm3, %xmm5
	movaps	%xmm5, %xmm3
	movaps	%xmm8, %xmm10
	shufps	$136, %xmm0, %xmm7
	shufps	$221, %xmm0, %xmm4
	movaps	%xmm1, %xmm0
	shufps	$136, %xmm4, %xmm3
	shufps	$136, %xmm6, %xmm0
	mulps	%xmm3, %xmm0
	movaps	%xmm2, %xmm3
	shufps	$221, %xmm6, %xmm1
	shufps	$221, %xmm9, %xmm3
	shufps	$221, %xmm7, %xmm10
	mulps	%xmm10, %xmm3
	shufps	$136, %xmm9, %xmm2
	shufps	$136, %xmm7, %xmm8
	mulps	%xmm8, %xmm2
	shufps	$221, %xmm4, %xmm5
	mulps	%xmm5, %xmm1
	addps	%xmm3, %xmm0
	addps	%xmm2, %xmm0
	subps	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdx)
	cmpq	%rcx, %rdx
	jne	L34
	ret
L35:
	ret
LFE21:
	.align 4,0x90
	.globl __ZN4aosP4fillEP8ParticlePfi
__ZN4aosP4fillEP8ParticlePfi:
LFB22:
	testl	%edx, %edx
	movl	%edx, %r8d
	je	L46
	leal	(%rdx,%rdx), %r11d
	pushq	%rbx
LCFI13:
	movss	LC0(%rip), %xmm5
	xorl	%ecx, %ecx
	leal	(%r11,%rdx), %ebx
	movslq	%edx, %r10
	movslq	%r11d, %r11
	pxor	%xmm4, %xmm4
	movslq	%ebx, %rbx
	movl	$1717986919, %r9d
	.align 4,0x90
L40:
	movl	%ecx, %eax
	movss	(%rsi), %xmm0
	imull	%r9d
	movl	%ecx, %eax
	movss	(%rsi,%rbx,4), %xmm1
	sarl	$31, %eax
	movss	(%rsi,%r11,4), %xmm2
	movss	(%rsi,%r10,4), %xmm3
	movss	%xmm0, 16(%rdi)
	movaps	%xmm4, %xmm0
	sarl	$2, %edx
	movss	%xmm2, 24(%rdi)
	subl	%eax, %edx
	movss	%xmm3, 20(%rdi)
	leal	(%rdx,%rdx,4), %eax
	movss	%xmm1, 28(%rdi)
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jne	L39
	movaps	%xmm5, %xmm0
L39:
	addl	$1, %ecx
	movss	%xmm0, 32(%rdi)
	addq	$4, %rsi
	addq	$48, %rdi
	cmpl	%r8d, %ecx
	jne	L40
	popq	%rbx
LCFI14:
L46:
	ret
LFE22:
	.align 4,0x90
	.globl __ZN4aosP4lsumEb
__ZN4aosP4lsumEb:
LFB23:
	leaq	16+__ZN4aosP1bE(%rip), %rsi
	pxor	%xmm6, %xmm6
	leaq	16+__ZN4aosP1aE(%rip), %rcx
	leaq	28+__ZN4aosP1cE(%rip), %r8
	leaq	49168+__ZN4aosP1bE(%rip), %r9
	jmp	L48
	.align 4,0x90
L60:
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
L51:
	addq	$48, %rsi
	addq	$48, %rcx
	addq	$48, %r8
	cmpq	%r9, %rsi
	je	L59
L48:
	comiss	16(%rcx), %xmm6
	je	L60
	movss	(%rsi), %xmm10
	movss	-12(%r8), %xmm5
	movaps	%xmm10, %xmm0
	movss	__ZN4aosP1sE(%rip), %xmm1
	addss	%xmm5, %xmm0
	movss	4(%rsi), %xmm9
	addss	%xmm5, %xmm5
	movss	-8(%r8), %xmm4
	movss	8(%rsi), %xmm8
	addss	%xmm10, %xmm0
	movss	-4(%r8), %xmm3
	movss	12(%rsi), %xmm7
	movss	(%r8), %xmm2
	subss	%xmm5, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, (%rcx)
	movaps	%xmm9, %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm4
	addss	%xmm9, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4(%rcx)
	movaps	%xmm8, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm3, %xmm3
	addss	%xmm8, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8(%rcx)
	movaps	%xmm7, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm2
	addss	%xmm7, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 12(%rcx)
	jmp	L51
	.align 4,0x90
L59:
	testb	%dil, %dil
	je	L61
	leaq	16+__ZN4aosP1aE(%rip), %rax
	leaq	16+__ZN4aosP1bE(%rip), %rdx
	leaq	__ZN4aosP1mE(%rip), %rcx
	leaq	49168+__ZN4aosP1aE(%rip), %rsi
	.align 4,0x90
L56:
	movss	(%rdx), %xmm1
	addq	$48, %rax
	addq	$48, %rdx
	addq	$4, %rcx
	mulss	-48(%rax), %xmm1
	movss	-44(%rdx), %xmm0
	mulss	-44(%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	-40(%rdx), %xmm1
	mulss	-40(%rax), %xmm1
	addss	%xmm1, %xmm0
	movss	-36(%rdx), %xmm1
	mulss	-36(%rax), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rcx)
	cmpq	%rsi, %rax
	jne	L56
	ret
L61:
	ret
LFE23:
	.align 4,0x90
	.globl __ZN4soa46soAsumEb
__ZN4soa46soAsumEb:
LFB63:
	leaq	__ZN4soa42m1E(%rip), %rax
	movss	__ZN4soa41sE(%rip), %xmm1
	movl	$1024, 8+__ZN4soa41cE(%rip)
	movq	%rax, __ZN4soa41aE(%rip)
	leaq	__ZN4soa42m2E(%rip), %rax
	movq	%rax, __ZN4soa41bE(%rip)
	leaq	__ZN4soa42m3E(%rip), %rax
	movq	%rax, __ZN4soa41cE(%rip)
	leaq	12288+__ZN4soa42m2E(%rip), %rcx
	movl	$1024, 8+__ZN4soa41bE(%rip)
	leaq	12288+__ZN4soa42m3E(%rip), %rax
	movl	$1024, 8+__ZN4soa41aE(%rip)
	leaq	__ZN4soa42m1E(%rip), %rdx
	leaq	16384+__ZN4soa42m3E(%rip), %rsi
	.align 4,0x90
L63:
	movss	-12288(%rax), %xmm5
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	movss	-12292(%rcx), %xmm9
	movss	-8196(%rcx), %xmm8
	movaps	%xmm9, %xmm0
	movss	-8196(%rax), %xmm4
	addss	%xmm5, %xmm0
	movss	-4100(%rcx), %xmm7
	addss	%xmm5, %xmm5
	movss	-4100(%rax), %xmm3
	movss	-4(%rcx), %xmm6
	addss	%xmm9, %xmm0
	movss	-4(%rax), %xmm2
	subss	%xmm5, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rdx)
	movaps	%xmm8, %xmm0
	addss	%xmm4, %xmm0
	addss	%xmm4, %xmm4
	addss	%xmm8, %xmm0
	subss	%xmm4, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 4092(%rdx)
	movaps	%xmm7, %xmm0
	addss	%xmm3, %xmm0
	addss	%xmm3, %xmm3
	addss	%xmm7, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 8188(%rdx)
	movaps	%xmm6, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, 12284(%rdx)
	cmpq	%rsi, %rax
	jne	L63
	testb	%dil, %dil
	je	L69
	leaq	__ZN4soa41mE(%rip), %rcx
	leaq	12288+__ZN4soa42m1E(%rip), %rdx
	leaq	12288+__ZN4soa42m2E(%rip), %rax
	leaq	4096+__ZN4soa41mE(%rip), %rsi
	.align 4,0x90
L68:
	movaps	-8192(%rax), %xmm0
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$16, %rax
	mulps	-8208(%rdx), %xmm0
	movaps	-4112(%rax), %xmm1
	mulps	-4112(%rdx), %xmm1
	addps	%xmm1, %xmm0
	movaps	-12304(%rax), %xmm1
	mulps	-12304(%rdx), %xmm1
	addps	%xmm1, %xmm0
	movaps	-16(%rax), %xmm1
	mulps	-16(%rdx), %xmm1
	subps	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	cmpq	%rsi, %rcx
	jne	L68
	ret
L69:
	ret
LFE63:
	.align 4,0x90
	.globl __ZN4soaP6soAsumEb
__ZN4soaP6soAsumEb:
LFB64:
	movslq	24+__ZN4soaP1bE(%rip), %rdx
	pushq	%r15
LCFI15:
	pxor	%xmm9, %xmm9
	movl	24+__ZN4soaP1aE(%rip), %eax
	pushq	%r14
LCFI16:
	movq	16+__ZN4soaP1bE(%rip), %r8
	pushq	%r13
LCFI17:
	movq	16+__ZN4soaP1aE(%rip), %rsi
	pushq	%r12
LCFI18:
	leal	(%rdx,%rdx), %ecx
	pushq	%rbp
LCFI19:
	leal	(%rcx,%rdx), %r9d
	pushq	%rbx
LCFI20:
	movslq	%ecx, %rcx
	leaq	(%r8,%rdx,4), %rbx
	movslq	%r9d, %r9
	leal	(%rax,%rax), %edx
	leal	0(,%rax,4), %r11d
	addl	%edx, %eax
	leaq	(%r8,%rcx,4), %rbp
	movslq	%r11d, %r11
	cltq
	leaq	(%r8,%r9,4), %r12
	movslq	%edx, %rcx
	leaq	(%rsi,%r11,4), %r13
	addq	%rsi, %r11
	leaq	(%rsi,%rax,4), %r10
	xorl	%eax, %eax
	leaq	(%rsi,%rcx,4), %r9
	jmp	L71
	.align 4,0x90
L72:
	movss	%xmm3, (%rsi,%rax,4)
	movss	%xmm2, (%r11,%rax,4)
	movss	%xmm1, (%r9,%rax,4)
	movss	%xmm0, (%r10,%rax,4)
	addq	$1, %rax
	cmpq	$1024, %rax
	je	L82
L71:
	comiss	0(%r13,%rax,4), %xmm9
	movss	(%r12,%rax,4), %xmm0
	movss	0(%rbp,%rax,4), %xmm1
	movss	(%rbx,%rax,4), %xmm2
	movss	(%r8,%rax,4), %xmm3
	je	L72
	movl	24+__ZN4soaP1cE(%rip), %ecx
	addss	%xmm0, %xmm0
	movq	16+__ZN4soaP1cE(%rip), %rdx
	addss	%xmm1, %xmm1
	addss	%xmm2, %xmm2
	movss	__ZN4soaP1sE(%rip), %xmm4
	addss	%xmm3, %xmm3
	leal	(%rcx,%rcx,2), %r14d
	addl	%eax, %r14d
	movss	(%rdx,%rax,4), %xmm5
	movslq	%r14d, %r15
	subl	%ecx, %r14d
	movss	(%rdx,%r15,4), %xmm8
	movslq	%r14d, %r15
	addss	%xmm5, %xmm3
	subl	%ecx, %r14d
	movslq	%r14d, %r14
	movss	(%rdx,%r15,4), %xmm7
	addss	%xmm5, %xmm5
	movss	(%rdx,%r14,4), %xmm6
	addss	%xmm8, %xmm0
	addss	%xmm7, %xmm1
	addss	%xmm6, %xmm2
	addss	%xmm8, %xmm8
	addss	%xmm7, %xmm7
	addss	%xmm6, %xmm6
	subss	%xmm8, %xmm0
	subss	%xmm7, %xmm1
	subss	%xmm6, %xmm2
	subss	%xmm5, %xmm3
	mulss	%xmm4, %xmm0
	mulss	%xmm4, %xmm1
	mulss	%xmm4, %xmm2
	mulss	%xmm4, %xmm3
	jmp	L72
	.align 4,0x90
L82:
	leaq	__ZN4soaP1mE(%rip), %rdx
	xorw	%ax, %ax
	testb	%dil, %dil
	pxor	%xmm1, %xmm1
	je	L70
	.align 4,0x90
L80:
	movaps	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	movaps	%xmm1, %xmm3
	movlps	(%rbx,%rax), %xmm0
	movlps	(%r11,%rax), %xmm2
	movlps	0(%rbp,%rax), %xmm3
	movhps	8(%r11,%rax), %xmm2
	movhps	8(%rbx,%rax), %xmm0
	movhps	8(%rbp,%rax), %xmm3
	mulps	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	movlps	(%r9,%rax), %xmm2
	movhps	8(%r9,%rax), %xmm2
	mulps	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	movlps	(%rsi,%rax), %xmm3
	movhps	8(%rsi,%rax), %xmm3
	addps	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	movlps	(%r8,%rax), %xmm2
	movhps	8(%r8,%rax), %xmm2
	mulps	%xmm3, %xmm2
	movaps	%xmm1, %xmm3
	movlps	(%r12,%rax), %xmm3
	movhps	8(%r12,%rax), %xmm3
	addps	%xmm2, %xmm0
	movaps	%xmm1, %xmm2
	movlps	(%r10,%rax), %xmm2
	movhps	8(%r10,%rax), %xmm2
	mulps	%xmm3, %xmm2
	subps	%xmm2, %xmm0
	movaps	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	$4096, %rax
	jne	L80
L70:
	popq	%rbx
LCFI21:
	popq	%rbp
LCFI22:
	popq	%r12
LCFI23:
	popq	%r13
LCFI24:
	popq	%r14
LCFI25:
	popq	%r15
LCFI26:
	ret
LFE64:
	.align 4,0x90
	.globl __ZN4soa36soAsumEb
__ZN4soa36soAsumEb:
LFB65:
	leaq	__ZN4soa32m1E(%rip), %rax
	movss	__ZN4soa31sE(%rip), %xmm4
	movl	$1024, 8+__ZN4soa31cE(%rip)
	movq	%rax, __ZN4soa31aE(%rip)
	leaq	__ZN4soa32m2E(%rip), %rax
	movq	%rax, __ZN4soa31bE(%rip)
	leaq	__ZN4soa32m3E(%rip), %rax
	movq	%rax, __ZN4soa31cE(%rip)
	leaq	8192+__ZN4soa32m2E(%rip), %rcx
	movl	$1024, 8+__ZN4soa31bE(%rip)
	leaq	8192+__ZN4soa32m3E(%rip), %rax
	movl	$1024, 8+__ZN4soa31aE(%rip)
	leaq	__ZN4soa32m1E(%rip), %rdx
	leaq	12288+__ZN4soa32m3E(%rip), %rsi
	.align 4,0x90
L84:
	movss	-8192(%rcx), %xmm7
	addq	$4, %rax
	addq	$4, %rcx
	addq	$4, %rdx
	movss	-8196(%rax), %xmm3
	movaps	%xmm7, %xmm0
	movss	-4100(%rcx), %xmm6
	addss	%xmm3, %xmm0
	movss	-4100(%rax), %xmm2
	addss	%xmm3, %xmm3
	movss	-4(%rcx), %xmm5
	movss	-4(%rax), %xmm1
	addss	%xmm7, %xmm0
	subss	%xmm3, %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, -4(%rdx)
	movaps	%xmm6, %xmm0
	addss	%xmm2, %xmm0
	addss	%xmm2, %xmm2
	addss	%xmm6, %xmm0
	subss	%xmm2, %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, 4092(%rdx)
	movaps	%xmm5, %xmm0
	addss	%xmm1, %xmm0
	addss	%xmm1, %xmm1
	addss	%xmm5, %xmm0
	subss	%xmm1, %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm0, 8188(%rdx)
	cmpq	%rsi, %rax
	jne	L84
	testb	%dil, %dil
	je	L90
	leaq	__ZN4soa31mE(%rip), %rcx
	leaq	8192+__ZN4soa32m1E(%rip), %rdx
	leaq	8192+__ZN4soa32m2E(%rip), %rax
	leaq	4096+__ZN4soa31mE(%rip), %rsi
	.align 4,0x90
L89:
	movaps	(%rax), %xmm1
	addq	$16, %rcx
	addq	$16, %rdx
	addq	$16, %rax
	mulps	-16(%rdx), %xmm1
	movaps	-4112(%rax), %xmm0
	mulps	-4112(%rdx), %xmm0
	addps	%xmm1, %xmm0
	movaps	-8208(%rax), %xmm1
	mulps	-8208(%rdx), %xmm1
	addps	%xmm1, %xmm0
	movaps	%xmm0, -16(%rcx)
	cmpq	%rsi, %rcx
	jne	L89
	ret
L90:
	ret
LFE65:
	.section __TEXT,__text_startup,regular,pure_instructions
	.align 4
__GLOBAL__sub_I_AoSvsSoA.cc:
LFB76:
	leaq	__ZN3aos1aE(%rip), %rax
	pxor	%xmm0, %xmm0
	leaq	16384+__ZN3aos1aE(%rip), %rdx
	.align 4
L92:
	movaps	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	L92
	leaq	__ZN3aos1bE(%rip), %rax
	pxor	%xmm0, %xmm0
	leaq	16224+__ZN3aos1bE(%rip), %rdx
	.align 4
L108:
	movaps	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	L108
	leaq	__ZN3aos1cE(%rip), %rax
	pxor	%xmm0, %xmm0
	leaq	16384+__ZN3aos1cE(%rip), %rdx
	.align 4
L107:
	movaps	%xmm0, (%rax)
	addq	$16, %rax
	cmpq	%rdx, %rax
	jne	L107
	leaq	__ZN4aosP1aE(%rip), %rax
	leaq	16+__ZN4aosP1aE(%rip), %rdx
	leaq	49152+__ZN4aosP1aE(%rip), %rcx
	.align 4
L106:
	movl	$0x00000000, (%rax)
	addq	$48, %rax
	addq	$48, %rdx
	movl	$0x00000000, -44(%rax)
	movl	$0x00000000, -40(%rax)
	movl	$0x00000000, -36(%rax)
	movl	$0x00000000, -48(%rdx)
	movl	$0x00000000, -44(%rdx)
	movl	$0x00000000, -40(%rdx)
	movl	$0x00000000, -36(%rdx)
	cmpq	%rcx, %rax
	jne	L106
	leaq	__ZN4aosP1bE(%rip), %rax
	leaq	16+__ZN4aosP1bE(%rip), %rdx
	leaq	48672+__ZN4aosP1bE(%rip), %rcx
	.align 4
L105:
	movl	$0x00000000, (%rax)
	addq	$48, %rax
	addq	$48, %rdx
	movl	$0x00000000, -44(%rax)
	movl	$0x00000000, -40(%rax)
	movl	$0x00000000, -36(%rax)
	movl	$0x00000000, -48(%rdx)
	movl	$0x00000000, -44(%rdx)
	movl	$0x00000000, -40(%rdx)
	movl	$0x00000000, -36(%rdx)
	cmpq	%rcx, %rax
	jne	L105
	leaq	__ZN4aosP1cE(%rip), %rax
	leaq	16+__ZN4aosP1cE(%rip), %rdx
	leaq	49152+__ZN4aosP1cE(%rip), %rcx
	.align 4
L104:
	movl	$0x00000000, (%rax)
	addq	$48, %rax
	addq	$48, %rdx
	movl	$0x00000000, -44(%rax)
	movl	$0x00000000, -40(%rax)
	movl	$0x00000000, -36(%rax)
	movl	$0x00000000, -48(%rdx)
	movl	$0x00000000, -44(%rdx)
	movl	$0x00000000, -40(%rdx)
	movl	$0x00000000, -36(%rdx)
	cmpq	%rcx, %rax
	jne	L104
	leaq	__ZN4soaP2m1E(%rip), %rax
	movq	$0, __ZN4soa41aE(%rip)
	movq	%rax, __ZN4soaP1aE(%rip)
	leaq	16384+__ZN4soaP2m1E(%rip), %rax
	movq	%rax, 16+__ZN4soaP1aE(%rip)
	leaq	__ZN4soaP2m2E(%rip), %rax
	movq	%rax, __ZN4soaP1bE(%rip)
	leaq	16384+__ZN4soaP2m2E(%rip), %rax
	movq	%rax, 16+__ZN4soaP1bE(%rip)
	leaq	__ZN4soaP2m3E(%rip), %rax
	movq	%rax, __ZN4soaP1cE(%rip)
	leaq	16384+__ZN4soaP2m3E(%rip), %rax
	movl	$0, 8+__ZN4soa41aE(%rip)
	movq	$0, __ZN4soa41bE(%rip)
	movl	$0, 8+__ZN4soa41bE(%rip)
	movq	$0, __ZN4soa41cE(%rip)
	movl	$0, 8+__ZN4soa41cE(%rip)
	movl	$1024, 8+__ZN4soaP1aE(%rip)
	movl	$1024, 24+__ZN4soaP1aE(%rip)
	movl	$1024, 8+__ZN4soaP1bE(%rip)
	movl	$1024, 24+__ZN4soaP1bE(%rip)
	movl	$1024, 8+__ZN4soaP1cE(%rip)
	movq	%rax, 16+__ZN4soaP1cE(%rip)
	movl	$1024, 24+__ZN4soaP1cE(%rip)
	ret
LFE76:
	.globl __ZN4soa31mE
	.zerofill __DATA,__pu_bss5,__ZN4soa31mE,4096,5
	.globl __ZN4soa31sE
	.zerofill __DATA,__pu_bss2,__ZN4soa31sE,4,2
	.globl __ZN4soa31cE
	.zerofill __DATA,__pu_bss4,__ZN4soa31cE,16,4
	.globl __ZN4soa31bE
	.zerofill __DATA,__pu_bss4,__ZN4soa31bE,16,4
	.globl __ZN4soa31aE
	.zerofill __DATA,__pu_bss4,__ZN4soa31aE,16,4
	.globl __ZN4soa32m3E
	.zerofill __DATA,__pu_bss5,__ZN4soa32m3E,12288,5
	.globl __ZN4soa32m2E
	.zerofill __DATA,__pu_bss5,__ZN4soa32m2E,12288,5
	.globl __ZN4soa32m1E
	.zerofill __DATA,__pu_bss5,__ZN4soa32m1E,12288,5
	.globl __ZN4soa35arenaE
	.zerofill __DATA,__pu_bss5,__ZN4soa35arenaE,36864,5
	.globl __ZN4soa31NE
	.data
	.align 2
__ZN4soa31NE:
	.long	1024
	.globl __ZN4soaP1mE
	.zerofill __DATA,__pu_bss5,__ZN4soaP1mE,4096,5
	.globl __ZN4soaP1sE
	.zerofill __DATA,__pu_bss2,__ZN4soaP1sE,4,2
	.globl __ZN4soaP1cE
	.zerofill __DATA,__pu_bss5,__ZN4soaP1cE,32,5
	.globl __ZN4soaP1bE
	.zerofill __DATA,__pu_bss5,__ZN4soaP1bE,32,5
	.globl __ZN4soaP1aE
	.zerofill __DATA,__pu_bss5,__ZN4soaP1aE,32,5
	.globl __ZN4soaP2m3E
	.zerofill __DATA,__pu_bss5,__ZN4soaP2m3E,32768,5
	.globl __ZN4soaP2m2E
	.zerofill __DATA,__pu_bss5,__ZN4soaP2m2E,32768,5
	.globl __ZN4soaP2m1E
	.zerofill __DATA,__pu_bss5,__ZN4soaP2m1E,32768,5
	.globl __ZN4soaP5arenaE
	.zerofill __DATA,__pu_bss5,__ZN4soaP5arenaE,49152,5
	.globl __ZN4soaP1NE
	.data
	.align 2
__ZN4soaP1NE:
	.long	1024
	.globl __ZN4soa41mE
	.zerofill __DATA,__pu_bss5,__ZN4soa41mE,4096,5
	.globl __ZN4soa41sE
	.zerofill __DATA,__pu_bss2,__ZN4soa41sE,4,2
	.globl __ZN4soa41cE
	.zerofill __DATA,__pu_bss4,__ZN4soa41cE,16,4
	.globl __ZN4soa41bE
	.zerofill __DATA,__pu_bss4,__ZN4soa41bE,16,4
	.globl __ZN4soa41aE
	.zerofill __DATA,__pu_bss4,__ZN4soa41aE,16,4
	.globl __ZN4soa42m3E
	.zerofill __DATA,__pu_bss5,__ZN4soa42m3E,16384,5
	.globl __ZN4soa42m2E
	.zerofill __DATA,__pu_bss5,__ZN4soa42m2E,16384,5
	.globl __ZN4soa42m1E
	.zerofill __DATA,__pu_bss5,__ZN4soa42m1E,16384,5
	.globl __ZN4soa45arenaE
	.zerofill __DATA,__pu_bss5,__ZN4soa45arenaE,49152,5
	.globl __ZN4soa41NE
	.data
	.align 2
__ZN4soa41NE:
	.long	1024
	.globl __ZN4aosP1mE
	.zerofill __DATA,__pu_bss5,__ZN4aosP1mE,4096,5
	.globl __ZN4aosP1sE
	.zerofill __DATA,__pu_bss2,__ZN4aosP1sE,4,2
	.globl __ZN4aosP1cE
	.zerofill __DATA,__pu_bss5,__ZN4aosP1cE,49152,5
	.globl __ZN4aosP1bE
	.zerofill __DATA,__pu_bss5,__ZN4aosP1bE,48672,5
	.globl __ZN4aosP1aE
	.zerofill __DATA,__pu_bss5,__ZN4aosP1aE,49152,5
	.globl __ZN3aos1mE
	.zerofill __DATA,__pu_bss5,__ZN3aos1mE,4096,5
	.globl __ZN3aos1sE
	.zerofill __DATA,__pu_bss2,__ZN3aos1sE,4,2
	.globl __ZN3aos1cE
	.zerofill __DATA,__pu_bss5,__ZN3aos1cE,16384,5
	.globl __ZN3aos1bE
	.zerofill __DATA,__pu_bss5,__ZN3aos1bE,16224,5
	.globl __ZN3aos1aE
	.zerofill __DATA,__pu_bss5,__ZN3aos1aE,16384,5
	.literal4
	.align 2
LC0:
	.long	1065353216
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
	.quad	LFB10-.
	.set L$set$2,LFE10-LFB10
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB11-.
	.set L$set$4,LFE11-LFB11
	.quad L$set$4
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB13-.
	.set L$set$6,LFE13-LFB13
	.quad L$set$6
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$7,LEFDE7-LASFDE7
	.long L$set$7
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB20-.
	.set L$set$8,LFE20-LFB20
	.quad L$set$8
	.byte	0
	.byte	0x4
	.set L$set$9,LCFI0-LFB20
	.long L$set$9
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$10,LCFI1-LCFI0
	.long L$set$10
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$11,LCFI2-LCFI1
	.long L$set$11
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$12,LCFI3-LCFI2
	.long L$set$12
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$13,LCFI4-LCFI3
	.long L$set$13
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$14,LCFI5-LCFI4
	.long L$set$14
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$15,LCFI6-LCFI5
	.long L$set$15
	.byte	0xc3
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$16,LCFI7-LCFI6
	.long L$set$16
	.byte	0xc6
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$17,LCFI8-LCFI7
	.long L$set$17
	.byte	0xcc
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$18,LCFI9-LCFI8
	.long L$set$18
	.byte	0xcd
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$19,LCFI10-LCFI9
	.long L$set$19
	.byte	0xce
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$20,LCFI11-LCFI10
	.long L$set$20
	.byte	0xcf
	.byte	0xe
	.byte	0x8
	.byte	0x4
	.set L$set$21,LCFI12-LCFI11
	.long L$set$21
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x86
	.byte	0x6
	.byte	0x8c
	.byte	0x5
	.byte	0x8d
	.byte	0x4
	.byte	0x8e
	.byte	0x3
	.byte	0x8f
	.byte	0x2
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$22,LEFDE9-LASFDE9
	.long L$set$22
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB21-.
	.set L$set$23,LFE21-LFB21
	.quad L$set$23
	.byte	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$24,LEFDE11-LASFDE11
	.long L$set$24
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB22-.
	.set L$set$25,LFE22-LFB22
	.quad L$set$25
	.byte	0
	.byte	0x4
	.set L$set$26,LCFI13-LFB22
	.long L$set$26
	.byte	0xe
	.byte	0x10
	.byte	0x83
	.byte	0x2
	.byte	0x4
	.set L$set$27,LCFI14-LCFI13
	.long L$set$27
	.byte	0xc3
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$28,LEFDE13-LASFDE13
	.long L$set$28
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB23-.
	.set L$set$29,LFE23-LFB23
	.quad L$set$29
	.byte	0
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$30,LEFDE15-LASFDE15
	.long L$set$30
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB63-.
	.set L$set$31,LFE63-LFB63
	.quad L$set$31
	.byte	0
	.align 3
LEFDE15:
LSFDE17:
	.set L$set$32,LEFDE17-LASFDE17
	.long L$set$32
LASFDE17:
	.long	LASFDE17-EH_frame1
	.quad	LFB64-.
	.set L$set$33,LFE64-LFB64
	.quad L$set$33
	.byte	0
	.byte	0x4
	.set L$set$34,LCFI15-LFB64
	.long L$set$34
	.byte	0xe
	.byte	0x10
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.set L$set$35,LCFI16-LCFI15
	.long L$set$35
	.byte	0xe
	.byte	0x18
	.byte	0x8e
	.byte	0x3
	.byte	0x4
	.set L$set$36,LCFI17-LCFI16
	.long L$set$36
	.byte	0xe
	.byte	0x20
	.byte	0x8d
	.byte	0x4
	.byte	0x4
	.set L$set$37,LCFI18-LCFI17
	.long L$set$37
	.byte	0xe
	.byte	0x28
	.byte	0x8c
	.byte	0x5
	.byte	0x4
	.set L$set$38,LCFI19-LCFI18
	.long L$set$38
	.byte	0xe
	.byte	0x30
	.byte	0x86
	.byte	0x6
	.byte	0x4
	.set L$set$39,LCFI20-LCFI19
	.long L$set$39
	.byte	0xe
	.byte	0x38
	.byte	0x83
	.byte	0x7
	.byte	0x4
	.set L$set$40,LCFI21-LCFI20
	.long L$set$40
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.set L$set$41,LCFI22-LCFI21
	.long L$set$41
	.byte	0xe
	.byte	0x28
	.byte	0x4
	.set L$set$42,LCFI23-LCFI22
	.long L$set$42
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.set L$set$43,LCFI24-LCFI23
	.long L$set$43
	.byte	0xe
	.byte	0x18
	.byte	0x4
	.set L$set$44,LCFI25-LCFI24
	.long L$set$44
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.set L$set$45,LCFI26-LCFI25
	.long L$set$45
	.byte	0xe
	.byte	0x8
	.align 3
LEFDE17:
LSFDE19:
	.set L$set$46,LEFDE19-LASFDE19
	.long L$set$46
LASFDE19:
	.long	LASFDE19-EH_frame1
	.quad	LFB65-.
	.set L$set$47,LFE65-LFB65
	.quad L$set$47
	.byte	0
	.align 3
LEFDE19:
LSFDE21:
	.set L$set$48,LEFDE21-LASFDE21
	.long L$set$48
LASFDE21:
	.long	LASFDE21-EH_frame1
	.quad	LFB76-.
	.set L$set$49,LFE76-LFB76
	.quad L$set$49
	.byte	0
	.align 3
LEFDE21:
	.mod_init_func
	.align 3
	.quad	__GLOBAL__sub_I_AoSvsSoA.cc
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
