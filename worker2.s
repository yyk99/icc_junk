# mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.2.254 Build 20200623";
# mark_description "";
# mark_description "-S -qopt-report";
	.file "worker2.cc"
	.text
..TXTST0:
.L_2__routine_start__Z10MyFunctioni_0:
# -- Begin  _Z10MyFunctioni
	.text
# mark_begin;
       .align    16,0x90
	.globl _Z10MyFunctioni
# --- MyFunction(int)
_Z10MyFunctioni:
# parameter 1: %edi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0xb, _Z10MyFunctioni$$LSDA
..___tag_value__Z10MyFunctioni.1:
..L2:
                                                          #6.1
        pushq     %rbp                                          #6.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #6.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        pushq     %rbx                                          #6.1
        pushq     %rsi                                          #6.1
        movslq    %edi, %rcx                                    #6.1
        lea       (,%rcx,8), %rsi                               #7.10
        movq      %rsi, %rax                                    #7.10
        addq      $15, %rax                                     #7.10
        andq      $-16, %rax                                    #7.10
        subq      %rax, %rsp                                    #7.10
        movq      %rsp, %rax                                    #7.10
	.cfi_offset 3, -24
                                # LOE rax rcx rbx rsi r12 r13 r14 r15 edi
..B1.27:                        # Preds ..B1.1
                                # Execution count [1.00e+00]
        movq      %rax, %r8                                     #7.10
                                # LOE rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.2:                         # Preds ..B1.27
                                # Execution count [1.00e+00]
        movq      %rsi, %rax                                    #7.16
        addq      $15, %rax                                     #7.16
        andq      $-16, %rax                                    #7.16
        subq      %rax, %rsp                                    #7.16
        movq      %rsp, %rax                                    #7.16
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.3:                         # Preds ..B1.2
                                # Execution count [1.00e+00]
        testq     %rcx, %rcx                                    #9.16
        jle       ..B1.20       # Prob 50%                      #9.16
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
        cmpq      $8, %rcx                                      #9.16
        jl        ..B1.24       # Prob 10%                      #9.16
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
        movq      %rcx, %rdx                                    #9.16
        xorl      %r9d, %r9d                                    #9.16
        movups    .L_2il0floatpacket.0(%rip), %xmm0             #9.16
        andq      $-8, %rdx                                     #9.16
                                # LOE rax rdx rcx rbx rsi r8 r9 r12 r13 r14 r15 edi xmm0
..B1.6:                         # Preds ..B1.6 ..B1.5
                                # Execution count [1.00e+01]
        movups    %xmm0, (%rax,%r9,8)                           #9.16
        movups    %xmm0, (%r8,%r9,8)                            #9.7
        movups    %xmm0, 16(%rax,%r9,8)                         #9.16
        movups    %xmm0, 16(%r8,%r9,8)                          #9.7
        movups    %xmm0, 32(%rax,%r9,8)                         #9.16
        movups    %xmm0, 32(%r8,%r9,8)                          #9.7
        movups    %xmm0, 48(%rax,%r9,8)                         #9.16
        movups    %xmm0, 48(%r8,%r9,8)                          #9.7
        addq      $8, %r9                                       #9.16
        cmpq      %rdx, %r9                                     #9.16
        jb        ..B1.6        # Prob 90%                      #9.16
                                # LOE rax rdx rcx rbx rsi r8 r9 r12 r13 r14 r15 edi xmm0
..B1.8:                         # Preds ..B1.6 ..B1.24
                                # Execution count [1.00e+00]
        xorl      %r11d, %r11d                                  #9.16
        lea       1(%rdx), %r9                                  #9.16
        cmpq      %rcx, %r9                                     #9.16
        ja        ..B1.12       # Prob 0%                       #9.16
                                # LOE rax rdx rcx rbx rsi r8 r11 r12 r13 r14 r15 edi
..B1.9:                         # Preds ..B1.8
                                # Execution count [1.00e+00]
        movq      $0x3ff0000000000000, %rbx                     #9.16
        lea       (%rax,%rdx,8), %r10                           #9.16
        lea       (%r8,%rdx,8), %r9                             #9.7
        negq      %rdx                                          #9.16
        addq      %rcx, %rdx                                    #9.16
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi
..B1.10:                        # Preds ..B1.10 ..B1.9
                                # Execution count [1.00e+01]
        movq      %rbx, (%r10,%r11,8)                           #9.16
        movq      %rbx, (%r9,%r11,8)                            #9.7
        incq      %r11                                          #9.16
        cmpq      %rdx, %r11                                    #9.16
        jb        ..B1.10       # Prob 90%                      #9.16
                                # LOE rax rdx rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15 edi
..B1.12:                        # Preds ..B1.10 ..B1.8
                                # Execution count [9.00e-01]
        cmpq      $8, %rcx                                      #11.3
        jl        ..B1.23       # Prob 10%                      #11.3
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.13:                        # Preds ..B1.12
                                # Execution count [9.00e-01]
        andl      $-8, %edi                                     #11.3
        xorl      %r10d, %r10d                                  #11.3
        movslq    %edi, %r9                                     #11.3
        .align    16,0x90
                                # LOE rax rcx rbx rsi r8 r9 r10 r12 r13 r14 r15 edi
