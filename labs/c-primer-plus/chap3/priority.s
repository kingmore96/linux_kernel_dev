	.file	"priority.c"
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu ../chap5/priority.c
# -mtune=generic -march=x86-64 -fverbose-asm -fasynchronous-unwind-tables
# -fstack-protector-strong -Wformat -Wformat-security
# -fstack-clash-protection -fcf-protection
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
# -fira-share-spill-slots -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
# -fmerge-debug-strings -fpeephole -fplt -fprefetch-loop-arrays
# -freg-struct-return -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap-separate
# -fsigned-zeros -fsplit-ivs-in-unroller -fssa-backprop
# -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# ../chap5/priority.c:6: 	int a = 16;
	movl	$16, -12(%rbp)	#, a
# ../chap5/priority.c:7: 	int k = 2;
	movl	$2, -8(%rbp)	#, k
# ../chap5/priority.c:8: 	int m = 1;
	movl	$1, -4(%rbp)	#, m
# ../chap5/priority.c:9: 	a /= SQR(k+m)/SQR(k+m);
	movl	-4(%rbp), %eax	# m, tmp91
	imull	-8(%rbp), %eax	# k, tmp91
	movl	%eax, %edx	# tmp91, _1
	movl	-8(%rbp), %eax	# k, tmp92
	leal	(%rdx,%rax), %ecx	#, _2
# ../chap5/priority.c:9: 	a /= SQR(k+m)/SQR(k+m);
	movl	-4(%rbp), %eax	# m, tmp95
	cltd
	idivl	-8(%rbp)	# k
# ../chap5/priority.c:9: 	a /= SQR(k+m)/SQR(k+m);
	leal	(%rcx,%rax), %edx	#, _4
# ../chap5/priority.c:9: 	a /= SQR(k+m)/SQR(k+m);
	movl	-4(%rbp), %eax	# m, tmp96
	imull	-8(%rbp), %eax	# k, _5
	addl	%eax, %edx	# _5, _6
	movl	-4(%rbp), %eax	# m, tmp97
	leal	(%rdx,%rax), %esi	#, _7
# ../chap5/priority.c:9: 	a /= SQR(k+m)/SQR(k+m);
	movl	-12(%rbp), %eax	# a, tmp100
	cltd
	idivl	%esi	# _7
	movl	%eax, -12(%rbp)	# tmp98, a
# ../chap5/priority.c:10: 	printf("%d\n",a);
	movl	-12(%rbp), %eax	# a, tmp101
	movl	%eax, %esi	# tmp101,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# ../chap5/priority.c:11: 	return 0;
	movl	$0, %eax	#, _14
# ../chap5/priority.c:12: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
