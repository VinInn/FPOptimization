	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB0:
	.text
LHOTB0:
	.align 4,0x90
	.globl __Z6muladdv
__Z6muladdv:
LFB0:
	leaq	_v0(%rip), %rdi
	xorl	%eax, %eax
	leaq	_v3(%rip), %rsi
	leaq	_v1(%rip), %rcx
	leaq	_v2(%rip), %rdx
	.align 4,0x90
L2:
	vmovaps	(%rsi,%rax), %ymm0
	vmovaps	(%rcx,%rax), %ymm1
	vfmadd132ps	(%rdx,%rax), %ymm1, %ymm0
	vmovaps	%ymm0, (%rdi,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L2
	vzeroupper
	ret
LFE0:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE0:
	.text
LHOTE0:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB1:
	.text
LHOTB1:
	.align 4,0x90
	.globl __Z12innerProductv
__Z12innerProductv:
LFB1:
	leaq	_v2(%rip), %rcx
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	_v1(%rip), %rdx
	.align 4,0x90
L6:
	vmovaps	(%rcx,%rax), %ymm2
	vfmadd231ps	(%rdx,%rax), %ymm2, %ymm0
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L6
	vhaddps	%ymm0, %ymm0, %ymm0
	vhaddps	%ymm0, %ymm0, %ymm1
	vperm2f128	$1, %ymm1, %ymm1, %ymm0
	vaddps	%ymm1, %ymm0, %ymm0
	vzeroupper
	ret
LFE1:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE1:
	.text
LHOTE1:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB2:
	.text
LHOTB2:
	.align 4,0x90
	.globl __Z10condAssignv
__Z10condAssignv:
LFB2:
	leaq	_v2(%rip), %rdi
	xorl	%eax, %eax
	leaq	_v0(%rip), %rdx
	leaq	_v1(%rip), %rsi
	leaq	_v3(%rip), %rcx
	.align 4,0x90
L9:
	vmovaps	(%rdi,%rax), %ymm0
	vmovaps	(%rsi,%rax), %ymm1
	vcmpltps	%ymm0, %ymm1, %ymm1
	vmulps	(%rcx,%rax), %ymm0, %ymm0
	vmaskmovps	%ymm0, %ymm1, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L9
	vzeroupper
	ret
LFE2:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE2:
	.text
LHOTE2:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB3:
	.text
LHOTB3:
	.align 4,0x90
	.globl __Z11condAssign2v
__Z11condAssign2v:
LFB3:
	leaq	_v2(%rip), %rdi
	xorl	%eax, %eax
	leaq	_v0(%rip), %rdx
	leaq	_v1(%rip), %rsi
	leaq	_v3(%rip), %rcx
	.align 4,0x90
L12:
	vmovaps	(%rdi,%rax), %ymm0
	vmulps	(%rcx,%rax), %ymm0, %ymm2
	vmovaps	(%rsi,%rax), %ymm1
	vcmpltps	%ymm0, %ymm1, %ymm0
	vmovaps	(%rdx,%rax), %ymm1
	vblendvps	%ymm0, %ymm2, %ymm1, %ymm0
	vmovaps	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L12
	vzeroupper
	ret
LFE3:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE3:
	.text
LHOTE3:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB5:
	.text
LHOTB5:
	.align 4,0x90
	.globl __Z8condAlgov
__Z8condAlgov:
LFB4:
	vmovaps	LC4(%rip), %ymm4
	xorl	%eax, %eax
	leaq	_v2(%rip), %rsi
	leaq	_v3(%rip), %rcx
	leaq	_v0(%rip), %rdx
	.align 4,0x90
L15:
	vmovaps	(%rsi,%rax), %ymm2
	vmovaps	(%rcx,%rax), %ymm1
	vmulps	%ymm2, %ymm1, %ymm3
	vrcpps	%ymm1, %ymm0
	vmulps	%ymm1, %ymm0, %ymm1
	vmulps	%ymm1, %ymm0, %ymm1
	vaddps	%ymm0, %ymm0, %ymm0
	vsubps	%ymm1, %ymm0, %ymm1
	vmulps	%ymm1, %ymm2, %ymm1
	vcmpltps	%ymm2, %ymm4, %ymm2
	vblendvps	%ymm2, %ymm3, %ymm1, %ymm0
	vmovaps	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L15
	vzeroupper
	ret
LFE4:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE5:
	.text
LHOTE5:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB6:
	.text
LHOTB6:
	.align 4,0x90
	.globl __Z3vt0v
__Z3vt0v:
LFB453:
	leaq	_v3(%rip), %rsi
	xorl	%eax, %eax
	leaq	_v2(%rip), %rcx
	leaq	_v1(%rip), %rdx
	.align 4,0x90
L18:
	vmovaps	(%rsi,%rax), %ymm4
	vmovaps	(%rcx,%rax), %ymm3
	vrcpps	%ymm4, %ymm1
	vmulps	%ymm4, %ymm1, %ymm2
	vmulps	%ymm2, %ymm1, %ymm2
	vaddps	%ymm1, %ymm1, %ymm1
	vrcpps	%ymm3, %ymm0
	vsubps	%ymm2, %ymm1, %ymm2
	vmulps	%ymm3, %ymm0, %ymm1
	vmulps	%ymm1, %ymm0, %ymm1
	vaddps	%ymm0, %ymm0, %ymm0
	vmulps	%ymm2, %ymm3, %ymm2
	vsubps	%ymm1, %ymm0, %ymm1
	vcmpltps	%ymm4, %ymm3, %ymm0
	vmulps	%ymm1, %ymm4, %ymm1
	vblendvps	%ymm0, %ymm2, %ymm1, %ymm0
	vmovaps	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L18
	vzeroupper
	ret
LFE453:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE6:
	.text
LHOTE6:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB7:
	.text
LHOTB7:
	.align 4,0x90
	.globl __Z3vt1v
__Z3vt1v:
LFB454:
	leaq	_v3(%rip), %rsi
	xorl	%eax, %eax
	leaq	_v2(%rip), %rcx
	leaq	_v1(%rip), %rdx
	.align 4,0x90
L21:
	vmovaps	(%rcx,%rax), %ymm1
	vmovaps	(%rsi,%rax), %ymm0
	vminps	%ymm0, %ymm1, %ymm2
	vmaxps	%ymm0, %ymm1, %ymm0
	vrcpps	%ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm0
	vmulps	%ymm0, %ymm1, %ymm0
	vaddps	%ymm1, %ymm1, %ymm1
	vsubps	%ymm0, %ymm1, %ymm0
	vmulps	%ymm0, %ymm2, %ymm0
	vmovaps	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L21
	vzeroupper
	ret
LFE454:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE7:
	.text
LHOTE7:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDB8:
	.text
LHOTB8:
	.align 4,0x90
	.globl __Z3vt2v
__Z3vt2v:
LFB455:
	leaq	_v3(%rip), %rsi
	xorl	%eax, %eax
	leaq	_v2(%rip), %rcx
	leaq	_v1(%rip), %rdx
	.align 4,0x90
L24:
	vmovaps	(%rcx,%rax), %ymm1
	vmovaps	(%rsi,%rax), %ymm0
	vminps	%ymm0, %ymm1, %ymm2
	vmaxps	%ymm0, %ymm1, %ymm0
	vrcpps	%ymm0, %ymm1
	vmulps	%ymm0, %ymm1, %ymm0
	vmulps	%ymm0, %ymm1, %ymm0
	vaddps	%ymm1, %ymm1, %ymm1
	vsubps	%ymm0, %ymm1, %ymm0
	vmulps	%ymm0, %ymm2, %ymm0
	vmovaps	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$4096, %rax
	jne	L24
	vzeroupper
	ret
LFE455:
	.section __TEXT,__text_cold,regular,pure_instructions
LCOLDE8:
	.text
LHOTE8:
	.globl _v3
	.zerofill __DATA,__pu_bss6,_v3,4096,6
	.globl _v2
	.zerofill __DATA,__pu_bss6,_v2,4096,6
	.globl _v1
	.zerofill __DATA,__pu_bss6,_v1,4096,6
	.globl _v0
	.zerofill __DATA,__pu_bss6,_v0,4096,6
	.const
	.align 5
LC4:
	.long	1052602532
	.long	1052602532
	.long	1052602532
	.long	1052602532
	.long	1052602532
	.long	1052602532
	.long	1052602532
	.long	1052602532
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
	.quad	LFB0-.
	.set L$set$2,LFE0-LFB0
	.quad L$set$2
	.byte	0
	.align 3
LEFDE1:
LSFDE3:
	.set L$set$3,LEFDE3-LASFDE3
	.long L$set$3
LASFDE3:
	.long	LASFDE3-EH_frame1
	.quad	LFB1-.
	.set L$set$4,LFE1-LFB1
	.quad L$set$4
	.byte	0
	.align 3
LEFDE3:
LSFDE5:
	.set L$set$5,LEFDE5-LASFDE5
	.long L$set$5
LASFDE5:
	.long	LASFDE5-EH_frame1
	.quad	LFB2-.
	.set L$set$6,LFE2-LFB2
	.quad L$set$6
	.byte	0
	.align 3
LEFDE5:
LSFDE7:
	.set L$set$7,LEFDE7-LASFDE7
	.long L$set$7
LASFDE7:
	.long	LASFDE7-EH_frame1
	.quad	LFB3-.
	.set L$set$8,LFE3-LFB3
	.quad L$set$8
	.byte	0
	.align 3
LEFDE7:
LSFDE9:
	.set L$set$9,LEFDE9-LASFDE9
	.long L$set$9
LASFDE9:
	.long	LASFDE9-EH_frame1
	.quad	LFB4-.
	.set L$set$10,LFE4-LFB4
	.quad L$set$10
	.byte	0
	.align 3
LEFDE9:
LSFDE11:
	.set L$set$11,LEFDE11-LASFDE11
	.long L$set$11
LASFDE11:
	.long	LASFDE11-EH_frame1
	.quad	LFB453-.
	.set L$set$12,LFE453-LFB453
	.quad L$set$12
	.byte	0
	.align 3
LEFDE11:
LSFDE13:
	.set L$set$13,LEFDE13-LASFDE13
	.long L$set$13
LASFDE13:
	.long	LASFDE13-EH_frame1
	.quad	LFB454-.
	.set L$set$14,LFE454-LFB454
	.quad L$set$14
	.byte	0
	.align 3
LEFDE13:
LSFDE15:
	.set L$set$15,LEFDE15-LASFDE15
	.long L$set$15
LASFDE15:
	.long	LASFDE15-EH_frame1
	.quad	LFB455-.
	.set L$set$16,LFE455-LFB455
	.quad L$set$16
	.byte	0
	.align 3
LEFDE15:
	.constructor
	.destructor
	.align 1
	.subsections_via_symbols