..B1.14:                        # Preds ..B1.14 ..B1.13
                                # Execution count [5.00e+00]
        movups    (%r8,%r10,8), %xmm0                           #12.5
        movups    16(%r8,%r10,8), %xmm1                         #12.5
        movups    32(%r8,%r10,8), %xmm2                         #12.5
        movups    48(%r8,%r10,8), %xmm3                         #12.5
        addpd     (%rax,%r10,8), %xmm0                          #12.5
        addpd     16(%rax,%r10,8), %xmm1                        #12.5
        addpd     32(%rax,%r10,8), %xmm2                        #12.5
        addpd     48(%rax,%r10,8), %xmm3                        #12.5
        movups    %xmm0, (%r8,%r10,8)                           #12.5
        movups    %xmm1, 16(%r8,%r10,8)                         #12.5
        movups    %xmm2, 32(%r8,%r10,8)                         #12.5
        movups    %xmm3, 48(%r8,%r10,8)                         #12.5
        addq      $8, %r10                                      #11.3
        cmpq      %r9, %r10                                     #11.3
        jb        ..B1.14       # Prob 82%                      #11.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r12 r13 r14 r15 edi
..B1.16:                        # Preds ..B1.14 ..B1.23
                                # Execution count [1.00e+00]
        xorl      %r9d, %r9d                                    #11.3
        lea       1(%rdi), %r10d                                #11.3
        movslq    %r10d, %r10                                   #11.3
        cmpq      %rcx, %r10                                    #11.3
        ja        ..B1.20       # Prob 9%                       #11.3
                                # LOE rax rcx rbx rsi r8 r9 r12 r13 r14 r15 edi
..B1.17:                        # Preds ..B1.16
                                # Execution count [9.00e-01]
        movslq    %edi, %rdi                                    #12.5
        subq      %rdi, %rcx                                    #11.3
        lea       (%rax,%rdi,8), %r11                           #12.13
        lea       (%r8,%rdi,8), %r10                            #12.5
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.18:                        # Preds ..B1.18 ..B1.17
                                # Execution count [5.00e+00]
        movsd     (%r10,%r9,8), %xmm0                           #12.5
        addsd     (%r11,%r9,8), %xmm0                           #12.5
        movsd     %xmm0, (%r10,%r9,8)                           #12.5
        incq      %r9                                           #11.3
        cmpq      %rcx, %r9                                     #11.3
        jb        ..B1.18       # Prob 82%                      #11.3
                                # LOE rax rcx rbx rsi r8 r9 r10 r11 r12 r13 r14 r15
..B1.20:                        # Preds ..B1.18 ..B1.3 ..B1.16
                                # Execution count [1.00e+00]
        movq      %rax, %rdx                                    #15.10
        movq      %rsi, %rax                                    #15.10
        movsd     16(%r8), %xmm0                                #15.10
        addq      $15, %rax                                     #15.10
        andq      $-16, %rax                                    #15.10
        addq      %rax, %rsp                                    #15.10
                                # LOE rbx rsi r8 r12 r13 r14 r15 xmm0
..B1.21:                        # Preds ..B1.20
                                # Execution count [1.00e+00]
        movq      %r8, %rdx                                     #15.10
        movq      %rsi, %rax                                    #15.10
        addq      $15, %rax                                     #15.10
        andq      $-16, %rax                                    #15.10
        addq      %rax, %rsp                                    #15.10
                                # LOE rbx r12 r13 r14 r15 xmm0
..B1.22:                        # Preds ..B1.21
                                # Execution count [1.00e+00]
        lea       -8(%rbp), %rsp                                #15.3
	.cfi_restore 3
        popq      %rbx                                          #15.3
        popq      %rbp                                          #15.3
	.cfi_restore 6
        ret                                                     #15.3
	.cfi_offset 3, -24
	.cfi_offset 6, -16
                                # LOE
..B1.23:                        # Preds ..B1.12
                                # Execution count [9.00e-02]: Infreq
        xorl      %edi, %edi                                    #11.3
        jmp       ..B1.16       # Prob 100%                     #11.3
                                # LOE rax rcx rbx rsi r8 r12 r13 r14 r15 edi
..B1.24:                        # Preds ..B1.4
                                # Execution count [1.00e-01]: Infreq
        xorl      %edx, %edx                                    #9.16
        jmp       ..B1.8        # Prob 100%                     #9.16
        .align    16,0x90
                                # LOE rax rdx rcx rbx rsi r8 r12 r13 r14 r15 edi
	.cfi_endproc
# mark_end;
	.type	_Z10MyFunctioni,@function
	.size	_Z10MyFunctioni,.-_Z10MyFunctioni
..LN_Z10MyFunctioni.0:
	.section .gcc_except_table, "a"
	.align 4
_Z10MyFunctioni$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value__Z10MyFunctioni.15 - ..___tag_value__Z10MyFunctioni.14
..___tag_value__Z10MyFunctioni.14:
	.byte	1
	.uleb128	..___tag_value__Z10MyFunctioni.13 - ..___tag_value__Z10MyFunctioni.12
..___tag_value__Z10MyFunctioni.12:
..___tag_value__Z10MyFunctioni.13:
	.long	0x00000000,0x00000000
..___tag_value__Z10MyFunctioni.15:
	.data
# -- End  _Z10MyFunctioni
	.section .rodata, "a"
	.align 16
	.align 16
.L_2il0floatpacket.0:
	.long	0x00000000,0x3ff00000,0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,16
	.align 8
.L_2il0floatpacket.1:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,8
	.data
	.section .note.GNU-stack, ""
# End
