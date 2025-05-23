	.file	"use_datatype.c"
# GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (x86_64-linux-gnu)
#	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu use_datatype.c
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
	.globl	test1
	.type	test1, @function
test1:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# use_datatype.c:7: 	int a = 12.99;
	movl	$12, -4(%rbp)	#, a
# use_datatype.c:8: 	printf("%d\n",a);
	movl	-4(%rbp), %eax	# a, tmp82
	movl	%eax, %esi	# tmp82,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:9: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	test1, .-test1
	.globl	test2
	.type	test2, @function
test2:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# use_datatype.c:13: 	double a = 12.99;
	movsd	.LC1(%rip), %xmm0	#, tmp82
	movsd	%xmm0, -8(%rbp)	# tmp82, a
# use_datatype.c:14: 	int b = a;
	movsd	-8(%rbp), %xmm0	# a, tmp83
	cvttsd2sil	%xmm0, %eax	# tmp83, tmp84
	movl	%eax, -12(%rbp)	# tmp84, b
# use_datatype.c:15: 	printf("%d\n",b);
	movl	-12(%rbp), %eax	# b, tmp85
	movl	%eax, %esi	# tmp85,
	leaq	.LC0(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:16: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	test2, .-test2
	.section	.rodata
.LC2:
	.string	"%f\n"
	.text
	.globl	test3
	.type	test3, @function
test3:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:25: 	uint64_t low = 1202590843ULL;
	movq	$1202590843, -24(%rbp)	#, low
# use_datatype.c:26: 	uint64_t high = 1076493025ULL;
	movq	$1076493025, -16(%rbp)	#, high
# use_datatype.c:28: 	uint64_t combined = high << 32 | low;
	movq	-16(%rbp), %rax	# high, tmp84
	salq	$32, %rax	#, _1
# use_datatype.c:28: 	uint64_t combined = high << 32 | low;
	orq	-24(%rbp), %rax	# low, tmp86
	movq	%rax, -8(%rbp)	# tmp86, combined
# use_datatype.c:29: 	c.v = combined;
	movq	-8(%rbp), %rax	# combined, tmp87
	movq	%rax, -32(%rbp)	# tmp87, c.v
# use_datatype.c:31: 	printf("%f\n",c.d);
	movq	-32(%rbp), %rax	# c.d, _2
	movq	%rax, %xmm0	# _2,
	leaq	.LC2(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:32: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	test3, .-test3
	.globl	test4
	.type	test4, @function
test4:
.LFB3:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
# use_datatype.c:35: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp83
	movq	%rax, -8(%rbp)	# tmp83, D.2668
	xorl	%eax, %eax	# tmp83
# use_datatype.c:41: 	c.v[1] = 1076493025;
	movl	$1076493025, -12(%rbp)	#, c.v
# use_datatype.c:42: 	c.v[0] = 1202590843;
	movl	$1202590843, -16(%rbp)	#, c.v
# use_datatype.c:44: 	printf("%f\n",c.d);
	movq	-16(%rbp), %rax	# c.d, _1
	movq	%rax, %xmm0	# _1,
	leaq	.LC2(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:45: }	
	nop	
	movq	-8(%rbp), %rax	# D.2668, tmp84
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp84
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	test4, .-test4
	.section	.rodata
.LC3:
	.string	"%016llX\n"
.LC4:
	.string	"%016lX\n"
	.text
	.globl	test5
	.type	test5, @function
test5:
.LFB4:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:48: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp86
	movq	%rax, -8(%rbp)	# tmp86, D.2670
	xorl	%eax, %eax	# tmp86
# use_datatype.c:49: 	double d = 12.99;
	movsd	.LC1(%rip), %xmm0	#, tmp85
	movsd	%xmm0, -24(%rbp)	# tmp85, d
# use_datatype.c:50: 	printf("%016llX\n",d);
	movq	-24(%rbp), %rax	# d, d.0_1
	movq	%rax, %xmm0	# d.0_1,
	leaq	.LC3(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
	movq	-24(%rbp), %rax	# MEM[(char * {ref-all})&d], _6
# use_datatype.c:53: 	memcpy(&bits,&d,sizeof(bits));
	movq	%rax, -16(%rbp)	# _6, MEM[(char * {ref-all})&bits]
# use_datatype.c:55: 	printf("%016lX\n",bits);
	movq	-16(%rbp), %rax	# bits, bits.1_2
	movq	%rax, %rsi	# bits.1_2,
	leaq	.LC4(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:56: }
	nop	
	movq	-8(%rbp), %rax	# D.2670, tmp87
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp87
	je	.L7	#,
	call	__stack_chk_fail@PLT	#
.L7:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	test5, .-test5
	.section	.rodata
.LC5:
	.string	"py_low:1202590843U = %016X\n"
.LC6:
	.string	"py_high:1076493025U = %016X\n"
.LC7:
	.string	"%02X "
	.text
	.globl	test6
	.type	test6, @function
test6:
.LFB5:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:60: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.2673
	xorl	%eax, %eax	# tmp92
# use_datatype.c:61: 	printf("py_low:1202590843U = %016X\n",1202590843U);
	movl	$1202590843, %esi	#,
	leaq	.LC5(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:62: 	printf("py_high:1076493025U = %016X\n",1076493025U);
	movl	$1076493025, %esi	#,
	leaq	.LC6(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:64: 	double d = 12.99;
	movsd	.LC1(%rip), %xmm0	#, tmp88
	movsd	%xmm0, -24(%rbp)	# tmp88, d
# use_datatype.c:65: 	char *p = (char*)&d;
	leaq	-24(%rbp), %rax	#, tmp89
	movq	%rax, -16(%rbp)	# tmp89, p
# use_datatype.c:67: 	for(int i = 0;i < sizeof(d);i++){
	movl	$0, -28(%rbp)	#, i
# use_datatype.c:67: 	for(int i = 0;i < sizeof(d);i++){
	jmp	.L9	#
.L10:
# use_datatype.c:68: 		printf("%02X ",(unsigned char)(*(p+i)));
	movl	-28(%rbp), %eax	# i, tmp90
	movslq	%eax, %rdx	# tmp90, _1
	movq	-16(%rbp), %rax	# p, tmp91
	addq	%rdx, %rax	# _1, _2
# use_datatype.c:68: 		printf("%02X ",(unsigned char)(*(p+i)));
	movzbl	(%rax), %eax	# *_2, _3
# use_datatype.c:68: 		printf("%02X ",(unsigned char)(*(p+i)));
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %esi	# _5,
	leaq	.LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:67: 	for(int i = 0;i < sizeof(d);i++){
	addl	$1, -28(%rbp)	#, i
.L9:
# use_datatype.c:67: 	for(int i = 0;i < sizeof(d);i++){
	movl	-28(%rbp), %eax	# i, i.2_6
# use_datatype.c:67: 	for(int i = 0;i < sizeof(d);i++){
	cmpl	$7, %eax	#, i.2_6
	jbe	.L10	#,
# use_datatype.c:70: 	printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# use_datatype.c:71: }
	nop	
	movq	-8(%rbp), %rax	# D.2673, tmp93
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	je	.L11	#,
	call	__stack_chk_fail@PLT	#
.L11:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	test6, .-test6
	.section	.rodata
.LC8:
	.string	"value d = %d , X = %08X\n"
	.text
	.globl	test7
	.type	test7, @function
test7:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# use_datatype.c:74: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	movq	%rax, -8(%rbp)	# tmp91, D.2677
	xorl	%eax, %eax	# tmp91
# use_datatype.c:75: 	double d = 12.99;
	movsd	.LC1(%rip), %xmm0	#, tmp86
	movsd	%xmm0, -32(%rbp)	# tmp86, d
# use_datatype.c:76: 	unsigned char *p = (unsigned char*)&d;
	leaq	-32(%rbp), %rax	#, tmp87
	movq	%rax, -24(%rbp)	# tmp87, p
# use_datatype.c:81: 	for(int i = 0; i < 2;i++){
	movl	$0, -40(%rbp)	#, i
# use_datatype.c:81: 	for(int i = 0; i < 2;i++){
	jmp	.L13	#
.L16:
# use_datatype.c:82: 		for(int j = 0;j<4;j++){
	movl	$0, -36(%rbp)	#, j
# use_datatype.c:82: 		for(int j = 0;j<4;j++){
	jmp	.L14	#
.L15:
# use_datatype.c:83: 			arr[j] = *p;
	movq	-24(%rbp), %rax	# p, tmp88
	movzbl	(%rax), %edx	# *p_4, _1
# use_datatype.c:83: 			arr[j] = *p;
	movl	-36(%rbp), %eax	# j, tmp90
	cltq
	movb	%dl, -12(%rbp,%rax)	# _1, arr
# use_datatype.c:84: 			p = p + 1;
	addq	$1, -24(%rbp)	#, p
# use_datatype.c:82: 		for(int j = 0;j<4;j++){
	addl	$1, -36(%rbp)	#, j
.L14:
# use_datatype.c:82: 		for(int j = 0;j<4;j++){
	cmpl	$3, -36(%rbp)	#, j
	jle	.L15	#,
	movl	-12(%rbp), %eax	# MEM[(char * {ref-all})&arr], _18
# use_datatype.c:86: 		memcpy(&value,arr,sizeof(uint32_t));
	movl	%eax, -44(%rbp)	# _18, MEM[(char * {ref-all})&value]
# use_datatype.c:87: 		printf("value d = %d , X = %08X\n",value,value);
	movl	-44(%rbp), %edx	# value, value.3_2
	movl	-44(%rbp), %eax	# value, value.4_3
	movl	%eax, %esi	# value.4_3,
	leaq	.LC8(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:81: 	for(int i = 0; i < 2;i++){
	addl	$1, -40(%rbp)	#, i
.L13:
# use_datatype.c:81: 	for(int i = 0; i < 2;i++){
	cmpl	$1, -40(%rbp)	#, i
	jle	.L16	#,
# use_datatype.c:89: }
	nop	
	movq	-8(%rbp), %rax	# D.2677, tmp92
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	je	.L17	#,
	call	__stack_chk_fail@PLT	#
.L17:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	test7, .-test7
	.section	.rodata
.LC9:
	.string	"%d"
	.text
	.globl	print_bits_double
	.type	print_bits_double, @function
print_bits_double:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movsd	%xmm0, -24(%rbp)	# d, d
# use_datatype.c:98: 	c.d = d;
	movsd	-24(%rbp), %xmm0	# d, tmp87
	movsd	%xmm0, -8(%rbp)	# tmp87, c.d
# use_datatype.c:100: 	for(int i = 0;i<64;i++){
	movl	$0, -12(%rbp)	#, i
# use_datatype.c:100: 	for(int i = 0;i<64;i++){
	jmp	.L19	#
.L22:
# use_datatype.c:101: 		printf("%d",(c.v & 1ULL<<(64-i-1))? 1:0);
	movq	-8(%rbp), %rdx	# c.v, _1
# use_datatype.c:101: 		printf("%d",(c.v & 1ULL<<(64-i-1))? 1:0);
	movl	-12(%rbp), %eax	# i, tmp88
	movabsq	$-9223372036854775808, %rsi	#, tmp89
	movl	%eax, %ecx	# tmp88, tmp91
	shrq	%cl, %rsi	# tmp91, tmp89
	movq	%rsi, %rax	# tmp89, _2
# use_datatype.c:101: 		printf("%d",(c.v & 1ULL<<(64-i-1))? 1:0);
	andq	%rdx, %rax	# _1, _3
# use_datatype.c:101: 		printf("%d",(c.v & 1ULL<<(64-i-1))? 1:0);
	testq	%rax, %rax	# _3
	setne	%al	#, _4
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %esi	# _5,
	leaq	.LC9(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:102: 		if(i == 0 || i == 11){
	cmpl	$0, -12(%rbp)	#, i
	je	.L20	#,
# use_datatype.c:102: 		if(i == 0 || i == 11){
	cmpl	$11, -12(%rbp)	#, i
	jne	.L21	#,
.L20:
# use_datatype.c:103: 			printf(" ");
	movl	$32, %edi	#,
	call	putchar@PLT	#
.L21:
# use_datatype.c:100: 	for(int i = 0;i<64;i++){
	addl	$1, -12(%rbp)	#, i
.L19:
# use_datatype.c:100: 	for(int i = 0;i<64;i++){
	cmpl	$63, -12(%rbp)	#, i
	jle	.L22	#,
# use_datatype.c:106: 	printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# use_datatype.c:107: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	print_bits_double, .-print_bits_double
	.globl	print_bits_float
	.type	print_bits_float, @function
print_bits_float:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movss	%xmm0, -20(%rbp)	# f, f
# use_datatype.c:115: 	c.f = f;
	movss	-20(%rbp), %xmm0	# f, tmp87
	movss	%xmm0, -8(%rbp)	# tmp87, c.f
# use_datatype.c:117: 	for(int i =0;i<32;i++){
	movl	$0, -4(%rbp)	#, i
# use_datatype.c:117: 	for(int i =0;i<32;i++){
	jmp	.L24	#
.L27:
# use_datatype.c:118: 		printf("%d",(c.v &1<<(32-i-1))? 1: 0);
	movl	-8(%rbp), %edx	# c.v, _1
# use_datatype.c:118: 		printf("%d",(c.v &1<<(32-i-1))? 1: 0);
	movl	-4(%rbp), %eax	# i, tmp88
	movl	$-2147483648, %esi	#, tmp89
	movl	%eax, %ecx	# tmp88, tmp91
	shrl	%cl, %esi	# tmp91, tmp89
	movl	%esi, %eax	# tmp89, _2
# use_datatype.c:118: 		printf("%d",(c.v &1<<(32-i-1))? 1: 0);
	andl	%edx, %eax	# _1, _3
# use_datatype.c:118: 		printf("%d",(c.v &1<<(32-i-1))? 1: 0);
	testl	%eax, %eax	# _3
	setne	%al	#, _4
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %esi	# _5,
	leaq	.LC9(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:119: 		if(i == 0 || i == 8){
	cmpl	$0, -4(%rbp)	#, i
	je	.L25	#,
# use_datatype.c:119: 		if(i == 0 || i == 8){
	cmpl	$8, -4(%rbp)	#, i
	jne	.L26	#,
.L25:
# use_datatype.c:120: 			printf(" ");
	movl	$32, %edi	#,
	call	putchar@PLT	#
.L26:
# use_datatype.c:117: 	for(int i =0;i<32;i++){
	addl	$1, -4(%rbp)	#, i
.L24:
# use_datatype.c:117: 	for(int i =0;i<32;i++){
	cmpl	$31, -4(%rbp)	#, i
	jle	.L27	#,
# use_datatype.c:123: 	printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# use_datatype.c:124: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	print_bits_float, .-print_bits_float
	.section	.rodata
.LC11:
	.string	"3.1415926534 = %.15f\n"
.LC13:
	.string	"1078530011U = %.15f\n"
	.text
	.globl	test8
	.type	test8, @function
test8:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:129: 	double d = 3.1415926534;
	movsd	.LC10(%rip), %xmm0	#, tmp86
	movsd	%xmm0, -8(%rbp)	# tmp86, d
# use_datatype.c:130: 	print_bits_double(d);
	movq	-8(%rbp), %rax	# d, tmp87
	movq	%rax, %xmm0	# tmp87,
	call	print_bits_double	#
# use_datatype.c:131: 	printf("3.1415926534 = %.15f\n",d);
	movq	-8(%rbp), %rax	# d, tmp88
	movq	%rax, %xmm0	# tmp88,
	leaq	.LC11(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:133: 	float f = d;
	cvtsd2ss	-8(%rbp), %xmm0	# d, tmp90
	movss	%xmm0, -16(%rbp)	# tmp90, f
# use_datatype.c:134: 	print_bits_float(f);
	movl	-16(%rbp), %eax	# f, tmp91
	movd	%eax, %xmm0	# tmp91,
	call	print_bits_float	#
# use_datatype.c:135: 	printf("3.1415926534 = %.15f\n",f);
	cvtss2sd	-16(%rbp), %xmm0	# f, _1
	leaq	.LC11(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:137: 	float f2 = 3.1415926534;
	movss	.LC12(%rip), %xmm0	#, tmp92
	movss	%xmm0, -12(%rbp)	# tmp92, f2
# use_datatype.c:138: 	printf("3.1415926534 = %.15f\n",f2);
	cvtss2sd	-12(%rbp), %xmm0	# f2, _2
	leaq	.LC11(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:145: 	c.v = 1078530011U;
	movl	$1078530011, -20(%rbp)	#, c.v
# use_datatype.c:146: 	printf("1078530011U = %.15f\n",c.f2);
	movss	-20(%rbp), %xmm0	# c.f2, _3
# use_datatype.c:146: 	printf("1078530011U = %.15f\n",c.f2);
	cvtss2sd	%xmm0, %xmm0	# _3, _4
	leaq	.LC13(%rip), %rdi	#,
	movl	$1, %eax	#,
	call	printf@PLT	#
# use_datatype.c:147: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	test8, .-test8
	.globl	test9
	.type	test9, @function
test9:
.LFB10:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:150: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	movq	%rax, -8(%rbp)	# tmp99, D.2682
	xorl	%eax, %eax	# tmp99
# use_datatype.c:151: 	int i = 70000;
	movl	$70000, -28(%rbp)	#, i
# use_datatype.c:152: 	short s = i;
	movl	-28(%rbp), %eax	# i, i.5_1
	movw	%ax, -30(%rbp)	# i.5_1, s
# use_datatype.c:154: 	unsigned char *p = (unsigned char*)&i;
	leaq	-28(%rbp), %rax	#, tmp93
	movq	%rax, -16(%rbp)	# tmp93, p
# use_datatype.c:156: 	for(int i =0;i<sizeof(i);i++){
	movl	$0, -24(%rbp)	#, i
# use_datatype.c:156: 	for(int i =0;i<sizeof(i);i++){
	jmp	.L30	#
.L31:
# use_datatype.c:157: 		printf("%02X ",*(p+i));
	movl	-24(%rbp), %eax	# i, tmp94
	movslq	%eax, %rdx	# tmp94, _2
	movq	-16(%rbp), %rax	# p, tmp95
	addq	%rdx, %rax	# _2, _3
# use_datatype.c:157: 		printf("%02X ",*(p+i));
	movzbl	(%rax), %eax	# *_3, _4
# use_datatype.c:157: 		printf("%02X ",*(p+i));
	movzbl	%al, %eax	# _4, _5
	movl	%eax, %esi	# _5,
	leaq	.LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:156: 	for(int i =0;i<sizeof(i);i++){
	addl	$1, -24(%rbp)	#, i
.L30:
# use_datatype.c:156: 	for(int i =0;i<sizeof(i);i++){
	movl	-24(%rbp), %eax	# i, i.6_6
# use_datatype.c:156: 	for(int i =0;i<sizeof(i);i++){
	cmpl	$3, %eax	#, i.6_6
	jbe	.L31	#,
# use_datatype.c:160: 	printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# use_datatype.c:161: 	p = (unsigned char*)&i;
	leaq	-28(%rbp), %rax	#, tmp96
	movq	%rax, -16(%rbp)	# tmp96, p
# use_datatype.c:163: 	for(int i = 0;i<sizeof(short);i++){
	movl	$0, -20(%rbp)	#, i
# use_datatype.c:163: 	for(int i = 0;i<sizeof(short);i++){
	jmp	.L32	#
.L33:
# use_datatype.c:164: 		printf("%02X ",*(p+i));
	movl	-20(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _7
	movq	-16(%rbp), %rax	# p, tmp98
	addq	%rdx, %rax	# _7, _8
# use_datatype.c:164: 		printf("%02X ",*(p+i));
	movzbl	(%rax), %eax	# *_8, _9
# use_datatype.c:164: 		printf("%02X ",*(p+i));
	movzbl	%al, %eax	# _9, _10
	movl	%eax, %esi	# _10,
	leaq	.LC7(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:163: 	for(int i = 0;i<sizeof(short);i++){
	addl	$1, -20(%rbp)	#, i
.L32:
# use_datatype.c:163: 	for(int i = 0;i<sizeof(short);i++){
	movl	-20(%rbp), %eax	# i, i.7_11
# use_datatype.c:163: 	for(int i = 0;i<sizeof(short);i++){
	cmpl	$1, %eax	#, i.7_11
	jbe	.L33	#,
# use_datatype.c:166: 	printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
# use_datatype.c:167: }	
	nop	
	movq	-8(%rbp), %rax	# D.2682, tmp100
	xorq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp100
	je	.L34	#,
	call	__stack_chk_fail@PLT	#
.L34:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	test9, .-test9
	.section	.rodata
.LC14:
	.string	"ul_a = %lu, ull_b = %llu\n"
.LC15:
	.string	"ui_a = %u, i_b = %d\n"
.LC16:
	.string	"i_a = %d,ui_b = %u\n"
.LC17:
	.string	"l_a = %ld, ll_b = %lld\n"
	.text
	.globl	test10
	.type	test10, @function
test10:
.LFB11:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
# use_datatype.c:171: 	unsigned long ul_a = 0xFFFFFFFFFFFFFFFFL;
	movq	$-1, -32(%rbp)	#, ul_a
# use_datatype.c:172: 	unsigned long long ull_b = ul_a;
	movq	-32(%rbp), %rax	# ul_a, tmp82
	movq	%rax, -24(%rbp)	# tmp82, ull_b
# use_datatype.c:174: 	printf("ul_a = %lu, ull_b = %llu\n",ul_a,ull_b);
	movq	-24(%rbp), %rdx	# ull_b, tmp83
	movq	-32(%rbp), %rax	# ul_a, tmp84
	movq	%rax, %rsi	# tmp84,
	leaq	.LC14(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:176: 	unsigned int ui_a = 0xFFFFFFFF;
	movl	$-1, -48(%rbp)	#, ui_a
# use_datatype.c:177: 	int i_b = ui_a;
	movl	-48(%rbp), %eax	# ui_a, tmp85
	movl	%eax, -44(%rbp)	# tmp85, i_b
# use_datatype.c:178: 	printf("ui_a = %u, i_b = %d\n",ui_a,i_b);
	movl	-44(%rbp), %edx	# i_b, tmp86
	movl	-48(%rbp), %eax	# ui_a, tmp87
	movl	%eax, %esi	# tmp87,
	leaq	.LC15(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:180: 	int i_a = 0xFFFFFFFF;
	movl	$-1, -40(%rbp)	#, i_a
# use_datatype.c:181: 	unsigned int ui_b = i_a;
	movl	-40(%rbp), %eax	# i_a, tmp88
	movl	%eax, -36(%rbp)	# tmp88, ui_b
# use_datatype.c:182: 	printf("i_a = %d,ui_b = %u\n",i_a,ui_b);
	movl	-36(%rbp), %edx	# ui_b, tmp89
	movl	-40(%rbp), %eax	# i_a, tmp90
	movl	%eax, %esi	# tmp90,
	leaq	.LC16(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:184: 	long l_a = 0xFFFFFFFFFFFFFFFF;
	movq	$-1, -16(%rbp)	#, l_a
# use_datatype.c:185: 	long long ll_b = l_a;
	movq	-16(%rbp), %rax	# l_a, tmp91
	movq	%rax, -8(%rbp)	# tmp91, ll_b
# use_datatype.c:186: 	printf("l_a = %ld, ll_b = %lld\n",l_a,ll_b);
	movq	-8(%rbp), %rdx	# ll_b, tmp92
	movq	-16(%rbp), %rax	# l_a, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC17(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:187: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	test10, .-test10
	.section	.rodata
.LC18:
	.string	"u32 = %u\n"
.LC19:
	.string	"i32 = %d\n"
	.text
	.globl	test11
	.type	test11, @function
test11:
.LFB12:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:191: 	uint64_t u64 = 0xFFFFFFFFFFFFFFFFL;
	movq	$-1, -16(%rbp)	#, u64
# use_datatype.c:192: 	uint32_t u32 = u64;
	movq	-16(%rbp), %rax	# u64, tmp82
	movl	%eax, -24(%rbp)	# tmp82, u32
# use_datatype.c:193: 	printf("u32 = %u\n",u32);
	movl	-24(%rbp), %eax	# u32, tmp83
	movl	%eax, %esi	# tmp83,
	leaq	.LC18(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:195: 	int32_t i32 = u64;
	movq	-16(%rbp), %rax	# u64, tmp84
	movl	%eax, -20(%rbp)	# tmp84, i32
# use_datatype.c:196: 	printf("i32 = %d\n",i32);
	movl	-20(%rbp), %eax	# i32, tmp85
	movl	%eax, %esi	# tmp85,
	leaq	.LC19(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:198: 	int64_t i64 = 0xFFFFFFFFFFFFFFFFL;
	movq	$-1, -8(%rbp)	#, i64
# use_datatype.c:199: 	u32 = i64;
	movq	-8(%rbp), %rax	# i64, tmp86
	movl	%eax, -24(%rbp)	# tmp86, u32
# use_datatype.c:200: 	printf("u32 = %u\n",u32);
	movl	-24(%rbp), %eax	# u32, tmp87
	movl	%eax, %esi	# tmp87,
	leaq	.LC18(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:202: 	i32 = i64;
	movq	-8(%rbp), %rax	# i64, tmp88
	movl	%eax, -20(%rbp)	# tmp88, i32
# use_datatype.c:203: 	printf("i32 = %d\n",i32);
	movl	-20(%rbp), %eax	# i32, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC19(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:204: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	test11, .-test11
	.section	.rodata
.LC20:
	.string	"u64 = %lu\n"
.LC21:
	.string	"i64 = %ld\n"
	.text
	.globl	test12
	.type	test12, @function
test12:
.LFB13:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# use_datatype.c:208: 	uint32_t u32 = 0xFFFFFFFF;
	movl	$-1, -24(%rbp)	#, u32
# use_datatype.c:209: 	uint64_t u64 = u32;
	movl	-24(%rbp), %eax	# u32, tmp94
	movq	%rax, -16(%rbp)	# tmp94, u64
# use_datatype.c:210: 	printf("u64 = %lu\n",u64);
	movq	-16(%rbp), %rax	# u64, tmp82
	movq	%rax, %rsi	# tmp82,
	leaq	.LC20(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:212: 	uint16_t u16 = 0xFFFF;
	movw	$-1, -28(%rbp)	#, u16
# use_datatype.c:213: 	u64 = u16;
	movzwl	-28(%rbp), %eax	# u16, tmp83
	movq	%rax, -16(%rbp)	# tmp83, u64
# use_datatype.c:215: 	int64_t i64 = u32;
	movl	-24(%rbp), %eax	# u32, tmp95
	movq	%rax, -8(%rbp)	# tmp95, i64
# use_datatype.c:216: 	printf("i64 = %ld\n",i64);
	movq	-8(%rbp), %rax	# i64, tmp84
	movq	%rax, %rsi	# tmp84,
	leaq	.LC21(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:218: 	i64 = u16;
	movzwl	-28(%rbp), %eax	# u16, tmp85
	movq	%rax, -8(%rbp)	# tmp85, i64
# use_datatype.c:220: 	int32_t i32 = 0xFFFFFFFF;
	movl	$-1, -20(%rbp)	#, i32
# use_datatype.c:221: 	u64 = i32;
	movl	-20(%rbp), %eax	# i32, tmp87
	cltq
	movq	%rax, -16(%rbp)	# tmp86, u64
# use_datatype.c:222: 	printf("u64 = %lu\n",u64);
	movq	-16(%rbp), %rax	# u64, tmp88
	movq	%rax, %rsi	# tmp88,
	leaq	.LC20(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:224: 	int16_t i16 = 0xFFFF;
	movw	$-1, -26(%rbp)	#, i16
# use_datatype.c:225: 	u64 = i16;
	movswq	-26(%rbp), %rax	# i16, tmp89
	movq	%rax, -16(%rbp)	# tmp89, u64
# use_datatype.c:227: 	i64 = i32;
	movl	-20(%rbp), %eax	# i32, tmp91
	cltq
	movq	%rax, -8(%rbp)	# tmp90, i64
# use_datatype.c:228: 	i64 = i16;
	movswq	-26(%rbp), %rax	# i16, tmp92
	movq	%rax, -8(%rbp)	# tmp92, i64
# use_datatype.c:229: 	printf("i64 = %ld\n",i64);
	movq	-8(%rbp), %rax	# i64, tmp93
	movq	%rax, %rsi	# tmp93,
	leaq	.LC21(%rip), %rdi	#,
	movl	$0, %eax	#,
	call	printf@PLT	#
# use_datatype.c:230: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	test12, .-test12
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# use_datatype.c:234: 	test1();
	movl	$0, %eax	#,
	call	test1	#
# use_datatype.c:235: 	test2();
	movl	$0, %eax	#,
	call	test2	#
# use_datatype.c:236: 	test3();
	movl	$0, %eax	#,
	call	test3	#
# use_datatype.c:237: 	test4();
	movl	$0, %eax	#,
	call	test4	#
# use_datatype.c:238: 	test5();
	movl	$0, %eax	#,
	call	test5	#
# use_datatype.c:239: 	test6();
	movl	$0, %eax	#,
	call	test6	#
# use_datatype.c:240: 	test7();
	movl	$0, %eax	#,
	call	test7	#
# use_datatype.c:241: 	test8();
	movl	$0, %eax	#,
	call	test8	#
# use_datatype.c:242: 	test9();
	movl	$0, %eax	#,
	call	test9	#
# use_datatype.c:243: 	test10();
	movl	$0, %eax	#,
	call	test10	#
# use_datatype.c:244: 	test11();
	movl	$0, %eax	#,
	call	test11	#
# use_datatype.c:245: 	test12();
	movl	$0, %eax	#,
	call	test12	#
	movl	$0, %eax	#, _14
# use_datatype.c:246: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	1202590843
	.long	1076493025
	.align 8
.LC10:
	.long	1413326760
	.long	1074340347
	.align 4
.LC12:
	.long	1078530011
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
