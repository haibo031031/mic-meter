# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) MIC Architecture, Version 13.1.1.163";
# mark_description " Beta Build 20130313";
# mark_description "-O3 -mmic -S -openmp";
	.file "cache_bw.c"
	.text
..TXTST0:
# -- Begin  main, L_main_111__par_region0_2.41
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0 Latency 17
..___tag_value_main.1:                                          #61.1
        pushq     %rbp                                          #61.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #61.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #61.1
        subq      $256, %rsp                                    #61.1 c1
        pushq     $3                                            #61.1 c1
        popq      %rdi                                          #61.1
        movq      %rbx, 184(%rsp)                               #61.1 c5
        movq      %r15, 152(%rsp)                               #61.1 c5
        movq      %r14, 160(%rsp)                               #61.1 c9
        movq      %r13, 168(%rsp)                               #61.1 c9
        movq      %r12, 176(%rsp)                               #61.1 c13
..___tag_value_main.6:                                          #61.1
        call      __intel_new_proc_init_R                       #61.1
..___tag_value_main.7:                                          #
                                # LOE
..B1.77:                        # Preds ..B1.1 Latency 11
        stmxcsr   (%rsp)                                        #61.1 c1
        movl      $.2.7_2_kmpc_loc_struct_pack.15, %edi         #61.1 c2
        xorl      %esi, %esi                                    #61.1 c2
        orl       $32832, (%rsp)                                #61.1 c6
        xorl      %eax, %eax                                    #61.1 c6
        ldmxcsr   (%rsp)                                        #61.1 c10
..___tag_value_main.13:                                         #61.1
        call      __kmpc_begin                                  #61.1
..___tag_value_main.14:                                         #
                                # LOE
..B1.2:                         # Preds ..B1.77 Latency 5
        movl      $.2.7_2_kmpc_loc_struct_pack.26, %edi         #61.1 c1
        call      __kmpc_global_thread_num                      #61.1 c5
                                # LOE eax
..B1.78:                        # Preds ..B1.2 Latency 9
        movl      %eax, 16(%rsp)                                #61.1 c1
        movl      $.L_2__STRING.0, %edi                         #63.2 c1
        movl      $.L_2__STRING.1, %esi                         #63.2 c5
        xorl      %eax, %eax                                    #63.2 c5
..___tag_value_main.15:                                         #63.2
        call      printf                                        #63.2
..___tag_value_main.16:                                         #
                                # LOE
..B1.3:                         # Preds ..B1.78 Latency 9
        movl      $.L_2__STRING.0, %edi                         #75.2 c1
        movl      $.L_2__STRING.2, %esi                         #75.2 c1
        xorl      %eax, %eax                                    #75.2 c5
..___tag_value_main.17:                                         #75.2
        call      printf                                        #75.2
..___tag_value_main.18:                                         #
                                # LOE
..B1.4:                         # Preds ..B1.3 Latency 9
        movl      $.L_2__STRING.0, %edi                         #78.2 c1
        movl      $.L_2__STRING.3, %esi                         #78.2 c1
        xorl      %eax, %eax                                    #78.2 c5
..___tag_value_main.19:                                         #78.2
        call      printf                                        #78.2
..___tag_value_main.20:                                         #
                                # LOE
..B1.5:                         # Preds ..B1.4 Latency 17
        movq      $0x3fe0000000000000, %rdx                     #83.15 c1
        movl      $.L_2__STRING.0, %edi                         #85.2 c5
        movl      $.L_2__STRING.2, %esi                         #85.2 c5
        xorl      %eax, %eax                                    #85.2 c9
        movq      %rdx, 8(%rsp)                                 #83.15 c9
        movl      $40000, 20(%rsp)                              #82.2 c13
..___tag_value_main.21:                                         #85.2
        call      printf                                        #85.2
..___tag_value_main.22:                                         #
                                # LOE
..B1.6:                         # Preds ..B1.5 Latency 5
        movl      $1, %edi                                      #88.2 c1
        call      ompc_set_num_threads                          #88.2 c5
                                # LOE
..B1.7:                         # Preds ..B1.6 Latency 9
        movl      $.L_2__STRING.0, %edi                         #91.2 c1
        movl      $.L_2__STRING.4, %esi                         #91.2 c1
        xorl      %eax, %eax                                    #91.2 c5
..___tag_value_main.23:                                         #91.2
        call      printf                                        #91.2
..___tag_value_main.24:                                         #
                                # LOE
..B1.8:                         # Preds ..B1.7 Latency 17
        movl      $1, %eax                                      # c1
        xorl      %r15d, %r15d                                  #101.24 c1
        movl      $128, 144(%rsp)                               #92.6 c5
        xorl      %r14d, %r14d                                  # c9
        kmov      %eax, %k1                                     # c9
        vbroadcastsd .L_2il0floatpacket.85(%rip), %zmm1         #99.23 c13
        vbroadcastss .L_2il0floatpacket.86(%rip), %zmm0         #99.3 c17
                                # LOE r15 r14d
..B1.9:                         # Preds ..B1.38 ..B1.8 Latency 13
        addl      $1024, %r14d                                  #92.2 c1
        movl      $64, %esi                                     #94.18 c1
        movslq    %r14d, %rbx                                   #94.29 c5
        movq      %rbx, %rdi                                    #94.18 c9
        call      _mm_malloc                                    #94.18 c13
                                # LOE rax rbx r15 r14d
..B1.10:                        # Preds ..B1.9 Latency 9
        movq      %rbx, %rdi                                    #96.19 c1
        movl      $64, %esi                                     #96.19 c1
        movq      %rax, 40(%rsp)                                #94.3 c5
        call      _mm_malloc                                    #96.19 c9
                                # LOE rax r15 r14d
..B1.80:                        # Preds ..B1.10 Latency 1
        movq      %rax, %rbx                                    #96.19 c1
                                # LOE rbx r15 r14d
..B1.11:                        # Preds ..B1.80 Latency 13
        movl      144(%rsp), %r12d                              #99.16 c1
        movq      %rbx, 48(%rsp)                                #96.3 c1
        movslq    %r12d, %r12                                   #99.3 c5
        movq      %r15, %r13                                    #99.3 c5
        movq      40(%rsp), %rax                                #99.8 c9
        testq     %r12, %r12                                    #99.3 c9
        jle       ..B1.16       # Prob 10%                      #99.3 c13
                                # LOE rax rbx r12 r13 r15 r14d
..B1.12:                        # Preds ..B1.11 Latency 5
        vprefetche0 (%rax)                                      #99.3 c1
        movq      %rax, %r15                                    #99.3 c1
        vprefetche0 8(%rax)                                     #99.3 c5
                                # LOE rbx r12 r13 r15 r14d
..B1.13:                        # Preds ..B1.14 ..B1.12 Latency 1
        call      rand                                          #99.3 c1
                                # LOE rbx r12 r13 r15 eax r14d
..B1.14:                        # Preds ..B1.13 Latency 41
        movl      %eax, 192(%rsp)                               #99.3 c1
        vprefetche1 128(%r15,%r13,8)                            #99.3 c1
        movl      $1, %eax                                      #99.3 c5
        vprefetche0 16(%r15,%r13,8)                             #99.3 c5
        kmov      %eax, %k1                                     #99.3 c9
        vcvtfxpntdq2ps $0, 192(%rsp){1to16}, %zmm0{%k1}         #99.3 c13
        vmulps    .L_2il0floatpacket.86(%rip){1to16}, %zmm0, %zmm1{%k1} #99.3 c17
        nop                                                     #99.3 c21
        vcvtps2pd %zmm1, %zmm2{%k1}                             #99.3 c25
        vmulpd    .L_2il0floatpacket.85(%rip){1to8}, %zmm2, %zmm3{%k1} #99.3 c29
        nop                                                     #99.3 c33
        vpackstorelpd %zmm3, (%r15,%r13,8){%k1}                 #99.3 c37
        incq      %r13                                          #99.3 c37
        cmpq      %r12, %r13                                    #99.3 c41
        jb        ..B1.13       # Prob 82%                      #99.3 c41
                                # LOE rbx r12 r13 r15 r14d
..B1.15:                        # Preds ..B1.14 Latency 1
        xorl      %r15d, %r15d                                  # c1
        testq     %r12, %r12                                    #99.3 c1
                                # LOE rbx r12 r15 r14d
..B1.16:                        # Preds ..B1.15 ..B1.11 Latency 1
        movq      %r15, %r13                                    #101.3 c1
        jle       ..B1.21       # Prob 10%                      #101.3 c1
                                # LOE rbx r12 r13 r15 r14d
..B1.17:                        # Preds ..B1.16 Latency 5
        vprefetche0 (%rbx)                                      #101.3 c1
        movb      %al, %al                                      #101.3 c1
        vprefetche0 8(%rbx)                                     #101.3 c5
                                # LOE rbx r12 r13 r15 r14d
..B1.18:                        # Preds ..B1.19 ..B1.17 Latency 1
        call      rand                                          #101.3 c1
                                # LOE rbx r12 r13 r15 r14d
..B1.19:                        # Preds ..B1.18 Latency 13
        incq      %r13                                          #101.3 c1
        vprefetche1 128(%rbx)                                   #101.3 c1
        movq      %r15, (%rbx)                                  #101.3 c5
        vprefetche0 16(%rbx)                                    #101.3 c5
        addq      $8, %rbx                                      #101.3 c9
        cmpq      %r12, %r13                                    #101.3 c13
        jb        ..B1.18       # Prob 82%                      #101.3 c13
                                # LOE rbx r12 r13 r15 r14d
..B1.21:                        # Preds ..B1.19 ..B1.16 Latency 5
        movq      %r15, 24(%rsp)                                #107.13 c1
        movb      $0, %bl                                       #109.3 c1
        movq      %r15, 32(%rsp)                                #108.13 c5
                                # LOE r15 r14d bl
..B1.22:                        # Preds ..B1.28 ..B1.21 Latency 5
        movl      $.2.7_2_kmpc_loc_struct_pack.43, %edi         #111.4 c1
        xorl      %eax, %eax                                    #111.4 c1
..___tag_value_main.25:                                         #111.4
        call      __kmpc_ok_to_fork                             #111.4
..___tag_value_main.26:                                         #
                                # LOE r15 eax r14d bl
..B1.23:                        # Preds ..B1.22 Latency 1
        testl     %eax, %eax                                    #111.4 c1
        je        ..B1.25       # Prob 50%                      #111.4 c1
                                # LOE r15 r14d bl
..B1.24:                        # Preds ..B1.23 Latency 73
        lea       128(%rsp), %r10                               #111.4 c1
        movl      $L_main_111__par_region0_2.41, %edx           #111.4 c1
        pushq     %r10                                          #111.4 c5
        xorl      %eax, %eax                                    #111.4 c5
        lea       16(%rsp), %r11                                #111.4 c9
        pushq     %r11                                          #111.4 c13
        lea       64(%rsp), %r12                                #111.4 c17
        pushq     %r12                                          #111.4 c21
        lea       28(%rsp), %r13                                #111.4 c25
        pushq     %r13                                          #111.4 c29
        lea       32(%rsp), %rsi                                #111.4 c33
        pushq     %rsi                                          #111.4 c37
        pushq     $11                                           #111.4 c37
        popq      %rsi                                          #111.4
        lea       96(%rsp), %rdi                                #111.4 c41
        pushq     %rdi                                          #111.4 c45
        movl      $.2.7_2_kmpc_loc_struct_pack.43, %edi         #111.4 c45
        lea       192(%rsp), %r10                               #111.4 c49
        pushq     %r10                                          #111.4 c53
        lea       76(%rsp), %r11                                #111.4 c57
        pushq     %r11                                          #111.4 c61
        lea       88(%rsp), %rcx                                #111.4 c65
        lea       96(%rsp), %r8                                 #111.4 c65
        lea       104(%rsp), %r9                                #111.4 c69
..___tag_value_main.27:                                         #111.4
        call      __kmpc_fork_call                              #111.4
..___tag_value_main.28:                                         #
                                # LOE r15 r14d bl
..B1.83:                        # Preds ..B1.24 Latency 2
        addq      $64, %rsp                                     #111.4 c1
        jmp       ..B1.28       # Prob 100%                     #111.4 c1
                                # LOE r15 r14d bl
..B1.25:                        # Preds ..B1.23 Latency 9
        movl      16(%rsp), %esi                                #111.4 c1
        movl      $.2.7_2_kmpc_loc_struct_pack.43, %edi         #111.4 c1
        xorl      %eax, %eax                                    #111.4 c5
..___tag_value_main.29:                                         #111.4
        call      __kmpc_serialized_parallel                    #111.4
..___tag_value_main.30:                                         #
                                # LOE r15 r14d bl
..B1.26:                        # Preds ..B1.25 Latency 69
        lea       16(%rsp), %rdi                                #111.4 c1
        pushq     %rsp                                          #111.4 c1
        lea       136(%rsp), %rax                               #111.4 c5
        movl      $___kmpv_zeromain_0, %esi                     #111.4 c5
        pushq     %rax                                          #111.4 c9
        lea       24(%rsp), %r10                                #111.4 c13
        pushq     %r10                                          #111.4 c17
        lea       72(%rsp), %r11                                #111.4 c21
        pushq     %r11                                          #111.4 c25
        lea       36(%rsp), %r12                                #111.4 c29
        pushq     %r12                                          #111.4 c33
        lea       40(%rsp), %r13                                #111.4 c37
        pushq     %r13                                          #111.4 c41
        lea       104(%rsp), %rax                               #111.4 c45
        pushq     %rax                                          #111.4 c49
        lea       200(%rsp), %r10                               #111.4 c53
        pushq     %r10                                          #111.4 c57
        lea       88(%rsp), %rdx                                #111.4 c61
        lea       96(%rsp), %rcx                                #111.4 c61
        lea       104(%rsp), %r8                                #111.4 c65
        lea       84(%rsp), %r9                                 #111.4 c65
..___tag_value_main.31:                                         #111.4
        call      L_main_111__par_region0_2.41                  #111.4
..___tag_value_main.32:                                         #
                                # LOE r15 r14d bl
..B1.84:                        # Preds ..B1.26 Latency 1
        addq      $64, %rsp                                     #111.4 c1
                                # LOE r15 r14d bl
..B1.27:                        # Preds ..B1.84 Latency 9
        movl      16(%rsp), %esi                                #111.4 c1
        movl      $.2.7_2_kmpc_loc_struct_pack.43, %edi         #111.4 c1
        xorl      %eax, %eax                                    #111.4 c5
..___tag_value_main.33:                                         #111.4
        call      __kmpc_end_serialized_parallel                #111.4
..___tag_value_main.34:                                         #
                                # LOE r15 r14d bl
..B1.28:                        # Preds ..B1.27 ..B1.83 Latency 5
        incb      %bl                                           #109.3 c1
        cmpb      $3, %bl                                       #109.3 c5
        jb        ..B1.22       # Prob 82%                      #109.3 c5
                                # LOE r15 r14d bl
..B1.29:                        # Preds ..B1.28 Latency 165
        vbroadcastsd 128(%rsp), %zmm1                           #142.12 c1
        movl      $1, %eax                                      #142.20 c1
        vbroadcasti32x4 .L_2il0floatpacket.90(%rip), %zmm14     #142.29 c5
        vbroadcasti64x4 .L_2il0floatpacket.88(%rip), %zmm20     #142.29 c9
        vpbroadcastd .L_2il0floatpacket.91(%rip), %zmm4         #142.29 c13
        vpxorq    %zmm5, %zmm5, %zmm5                           #142.29 c17
        kmov      %eax, %k3                                     #142.20 c17
        vsubpd    56(%rsp){1to8}, %zmm1, %zmm3{%k3}             #142.20 c21
        movl      $.L_2__STRING.5, %edi                         #143.3 c21
        vcvtdq2pd 20(%rsp){1to8}, %zmm2{%k3}                    #142.29 c25
        movq      48(%rsp), %rdx                                #143.3 c25
        vgetexppd %zmm2, %zmm11{%k3}                            #142.29 c29
        vgetexppd %zmm3, %zmm10{%k3}                            #142.29 c33
        vgetmantpd $0, %zmm2, %zmm9{%k3}                        #142.29 c37
        vsubpd    %zmm11, %zmm10, %zmm12{%k3}                   #142.29 c41
        vpminsd   %zmm14{aaaa}, %zmm12, %zmm13                  #142.29 c45
        vcvtpd2ps {rz-sae}, %zmm9, %zmm6{%k3}                   #142.29 c49
        vpminud   %zmm14{bbbb}, %zmm13, %zmm15                  #142.29 c53
        vrcp23ps  %zmm6, %zmm7{%k3}                             #142.29 c57
        vaddpd    %zmm20{cccc}, %zmm15, %zmm15{%k3}             #142.29 c57
        vfixupnanpd %zmm4, %zmm2, %zmm5{%k3}                    #142.29 c61
        vcvtps2pd %zmm7, %zmm22{%k3}                            #142.29 c65
        vmovapd   %zmm20{bbbb}, %zmm8                           #142.29 c69
        vpslld    $20, %zmm15, %zmm17                           #142.29 c73
        vbroadcasti64x4 .L_2il0floatpacket.89(%rip), %zmm16     #142.29 c77
        vfixupnanpd %zmm4, %zmm3, %zmm5{%k3}                    #142.29 c81
        vfnmadd213pd {rn-sae}, %zmm8, %zmm22, %zmm9{%k3}        #142.29 c85
        vpsrad    $1, %zmm17, %zmm24                            #142.29 c89
        vcmpeqpd  %zmm5, %zmm5, %k2{%k3}                        #142.29 c93
        vfmadd231pd {rn-sae}, %zmm9, %zmm9, %zmm9{%k3}          #142.29 c97
        vpandq    %zmm16{aaaa}, %zmm24, %zmm24{%k3}             #142.29 c101
        kmov      %k2, %k1                                      #142.29 c101
        vpbroadcastd .L_2il0floatpacket.92(%rip), %zmm23        #142.29 c105
        vfmadd231pd {rn-sae}, %zmm22, %zmm9, %zmm22{%k3}        #142.29 c109
        kandn     %k3, %k1                                      #142.29 c109
        vgetmantpd $0, %zmm3, %zmm21{%k3}                       #142.29 c113
        vpsubd    %zmm24, %zmm17, %zmm18                        #142.29 c117
        vmovdqa64 %zmm20{bbbb}, %zmm19                          #142.29 c121
        vfixupnanpd %zmm23, %zmm2, %zmm2{%k3}                   #142.29 c125
        vmulpd    {rn-sae}, %zmm22, %zmm21, %zmm27{%k2}         #142.29 c129
        vpaddd    %zmm19, %zmm18, %zmm26                        #142.29 c133
        vmulpd    {rn-sae}, %zmm2, %zmm3, %zmm27{%k1}           #142.29 c137
        vpandq    %zmm20{aaaa}, %zmm26, %zmm26{%k3}             #142.29 c141
        vpaddd    %zmm24, %zmm27, %zmm25                        #142.29 c145
        vmulpd    {rn}, %zmm26, %zmm25, %zmm27{%k2}             #142.29 c149
        vmovapd   %zmm27, %zmm1{%k3}                            #142.29 c153
        vbroadcastsd (%rdx), %zmm0                              #143.3 c157
        movb      %cl, %cl                                      #143.3 c157
        vmovaps   %zmm1, 64(%rsp)                               #143.3 c161
..___tag_value_main.35:                                         #143.3
        call      printf                                        #143.3
..___tag_value_main.36:                                         #
                                # LOE r15 r14d
..B1.30:                        # Preds ..B1.29 Latency 13
        vmovaps   64(%rsp), %zmm1                               # c1
        movl      $.L_2__STRING.6, %edi                         #144.3 c1
        movl      $.L_2__STRING.7, %esi                         #144.3 c5
        movb      %al, %al                                      #144.3 c5
        vmovaps   %zmm1, 64(%rsp)                               #144.3 c9
        call      fopen                                         #144.3 c13
                                # LOE rax r15 r14d
..B1.85:                        # Preds ..B1.30 Latency 1
        vmovaps   64(%rsp), %zmm1                               # c1
        movq      %rax, %rbx                                    #144.3 c1
                                # LOE rbx r15 r14d xmm1 ymm1 zmm1
..B1.31:                        # Preds ..B1.85 Latency 165
        vbroadcasti32x4 .L_2il0floatpacket.90(%rip), %zmm13     #144.3 c1
        vbroadcasti64x4 .L_2il0floatpacket.88(%rip), %zmm19     #144.3 c5
        vpbroadcastd .L_2il0floatpacket.91(%rip), %zmm3         #144.3 c9
        vpxorq    %zmm4, %zmm4, %zmm4                           #144.3 c13
        movl      $1, %eax                                      #144.3 c13
        vmovapd   %zmm19{bbbb}, %zmm7                           #144.3 c17
        movl      %r14d, 192(%rsp)                              #144.3 c17
        vmovdqa64 %zmm19{bbbb}, %zmm18                          #144.3 c21
        kmov      %eax, %k3                                     #144.3 c21
        vcvtdq2pd 192(%rsp){1to8}, %zmm2{%k3}                   #144.3 c25
        movl      %r14d, %edx                                   #144.3 c25
        vgetexppd %zmm1, %zmm10{%k3}                            #144.3 c29
        movq      %rbx, %rdi                                    #144.3 c29
        vgetexppd %zmm2, %zmm9{%k3}                             #144.3 c33
        movl      $.L_2__STRING.8, %esi                         #144.3 c33
        vgetmantpd $0, %zmm1, %zmm8{%k3}                        #144.3 c37
        vsubpd    %zmm10, %zmm9, %zmm11{%k3}                    #144.3 c41
        vpminsd   %zmm13{aaaa}, %zmm11, %zmm12                  #144.3 c45
        vcvtpd2ps {rz-sae}, %zmm8, %zmm5{%k3}                   #144.3 c49
        vpminud   %zmm13{bbbb}, %zmm12, %zmm14                  #144.3 c53
        vrcp23ps  %zmm5, %zmm6{%k3}                             #144.3 c57
        vaddpd    %zmm19{cccc}, %zmm14, %zmm14{%k3}             #144.3 c57
        vfixupnanpd %zmm3, %zmm1, %zmm4{%k3}                    #144.3 c61
        vcvtps2pd %zmm6, %zmm21{%k3}                            #144.3 c65
        vpslld    $20, %zmm14, %zmm16                           #144.3 c69
        vbroadcasti64x4 .L_2il0floatpacket.89(%rip), %zmm15     #144.3 c73
        vfixupnanpd %zmm3, %zmm2, %zmm4{%k3}                    #144.3 c77
        vfnmadd213pd {rn-sae}, %zmm7, %zmm21, %zmm8{%k3}        #144.3 c81
        vpsrad    $1, %zmm16, %zmm23                            #144.3 c85
        vcmpeqpd  %zmm4, %zmm4, %k2{%k3}                        #144.3 c89
        vfmadd231pd {rn-sae}, %zmm8, %zmm8, %zmm8{%k3}          #144.3 c93
        vpandq    %zmm15{aaaa}, %zmm23, %zmm23{%k3}             #144.3 c97
        kmov      %k2, %k1                                      #144.3 c97
        vpbroadcastd .L_2il0floatpacket.92(%rip), %zmm22        #144.3 c101
        vfmadd231pd {rn-sae}, %zmm21, %zmm8, %zmm21{%k3}        #144.3 c105
        kandn     %k3, %k1                                      #144.3 c105
        vgetmantpd $0, %zmm2, %zmm20{%k3}                       #144.3 c109
        vpsubd    %zmm23, %zmm16, %zmm17                        #144.3 c113
        vfixupnanpd %zmm22, %zmm1, %zmm1{%k3}                   #144.3 c117
        vmulpd    {rn-sae}, %zmm21, %zmm20, %zmm25{%k2}         #144.3 c121
        vpaddd    %zmm18, %zmm17, %zmm24                        #144.3 c125
        vmulpd    {rn-sae}, %zmm1, %zmm2, %zmm25{%k1}           #144.3 c129
        kmov      %k3, %k1                                      #144.3 c129
        vpandq    %zmm19{aaaa}, %zmm24, %zmm24{%k3}             #144.3 c133
        vpaddd    %zmm23, %zmm25, %zmm1                         #144.3 c137
        vmulpd    {rn}, %zmm24, %zmm1, %zmm25{%k2}              #144.3 c141
        vmovapd   %zmm25, %zmm0{%k3}                            #144.3 c145
        sarl      $9, %edx                                      #144.3 c149
        shrl      $22, %edx                                     #144.3 c153
        vpackstorelpd %zmm0, 136(%rsp){%k1}                     #144.3 c153
        addl      %r14d, %edx                                   #144.3 c157
        sarl      $10, %edx                                     #144.3 c161
        call      fprintf                                       #144.3 c165
                                # LOE rbx r15 r14d
..B1.32:                        # Preds ..B1.31 Latency 5
        movq      %rbx, %rdi                                    #144.3 c1
        call      fclose                                        #144.3 c5
                                # LOE r15 r14d
..B1.33:                        # Preds ..B1.32 Latency 9
        vbroadcastsd 136(%rsp), %zmm0                           #145.3 c1
        movl      $.L_2__STRING.9, %edi                         #145.3 c1
        movl      $1, %eax                                      #145.3 c5
..___tag_value_main.37:                                         #145.3
        call      printf                                        #145.3
..___tag_value_main.38:                                         #
                                # LOE r15 r14d
..B1.34:                        # Preds ..B1.33 Latency 5
        movq      40(%rsp), %rdi                                #146.6 c1
        testq     %rdi, %rdi                                    #146.14 c5
        je        ..B1.36       # Prob 33%                      #146.14 c5
                                # LOE rdi r15 r14d
..B1.35:                        # Preds ..B1.34 Latency 1
        call      _mm_free                                      #146.20 c1
                                # LOE r15 r14d
..B1.36:                        # Preds ..B1.35 ..B1.34 Latency 5
        movq      48(%rsp), %rdi                                #148.6 c1
        testq     %rdi, %rdi                                    #148.15 c5
        je        ..B1.38       # Prob 33%                      #148.15 c5
                                # LOE rdi r15 r14d
..B1.37:                        # Preds ..B1.36 Latency 1
        call      _mm_free                                      #148.21 c1
                                # LOE r15 r14d
..B1.38:                        # Preds ..B1.37 ..B1.36 Latency 13
        movl      144(%rsp), %eax                               #92.64 c1
        addl      $128, %eax                                    #92.70 c5
        movl      %eax, 144(%rsp)                               #92.58 c9
        cmpl      $4096, %eax                                   #92.47 c9
        jle       ..B1.9        # Prob 82%                      #92.47 c13
                                # LOE r15 r14d
..B1.39:                        # Preds ..B1.38 Latency 9
        movl      $.L_2__STRING.0, %edi                         #151.2 c1
        movl      $.L_2__STRING.2, %esi                         #151.2 c1
        xorl      %eax, %eax                                    #151.2 c5
..___tag_value_main.39:                                         #151.2
        call      printf                                        #151.2
..___tag_value_main.40:                                         #
                                # LOE
..B1.40:                        # Preds ..B1.39 Latency 9
        movl      $.L_2__STRING.0, %edi                         #154.2 c1
        movl      $.L_2__STRING.10, %esi                        #154.2 c1
        xorl      %eax, %eax                                    #154.2 c5
..___tag_value_main.41:                                         #154.2
        call      printf                                        #154.2
..___tag_value_main.42:                                         #
                                # LOE
..B1.41:                        # Preds ..B1.40 Latency 9
        movl      $.L_2__STRING.0, %edi                         #156.2 c1
        movl      $.L_2__STRING.2, %esi                         #156.2 c1
        xorl      %eax, %eax                                    #156.2 c5
..___tag_value_main.43:                                         #156.2
        call      printf                                        #156.2
..___tag_value_main.44:                                         #
                                # LOE
..B1.42:                        # Preds ..B1.41 Latency 5
        movl      $.2.7_2_kmpc_loc_struct_pack.34, %edi         #157.1 c1
        xorl      %eax, %eax                                    #157.1 c1
..___tag_value_main.45:                                         #157.1
        call      __kmpc_end                                    #157.1
..___tag_value_main.46:                                         #
                                # LOE
..B1.43:                        # Preds ..B1.42 Latency 17
        movq      152(%rsp), %r15                               #157.1 c1
..___tag_value_main.47:                                         #
        xorl      %eax, %eax                                    #157.1 c1
        movq      160(%rsp), %r14                               #157.1 c5
..___tag_value_main.48:                                         #
        movq      168(%rsp), %r13                               #157.1 c5
..___tag_value_main.49:                                         #
        movq      176(%rsp), %r12                               #157.1 c9
..___tag_value_main.50:                                         #
        movq      184(%rsp), %rbx                               #157.1 c9
..___tag_value_main.51:                                         #
        movq      %rbp, %rsp                                    #157.1 c17
        popq      %rbp                                          #157.1
..___tag_value_main.52:                                         #
        ret                                                     #157.1
..___tag_value_main.54:                                         #
                                # LOE
L_main_111__par_region0_2.41:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
# parameter 6: %r9
# parameter 7: 16 + %rbp
# parameter 8: 24 + %rbp
# parameter 9: 32 + %rbp
# parameter 10: 40 + %rbp
# parameter 11: 48 + %rbp
# parameter 12: 56 + %rbp
# parameter 13: 64 + %rbp
..B1.44:                        # Preds ..B1.0 Latency 33
        pushq     %rbp                                          #111.4
..___tag_value_main.56:                                         #
        movq      %rsp, %rbp                                    #111.4
..___tag_value_main.57:                                         #
        andq      $-128, %rsp                                   #111.4
        subq      $256, %rsp                                    #111.4 c1
        movq      56(%rbp), %rax                                #111.4 c1
        vbroadcastsd (%rax), %zmm0                              #111.4 c5
        xorl      %edi, %edi                                    #119.16 c5
        movq      16(%rbp), %r10                                #111.4 c9
        lea       64(%rsp), %rsi                                #119.16 c9
        movq      %rbx, 184(%rsp)                               #111.4 c13
..___tag_value_main.59:                                         #
        movl      (%r9), %ebx                                   #111.4 c13
        movq      %r15, 152(%rsp)                               #111.4 c17
        movq      %r13, 168(%rsp)                               #111.4 c17
        movq      %r14, 160(%rsp)                               #111.4 c21
..___tag_value_main.60:                                         #
        movq      %r8, %r13                                     #111.4 c21
        movq      %r12, 176(%rsp)                               #111.4 c25
..___tag_value_main.63:                                         #
        movl      (%r10), %r12d                                 #111.4 c25
        vmovaps   %zmm0, (%rsp)                                 #111.4 c29
..___tag_value_main.64:                                         #119.16
        call      clock_gettime                                 #119.16
..___tag_value_main.65:                                         #
                                # LOE r13 ebx r12d
..B1.45:                        # Preds ..B1.44 Latency 77
        movl      $1, %edx                                      #119.16 c1
        movq      24(%rbp), %rsi                                #111.4 c1
        kmov      %edx, %k1                                     #119.16 c5
        movq      32(%rbp), %r10                                #111.4 c5
        vcvtudq2pd 64(%rsp){1to8}, %zmm0{%k1}                   #119.16 c9
        kmov      %k1, %k2                                      #119.16 c9
        vcvtdq2pd 68(%rsp){1to8}, %zmm2{%k1}                    #119.16 c13
        movl      $0, (%r10)                                    #124.10 c13
        vcvtudq2pd 72(%rsp){1to8}, %zmm1{%k1}                   #119.16 c17
        xorl      %r9d, %r9d                                    #124.6 c17
        vcvtdq2pd 76(%rsp){1to8}, %zmm3{%k1}                    #119.16 c21
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm0, %zmm2{%k1} #119.16 c25
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm1, %zmm3{%k1} #119.16 c29
        vfmadd231pd .L_2il0floatpacket.79(%rip){1to8}, %zmm2, %zmm3{%k1} #119.6 c33
        nop                                                     #119.16 c37
        vpackstorelpd %zmm3, 192(%rsp){%k2}                     #119.16 c41
        fldl      192(%rsp)                                     #119.16 c45
        fnstcw    80(%rsp)                                      #119.16 c49
        movzwl    80(%rsp), %eax                                #119.16
        orl       $3072, %eax                                   #119.16
        movl      %eax, 88(%rsp)                                #119.16
        fldcw     88(%rsp)                                      #119.16
        fistpq    192(%rsp)                                     #119.16
        fldcw     80(%rsp)                                      #119.16
        testl     %ebx, %ebx                                    #124.17 c53
        movq      192(%rsp), %rcx                               #119.16 c53
        movq      %rcx, 96(%rsp)                                #119.16 c57
        vcvtdq2pd 100(%rsp){1to8}, %zmm5{%k1}                   #119.16 c61
        vcvtudq2pd 96(%rsp){1to8}, %zmm4{%k1}                   #119.16 c65
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm4, %zmm5{%k1} #119.16 c69
        nop                                                     #119.6 c73
        vpackstorelpd %zmm5, (%rsi){%k1}                        #119.6 c77
        jle       ..B1.72       # Prob 10%                      #124.17 c77
                                # LOE r10 r13 ebx r9d r12d
..B1.46:                        # Preds ..B1.45 Latency 25
        movq      48(%rbp), %rcx                                #111.4 c1
        movl      $1, %eax                                      #126.7 c1
        movq      (%r13), %rdi                                  #129.27 c5
        kmov      %eax, %k1                                     #126.7 c5
        movq      (%rcx), %rsi                                  #129.8 c9
        movslq    %r12d, %rcx                                   #126.7 c9
        movq      %rsi, %rdx                                    #126.7 c13
        movq      40(%rbp), %r8                                 #111.4 c13
        vbroadcastsd (%rdi), %zmm4                              #132.19 c17
        andq      $63, %rdx                                     #126.7 c17
        vbroadcastsd .L_2il0floatpacket.80(%rip), %zmm3         #132.31 c21
        vmovaps   (%rsp), %zmm6                                 #126.7 c25
                                # LOE rcx rsi rdi r8 edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.47:                        # Preds ..B1.70 ..B1.46 Latency 5
        xorl      %eax, %eax                                    #126.11 c1
        testl     %r12d, %r12d                                  #126.18 c1
        jle       ..B1.70       # Prob 50%                      #126.18 c5
                                # LOE rcx rsi rdi r8 eax edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.48:                        # Preds ..B1.47 Latency 5
        movl      $0, (%r8)                                     #126.25 c1
        movl      %edx, %r10d                                   #126.7 c1
        testl     %edx, %edx                                    #126.7 c5
        je        ..B1.50       # Prob 50%                      #126.7 c5
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d zmm3 zmm4 zmm6 k1
..B1.49:                        # Preds ..B1.48 Latency 17
        xorl      %r10d, %r10d                                  #126.7 c1
        subl      %edx, %r10d                                   #126.7 c5
        addl      $64, %r10d                                    #126.7 c9
        shrl      $3, %r10d                                     #126.7 c13
        cmpq      %r10, %rcx                                    #126.7 c13
        jge       ..L66         # Prob 50%                      #126.7 c17
        movl      %r12d, %r10d                                  #126.7
..L66:                                                          #
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d zmm3 zmm4 zmm6 k1
..B1.50:                        # Preds ..B1.49 ..B1.48 Latency 21
        movl      %r12d, %r14d                                  #126.7 c1
        subl      %r10d, %r14d                                  #126.7 c5
        andl      $31, %r14d                                    #126.7 c9
        negl      %r14d                                         #126.7 c13
        addl      %r12d, %r14d                                  #126.7 c17
        cmpl      $1, %r10d                                     #126.7 c21
        jb        ..B1.55       # Prob 50%                      #126.7 c21
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d r14d zmm3 zmm4 zmm6 k1
..B1.51:                        # Preds ..B1.50 Latency 21
        movl      %r10d, (%rsp)                                 #126.7 c1
        xorl      %r13d, %r13d                                  #126.7 c1
        vpbroadcastd .L_2il0floatpacket.82(%rip), %zmm5         #126.7 c5
        vmovaps   .L_2il0floatpacket.83(%rip), %zmm2            #126.7 c9
        vpbroadcastd (%rsp), %zmm1                              #126.7 c13
        movslq    %r10d, %r11                                   #126.7 c13
        vmovapd   .L_2il0floatpacket.84(%rip), %zmm0            # c17
        xorl      %eax, %eax                                    # c21
        .align    16,0x90
                                # LOE rax rcx rsi rdi r8 r11 r13 edx ebx r9d r10d r12d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 k1
..B1.52:                        # Preds ..B1.52 ..B1.51 Latency 45
        vpcmpgtd  %zmm1, %zmm2, %k0                             #126.7 c1
        lea       (%rdi,%rax), %r15                             #129.27 c1
        vpxorq    %zmm7, %zmm7, %zmm7                           #129.27 c5
        addq      $8, %r13                                      #126.7 c5
        knot      %k0, %k3                                      #126.7 c9
        kmov      %k3, %k2                                      #129.27 c13
..L68:                                                          #129.27
        vgatherdpd (%r15,%zmm0,8), %zmm7{%k2}                   #129.27
        jkzd      ..L67, %k2    # Prob 50%                      #129.27
        vgatherdpd (%r15,%zmm0,8), %zmm7{%k2}                   #129.27
        jknzd     ..L68, %k2    # Prob 50%                      #129.27
..L67:                                                          #
        vmulpd    %zmm7, %zmm6, %zmm8                           #129.27 c25
        vpaddd    %zmm5, %zmm2, %zmm2                           #129.8 c29
        lea       (%rsi,%rax), %r15                             #129.8 c29
..L70:                                                          #129.8
        vscatterdpd %zmm8, (%r15,%zmm0,8){%k3}                  #129.8
        jkzd      ..L69, %k3    # Prob 50%                      #129.8
        vscatterdpd %zmm8, (%r15,%zmm0,8){%k3}                  #129.8
        jknzd     ..L70, %k3    # Prob 50%                      #129.8
..L69:                                                          #
        addq      $64, %rax                                     #126.7 c41
        cmpq      %r11, %r13                                    #126.7 c45
        jb        ..B1.52       # Prob 82%                      #126.7 c45
                                # LOE rax rcx rsi rdi r8 r11 r13 edx ebx r9d r10d r12d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 k1
..B1.53:                        # Preds ..B1.52 Latency 1
        cmpq      %r11, %rcx                                    #126.7 c1
        jne       ..B1.55       # Prob 50%                      #126.7 c1
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d r14d zmm3 zmm4 zmm6 k1
..B1.54:                        # Preds ..B1.53 Latency 2
        movl      %r12d, %eax                                   #126.25 c1
        jmp       ..B1.70       # Prob 100%                     #126.25 c1
                                # LOE rcx rsi rdi r8 eax edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.55:                        # Preds ..B1.50 ..B1.53 Latency 5
        lea       32(%r10), %eax                                #126.7 c1
        cmpl      %eax, %r14d                                   #126.7 c5
        jl        ..B1.63       # Prob 50%                      #126.7 c5
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d r14d zmm3 zmm4 zmm6 k1
..B1.56:                        # Preds ..B1.55 Latency 9
        movslq    %r10d, %r10                                   #129.27 c1
        lea       (%rdi,%r10,8), %rax                           #129.27 c5
        testq     $63, %rax                                     #126.7 c9
        je        ..B1.60       # Prob 60%                      #126.7 c9
                                # LOE rcx rsi rdi r8 edx ebx r9d r10d r12d r14d zmm3 zmm4 zmm6 k1
..B1.57:                        # Preds ..B1.56 Latency 21
        movslq    %r10d, %r10                                   #126.7 c1
        vprefetch0 (%rdi)                                       #126.7 c1
        vprefetch0 256(%rdi)                                    #126.7 c5
        movslq    %r14d, %rax                                   #126.7 c5
        vprefetch0 512(%rdi)                                    #126.7 c9
        movb      %al, %al                                      #126.7 c9
        vprefetch0 768(%rdi)                                    #126.7 c13
        movb      %al, %al                                      #126.7 c13
        vprefetche0 (%rsi)                                      #126.7 c17
        movb      %al, %al                                      #126.7 c17
        vprefetche0 256(%rsi)                                   #126.7 c21
                                # LOE rax rcx rsi rdi r8 r10 edx ebx r9d r12d r14d zmm3 zmm4 zmm6 k1
..B1.58:                        # Preds ..B1.58 ..B1.57 Latency 69
        vloadunpackld (%rdi,%r10,8), %zmm0                      #129.27 c1
        vprefetch1 2048(%rdi,%r10,8)                            #129.27 c1
        vloadunpackld 64(%rdi,%r10,8), %zmm2                    #129.27 c5
        vprefetch0 1024(%rdi,%r10,8)                            #129.27 c5
        vloadunpackld 128(%rdi,%r10,8), %zmm7                   #129.27 c9
        vprefetche1 2048(%rsi,%r10,8)                           #129.8 c9
        vloadunpackld 192(%rdi,%r10,8), %zmm9                   #129.27 c13
        vprefetche0 1024(%rsi,%r10,8)                           #129.8 c13
        vloadunpackhd 64(%rdi,%r10,8), %zmm0                    #129.27 c17
        vprefetch1 2112(%rdi,%r10,8)                            #129.27 c17
        vloadunpackhd 128(%rdi,%r10,8), %zmm2                   #129.27 c21
        vprefetch0 1088(%rdi,%r10,8)                            #129.27 c21
        vloadunpackhd 192(%rdi,%r10,8), %zmm7                   #129.27 c25
        vprefetche1 2112(%rsi,%r10,8)                           #129.8 c25
        vloadunpackhd 256(%rdi,%r10,8), %zmm9                   #129.27 c29
        vprefetche0 1088(%rsi,%r10,8)                           #129.8 c29
        vmulpd    %zmm0, %zmm6, %zmm1                           #129.27 c33
        vprefetch1 2176(%rdi,%r10,8)                            #129.27 c33
        vmulpd    %zmm2, %zmm6, %zmm5                           #129.27 c37
        vprefetch0 1152(%rdi,%r10,8)                            #129.27 c37
        vmulpd    %zmm7, %zmm6, %zmm8                           #129.27 c41
        vprefetche1 2176(%rsi,%r10,8)                           #129.8 c41
        vmulpd    %zmm9, %zmm6, %zmm10                          #129.27 c45
        vprefetche0 1152(%rsi,%r10,8)                           #129.8 c45
        vmovapd   %zmm1, (%rsi,%r10,8)                          #129.8 c49
        vprefetch1 2240(%rdi,%r10,8)                            #129.27 c49
        vmovapd   %zmm5, 64(%rsi,%r10,8)                        #129.8 c53
        vprefetch0 1216(%rdi,%r10,8)                            #129.27 c53
        vmovapd   %zmm8, 128(%rsi,%r10,8)                       #129.8 c57
        vprefetche1 2240(%rsi,%r10,8)                           #129.8 c57
        vmovapd   %zmm10, 192(%rsi,%r10,8)                      #129.8 c61
        vprefetche0 1216(%rsi,%r10,8)                           #129.8 c61
        addq      $32, %r10                                     #126.7 c65
        cmpq      %rax, %r10                                    #126.7 c69
        jb        ..B1.58       # Prob 82%                      #126.7 c69
        jmp       ..B1.63       # Prob 100%                     #126.7 c69
                                # LOE rax rcx rsi rdi r8 r10 edx ebx r9d r12d r14d zmm3 zmm4 zmm6 k1
..B1.60:                        # Preds ..B1.56 Latency 21
        movslq    %r10d, %r10                                   #126.7 c1
        vprefetch0 (%rdi)                                       #126.7 c1
        vprefetch0 256(%rdi)                                    #126.7 c5
        movslq    %r14d, %rax                                   #126.7 c5
        vprefetch0 512(%rdi)                                    #126.7 c9
        movb      %al, %al                                      #126.7 c9
        vprefetch0 768(%rdi)                                    #126.7 c13
        movb      %al, %al                                      #126.7 c13
        vprefetche0 (%rsi)                                      #126.7 c17
        movb      %al, %al                                      #126.7 c17
        vprefetche0 256(%rsi)                                   #126.7 c21
                                # LOE rax rcx rsi rdi r8 r10 edx ebx r9d r12d r14d zmm3 zmm4 zmm6 k1
..B1.61:                        # Preds ..B1.61 ..B1.60 Latency 65
        vmulpd    (%rdi,%r10,8), %zmm6, %zmm0                   #129.27 c1
        vprefetch1 2048(%rdi,%r10,8)                            #129.27 c1
        vmulpd    64(%rdi,%r10,8), %zmm6, %zmm1                 #129.27 c5
        vprefetch0 1024(%rdi,%r10,8)                            #129.27 c5
        vmulpd    128(%rdi,%r10,8), %zmm6, %zmm2                #129.27 c9
        vprefetche1 2048(%rsi,%r10,8)                           #129.8 c9
        vmulpd    192(%rdi,%r10,8), %zmm6, %zmm5                #129.27 c13
        vprefetche0 1024(%rsi,%r10,8)                           #129.8 c13
        vmovapd   %zmm0, (%rsi,%r10,8)                          #129.8 c17
        vprefetch1 2112(%rdi,%r10,8)                            #129.27 c17
        vmovapd   %zmm1, 64(%rsi,%r10,8)                        #129.8 c21
        vprefetch0 1088(%rdi,%r10,8)                            #129.27 c21
        vmovapd   %zmm2, 128(%rsi,%r10,8)                       #129.8 c25
        vprefetche1 2112(%rsi,%r10,8)                           #129.8 c25
        vmovapd   %zmm5, 192(%rsi,%r10,8)                       #129.8 c29
        vprefetche0 1088(%rsi,%r10,8)                           #129.8 c29
        vprefetch1 2176(%rdi,%r10,8)                            #129.27 c33
        movb      %al, %al                                      #129.27 c33
        vprefetch0 1152(%rdi,%r10,8)                            #129.27 c37
        movb      %al, %al                                      #129.8 c37
        vprefetche1 2176(%rsi,%r10,8)                           #129.8 c41
        movb      %al, %al                                      #129.8 c41
        vprefetche0 1152(%rsi,%r10,8)                           #129.8 c45
        movb      %al, %al                                      #129.27 c45
        vprefetch1 2240(%rdi,%r10,8)                            #129.27 c49
        movb      %al, %al                                      #129.27 c49
        vprefetch0 1216(%rdi,%r10,8)                            #129.27 c53
        movb      %al, %al                                      #129.8 c53
        vprefetche1 2240(%rsi,%r10,8)                           #129.8 c57
        movb      %al, %al                                      #129.8 c57
        vprefetche0 1216(%rsi,%r10,8)                           #129.8 c61
        addq      $32, %r10                                     #126.7 c61
        cmpq      %rax, %r10                                    #126.7 c65
        jb        ..B1.61       # Prob 82%                      #126.7 c65
                                # LOE rax rcx rsi rdi r8 r10 edx ebx r9d r12d r14d zmm3 zmm4 zmm6 k1
..B1.63:                        # Preds ..B1.61 ..B1.58 ..B1.55 Latency 9
        lea       1(%r14), %eax                                 #126.7 c1
        movslq    %eax, %rax                                    #126.7 c5
        cmpq      %rax, %rcx                                    #126.7 c9
        jae       ..B1.65       # Prob 50%                      #126.7 c9
                                # LOE rcx rsi rdi r8 edx ebx r9d r12d r14d zmm3 zmm4 zmm6 k1
..B1.64:                        # Preds ..B1.63 Latency 2
        movl      %r12d, %eax                                   #126.25 c1
        jmp       ..B1.70       # Prob 100%                     #126.25 c1
                                # LOE rcx rsi rdi r8 eax edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.65:                        # Preds ..B1.63 Latency 29
        movl      %r12d, %r15d                                  #126.7 c1
        movslq    %r14d, %r10                                   #126.7 c1
        subl      %r14d, %r15d                                  #126.7 c5
        xorl      %eax, %eax                                    #126.7 c5
        movl      %r15d, (%rsp)                                 #126.7 c9
        movq      %rcx, %r15                                    #126.7 c9
        vpbroadcastd .L_2il0floatpacket.82(%rip), %zmm2         #126.7 c13
        vmovaps   .L_2il0floatpacket.83(%rip), %zmm1            #126.7 c17
        vpbroadcastd (%rsp), %zmm0                              #126.7 c21
        subq      %r10, %r15                                    #126.7 c21
        lea       (%rsi,%r10,8), %r14                           #129.8 c25
        lea       (%rdi,%r10,8), %r13                           #129.27 c25
        xorl      %r11d, %r11d                                  # c29
        movl      %r12d, 8(%rsp)                                # c29
                                # LOE rax rcx rsi rdi r8 r11 r13 r14 r15 edx ebx r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm6 k1
..B1.66:                        # Preds ..B1.68 ..B1.65 Latency 33
        vpcmpgtd  %zmm0, %zmm1, %k0                             #126.7 c1
        nop                                                     #126.7 c5
        kmov      %k0, %r10d                                    #126.7 c9
        xorl      $-1, %r10d                                    #126.7 c13
        movl      %r10d, %r12d                                  #126.7 c17
        xorl      $-1, %r12d                                    #126.7 c21
        movzbl    %r12b, %r12d                                  #126.7 c25
        kmov      %r12d, %k2                                    #126.7 c29
        kortest   %k2, %k2                                      #126.7 c33
        jne       ..B1.74       # Prob 9%                       #126.7 c33
                                # LOE rax rcx rsi rdi r8 r11 r13 r14 r15 edx ebx r9d r10d zmm0 zmm1 zmm2 zmm3 zmm4 zmm6 k1
..B1.67:                        # Preds ..B1.66 Latency 17
        vloadunpackld (%r11,%r13), %zmm5                        #129.27 c1
        vloadunpackhd 64(%r11,%r13), %zmm5                      #129.27 c5
        vmulpd    %zmm5, %zmm6, %zmm7                           #129.27 c9
        nop                                                     #129.8 c13
        vmovapd   %zmm7, (%r11,%r14)                            #129.8 c17
                                # LOE rax rcx rsi rdi r8 r11 r13 r14 r15 edx ebx r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm6 k1
..B1.68:                        # Preds ..B1.74 ..B1.67 Latency 9
        addq      $8, %rax                                      #126.7 c1
        addq      $64, %r11                                     #126.7 c1
        vpaddd    %zmm2, %zmm1, %zmm1                           #126.7 c5
        cmpq      %r15, %rax                                    #126.7 c5
        jb        ..B1.66       # Prob 82%                      #126.7 c9
                                # LOE rax rcx rsi rdi r8 r11 r13 r14 r15 edx ebx r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm6 k1
..B1.69:                        # Preds ..B1.68 Latency 5
        movl      8(%rsp), %r12d                                # c1
        movl      %r12d, %eax                                   #126.25 c5
                                # LOE rcx rsi rdi r8 eax edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.70:                        # Preds ..B1.47 ..B1.69 ..B1.64 ..B1.54 Latency 9
        vaddpd    %zmm4, %zmm3, %zmm4{%k1}                      #132.31 c1
        incl      %r9d                                          #124.6 c1
        cmpl      %ebx, %r9d                                    #124.6 c5
        movb      %al, %al                                      #132.7 c5
        vpackstorelpd %zmm4, (%rdi){%k1}                        #132.7 c9
        jb        ..B1.47       # Prob 82%                      #124.6 c9
                                # LOE rcx rsi rdi r8 eax edx ebx r9d r12d zmm3 zmm4 zmm6 k1
..B1.71:                        # Preds ..B1.70 Latency 5
        movq      32(%rbp), %r10                                # c1
        movl      %eax, (%r8)                                   #126.25 c1
        movl      %ebx, (%r10)                                  #124.23 c5
                                # LOE
..B1.72:                        # Preds ..B1.45 ..B1.71 Latency 5
        xorl      %edi, %edi                                    #138.14 c1
        lea       (%rsp), %rsi                                  #138.14 c1
..___tag_value_main.71:                                         #138.14
        call      clock_gettime                                 #138.14
..___tag_value_main.72:                                         #
                                # LOE
..B1.73:                        # Preds ..B1.72 Latency 81
        movl      $1, %eax                                      #138.14 c1
        movq      64(%rbp), %rdi                                #111.4 c1
        kmov      %eax, %k1                                     #138.14 c5
        movq      152(%rsp), %r15                               #111.4 c5
..___tag_value_main.73:                                         #
        vcvtudq2pd (%rsp){1to8}, %zmm0{%k1}                     #138.14 c9
        kmov      %k1, %k2                                      #138.14 c9
        vcvtdq2pd 4(%rsp){1to8}, %zmm2{%k1}                     #138.14 c13
        movq      160(%rsp), %r14                               #111.4 c13
..___tag_value_main.74:                                         #
        vcvtudq2pd 8(%rsp){1to8}, %zmm1{%k1}                    #138.14 c17
        movq      168(%rsp), %r13                               #111.4 c17
..___tag_value_main.75:                                         #
        vcvtdq2pd 12(%rsp){1to8}, %zmm3{%k1}                    #138.14 c21
        movq      176(%rsp), %r12                               #111.4 c21
..___tag_value_main.76:                                         #
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm0, %zmm2{%k1} #138.14 c25
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm1, %zmm3{%k1} #138.14 c29
        vfmadd231pd .L_2il0floatpacket.79(%rip){1to8}, %zmm2, %zmm3{%k1} #138.6 c33
        movq      184(%rsp), %rbx                               #111.4 c37
..___tag_value_main.77:                                         #
        movb      %al, %al                                      #138.14 c37
        vpackstorelpd %zmm3, 192(%rsp){%k2}                     #138.14 c41
        fldl      192(%rsp)                                     #138.14 c45
        fnstcw    80(%rsp)                                      #138.14 c49
        movzwl    80(%rsp), %eax                                #138.14
        orl       $3072, %eax                                   #138.14
        movl      %eax, 88(%rsp)                                #138.14
        fldcw     88(%rsp)                                      #138.14
        fistpq    192(%rsp)                                     #138.14
        fldcw     80(%rsp)                                      #138.14
        xorl      %eax, %eax                                    #111.4 c53
        movq      192(%rsp), %rsi                               #138.14 c53
        movq      %rsi, 16(%rsp)                                #138.14 c57
        vcvtdq2pd 20(%rsp){1to8}, %zmm5{%k1}                    #138.14 c61
        vcvtudq2pd 16(%rsp){1to8}, %zmm4{%k1}                   #138.14 c65
        vfmadd132pd .L_2il0floatpacket.87(%rip){1to8}, %zmm4, %zmm5{%k1} #138.14 c69
        nop                                                     #138.6 c73
        vpackstorelpd %zmm5, (%rdi){%k1}                        #138.6 c77
        movq      %rbp, %rsp                                    #111.4 c81
        popq      %rbp                                          #111.4
..___tag_value_main.78:                                         #
        ret                                                     #111.4
..___tag_value_main.80:                                         #
                                # LOE
..B1.74:                        # Preds ..B1.66                 # Infreq Latency 30
        vmovapd   .L_2il0floatpacket.84(%rip), %zmm5            #129.27 c1
        vpxorq    %zmm7, %zmm7, %zmm7                           #129.27 c5
        kmov      %r10d, %k3                                    #129.27 c5
        lea       (%r13,%r11), %r10                             #129.27 c9
        kmov      %k3, %k2                                      #129.27 c9
..L88:                                                          #129.27
        vgatherdpd (%r10,%zmm5,8), %zmm7{%k2}                   #129.27
        jkzd      ..L87, %k2    # Prob 50%                      #129.27
        vgatherdpd (%r10,%zmm5,8), %zmm7{%k2}                   #129.27
        jknzd     ..L88, %k2    # Prob 50%                      #129.27
..L87:                                                          #
        vmulpd    %zmm7, %zmm6, %zmm8                           #129.27 c21
        nop                                                     #129.8 c25
        vmovapd   %zmm8, (%r11,%r14){%k3}                       #129.8 c29
        jmp       ..B1.68       # Prob 100%                     #129.8 c29
        .align    16,0x90
..___tag_value_main.89:                                         #
                                # LOE rax rcx rsi rdi r8 r11 r13 r14 r15 edx ebx r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm6 k1
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.93 - ..___tag_value_main.92
..___tag_value_main.92:
	.byte	1
	.uleb128	..___tag_value_main.91 - ..___tag_value_main.90
..___tag_value_main.90:
	.uleb128	..___tag_value_main.6 - ..___tag_value_main.1
	.uleb128	..___tag_value_main.24 - ..___tag_value_main.6
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.35 - ..___tag_value_main.1
	.uleb128	..___tag_value_main.46 - ..___tag_value_main.35
	.byte	0
	.byte	0
..___tag_value_main.91:
	.long	0x00000000,0x00000000
..___tag_value_main.93:
	.data
	.align 4
	.align 4
.2.7_2_kmpc_loc_struct_pack.15:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.14
	.align 4
.2.7_2__kmpc_loc_pack.14:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	54
	.byte	49
	.byte	59
	.byte	54
	.byte	49
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.7_2_kmpc_loc_struct_pack.26:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.25
	.align 4
.2.7_2__kmpc_loc_pack.25:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	54
	.byte	49
	.byte	59
	.byte	54
	.byte	49
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.7_2_kmpc_loc_struct_pack.43:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.42
	.align 4
.2.7_2__kmpc_loc_pack.42:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	49
	.byte	49
	.byte	59
	.byte	49
	.byte	52
	.byte	48
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.7_2_kmpc_loc_struct_pack.34:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.7_2__kmpc_loc_pack.33
	.align 4
.2.7_2__kmpc_loc_pack.33:
	.byte	59
	.byte	117
	.byte	110
	.byte	107
	.byte	110
	.byte	111
	.byte	119
	.byte	110
	.byte	59
	.byte	109
	.byte	97
	.byte	105
	.byte	110
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	49
	.byte	53
	.byte	55
	.byte	59
	.byte	59
	.data
# -- End  main, L_main_111__par_region0_2.41
	.text
# -- Begin  timer
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl timer
timer:
..B2.1:                         # Preds ..B2.0 Latency 9
..___tag_value_timer.94:                                        #30.1
        subq      $56, %rsp                                     #30.1 c1
..___tag_value_timer.96:                                        #
        xorl      %edi, %edi                                    #33.2 c1
        lea       (%rsp), %rsi                                  #33.2 c5
..___tag_value_timer.97:                                        #33.2
        call      clock_gettime                                 #33.2
..___tag_value_timer.98:                                        #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.2:                         # Preds ..B2.1 Latency 77
        movl      $1, %edx                                      #34.10 c1
        kmov      %edx, %k1                                     #34.10 c5
        vcvtudq2pd (%rsp){1to8}, %zmm1{%k1}                     #34.10 c9
        kmov      %k1, %k2                                      #34.29 c9
        vcvtdq2pd 4(%rsp){1to8}, %zmm4{%k1}                     #34.10 c13
        vcvtudq2pd 8(%rsp){1to8}, %zmm2{%k1}                    #34.29 c17
        vcvtdq2pd 12(%rsp){1to8}, %zmm3{%k1}                    #34.29 c21
        vfmadd132pd .L_2il0floatpacket.94(%rip){1to8}, %zmm1, %zmm4{%k1} #34.10 c25
        vfmadd132pd .L_2il0floatpacket.94(%rip){1to8}, %zmm2, %zmm3{%k1} #34.29 c29
        vfmadd132pd .L_2il0floatpacket.93(%rip){1to8}, %zmm3, %zmm4{%k1} #36.17 c33
        nop                                                     #34.29 c37
        vpackstorelpd %zmm4, 40(%rsp){%k2}                      #34.29 c41
        fldl      40(%rsp)                                      #34.29 c45
        fnstcw    16(%rsp)                                      #34.29 c49
        movzwl    16(%rsp), %eax                                #34.29
        orl       $3072, %eax                                   #34.29
        movl      %eax, 24(%rsp)                                #34.29
        fldcw     24(%rsp)                                      #34.29
        fistpq    40(%rsp)                                      #34.29
        fldcw     16(%rsp)                                      #34.29
        movq      40(%rsp), %rcx                                #34.29 c53
        movq      %rcx, 32(%rsp)                                #36.17 c57
        vcvtdq2pd 36(%rsp){1to8}, %zmm0{%k1}                    #36.17 c61
        vcvtudq2pd 32(%rsp){1to8}, %zmm5{%k1}                   #36.17 c65
        vfmadd132pd .L_2il0floatpacket.94(%rip){1to8}, %zmm5, %zmm0{%k1} #36.17 c69
        addq      $56, %rsp                                     #36.17 c73
..___tag_value_timer.99:                                        #
        ret                                                     #36.17 c77
        .align    16,0x90
..___tag_value_timer.100:                                       #
                                # LOE
# mark_end;
	.type	timer,@function
	.size	timer,.-timer
	.data
# -- End  timer
	.text
# -- Begin  fill
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl fill
fill:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %zmm0
..B3.1:                         # Preds ..B3.0 Latency 5
..___tag_value_fill.101:                                        #46.35
        subq      $40, %rsp                                     #46.35 c1
..___tag_value_fill.103:                                        #
        xorl      %eax, %eax                                    #48.5 c1
        testq     %rsi, %rsi                                    #48.21 c5
        jle       ..B3.6        # Prob 10%                      #48.21 c5
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 zmm0
..B3.2:                         # Preds ..B3.1 Latency 21
        movl      $1, %edx                                      #50.51 c1
        vprefetche0 (%rdi)                                      #48.5 c1
        kmov      %edx, %k1                                     #50.51 c5
        vprefetche0 8(%rdi)                                     #48.5 c5
        vpackstorelpd %zmm0, 32(%rsp){%k1}                      #50.51 c9
        movb      %dl, %dl                                      #50.51 c9
        movq      %r12, 16(%rsp)                                #50.51 c13
..___tag_value_fill.104:                                        #
        movq      %rax, %r12                                    #50.51 c13
        movq      %r13, 8(%rsp)                                 #50.51 c17
..___tag_value_fill.105:                                        #
        movq      %rdi, %r13                                    #50.51 c17
        movq      %r14, (%rsp)                                  #50.51 c21
..___tag_value_fill.106:                                        #
        movq      %rsi, %r14                                    #50.51 c21
                                # LOE rbx rbp r12 r13 r14 r15
..B3.3:                         # Preds ..B3.4 ..B3.2 Latency 1
        call      rand                                          #50.30 c1
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B3.4:                         # Preds ..B3.3 Latency 41
        movl      %eax, 24(%rsp)                                #50.30 c1
        vprefetche1 128(%r13,%r12,8)                            #50.9 c1
        movl      $1, %eax                                      #50.30 c5
        vprefetche0 16(%r13,%r12,8)                             #50.9 c5
        kmov      %eax, %k1                                     #50.30 c9
        vcvtfxpntdq2ps $0, 24(%rsp){1to16}, %zmm0{%k1}          #50.30 c13
        vmulps    .L_2il0floatpacket.98(%rip){1to16}, %zmm0, %zmm1{%k1} #50.51 c17
        nop                                                     #50.51 c21
        vcvtps2pd %zmm1, %zmm2{%k1}                             #50.51 c25
        vmulpd    32(%rsp){1to8}, %zmm2, %zmm3{%k1}             #50.51 c29
        nop                                                     #50.9 c33
        vpackstorelpd %zmm3, (%r13,%r12,8){%k1}                 #50.9 c37
        incq      %r12                                          #48.5 c37
        cmpq      %r14, %r12                                    #48.5 c41
        jb        ..B3.3        # Prob 82%                      #48.5 c41
                                # LOE rbx rbp r12 r13 r14 r15
..B3.5:                         # Preds ..B3.4 Latency 5
        movq      16(%rsp), %r12                                # c1
..___tag_value_fill.107:                                        #
        movq      8(%rsp), %r13                                 # c1
..___tag_value_fill.108:                                        #
        movq      (%rsp), %r14                                  # c5
..___tag_value_fill.109:                                        #
                                # LOE rbx rbp r12 r13 r14 r15
..B3.6:                         # Preds ..B3.5 ..B3.1 Latency 5
        addq      $40, %rsp                                     #52.5 c1
..___tag_value_fill.110:                                        #
        ret                                                     #52.5 c5
        .align    16,0x90
..___tag_value_fill.111:                                        #
                                # LOE
# mark_end;
	.type	fill,@function
	.size	fill,.-fill
	.data
# -- End  fill
	.bss
	.align 4
	.align 4
___kmpv_zeromain_0:
	.type	___kmpv_zeromain_0,@object
	.size	___kmpv_zeromain_0,4
	.space 4	# pad
	.section .rodata, "a"
	.align 64
	.align 64
.L_2il0floatpacket.83:
	.long	0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
	.type	.L_2il0floatpacket.83,@object
	.size	.L_2il0floatpacket.83,64
	.align 64
.L_2il0floatpacket.84:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.84,@object
	.size	.L_2il0floatpacket.84,64
	.align 32
.L_2il0floatpacket.88:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x41380000,0x00000000,0x4137fc02
	.type	.L_2il0floatpacket.88,@object
	.size	.L_2il0floatpacket.88,32
	.align 32
.L_2il0floatpacket.89:
	.long	0x00000000,0xfff00000,0x00000001,0x00000000,0x0000043e,0x00000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.89,@object
	.size	.L_2il0floatpacket.89,32
	.align 16
.L_2il0floatpacket.90:
	.long	0x40900800,0xc090d400,0x7fe00000,0x03500000
	.type	.L_2il0floatpacket.90,@object
	.size	.L_2il0floatpacket.90,16
	.align 8
.L_2il0floatpacket.79:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.79,@object
	.size	.L_2il0floatpacket.79,8
	.align 8
.L_2il0floatpacket.80:
	.long	0xd2f1a9fc,0x3f50624d
	.type	.L_2il0floatpacket.80,@object
	.size	.L_2il0floatpacket.80,8
	.align 8
.L_2il0floatpacket.81:
	.long	0x00000000,0x3fe00000
	.type	.L_2il0floatpacket.81,@object
	.size	.L_2il0floatpacket.81,8
	.align 8
.L_2il0floatpacket.85:
	.long	0x00000000,0x40240000
	.type	.L_2il0floatpacket.85,@object
	.size	.L_2il0floatpacket.85,8
	.align 8
.L_2il0floatpacket.87:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.87,@object
	.size	.L_2il0floatpacket.87,8
	.align 8
.L_2il0floatpacket.93:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.93,@object
	.size	.L_2il0floatpacket.93,8
	.align 8
.L_2il0floatpacket.94:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.94,@object
	.size	.L_2il0floatpacket.94,8
	.align 4
.L_2il0floatpacket.82:
	.long	0x00000008
	.type	.L_2il0floatpacket.82,@object
	.size	.L_2il0floatpacket.82,4
	.align 4
.L_2il0floatpacket.86:
	.long	0x30000000
	.type	.L_2il0floatpacket.86,@object
	.size	.L_2il0floatpacket.86,4
	.align 4
.L_2il0floatpacket.91:
	.long	0x00028b45
	.type	.L_2il0floatpacket.91,@object
	.size	.L_2il0floatpacket.91,4
	.align 4
.L_2il0floatpacket.92:
	.long	0x00018842
	.type	.L_2il0floatpacket.92,@object
	.size	.L_2il0floatpacket.92,4
	.align 4
.L_2il0floatpacket.98:
	.long	0x30000000
	.type	.L_2il0floatpacket.98,@object
	.size	.L_2il0floatpacket.98,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.1:
	.byte	100
	.byte	101
	.byte	99
	.byte	108
	.byte	97
	.byte	114
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,12
	.align 4
.L_2__STRING.0:
	.byte	68
	.byte	66
	.byte	32
	.byte	73
	.byte	78
	.byte	70
	.byte	79
	.byte	58
	.byte	58
	.byte	32
	.byte	37
	.byte	115
	.byte	10
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.byte	105
	.byte	110
	.byte	116
	.byte	105
	.byte	97
	.byte	108
	.byte	105
	.byte	122
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,14
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.4:
	.byte	109
	.byte	101
	.byte	97
	.byte	115
	.byte	117
	.byte	114
	.byte	101
	.byte	109
	.byte	101
	.byte	110
	.byte	116
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,12
	.align 4
.L_2__STRING.5:
	.byte	37
	.byte	108
	.byte	102
	.byte	10
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.byte	97
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.byte	114
	.byte	97
	.byte	119
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,8
	.align 4
.L_2__STRING.8:
	.byte	37
	.byte	100
	.byte	9
	.byte	37
	.byte	108
	.byte	102
	.byte	10
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,8
	.align 4
.L_2__STRING.9:
	.byte	99
	.byte	98
	.byte	119
	.byte	58
	.byte	32
	.byte	37
	.byte	108
	.byte	102
	.byte	9
	.byte	10
	.byte	0
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.10:
	.byte	112
	.byte	111
	.byte	115
	.byte	116
	.byte	45
	.byte	112
	.byte	114
	.byte	111
	.byte	99
	.byte	101
	.byte	115
	.byte	115
	.byte	0
	.type	.L_2__STRING.10,@object
	.size	.L_2__STRING.10,13
	.section .rodata.str1.32, "aMS",@progbits,1
	.align 32
	.align 4
.L_2__STRING.2:
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	45
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,54
	.data
# mark_proc_addr_taken L_main_111__par_region0_2.41;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x000001ac
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.89-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.7-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffb80d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xffffb00d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xffa80d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0xa00d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffff98
	.2byte 0x0422
	.4byte ..___tag_value_main.47-..___tag_value_main.7
	.2byte 0x04cf
	.4byte ..___tag_value_main.48-..___tag_value_main.47
	.2byte 0x04ce
	.4byte ..___tag_value_main.49-..___tag_value_main.48
	.2byte 0x04cd
	.4byte ..___tag_value_main.50-..___tag_value_main.49
	.2byte 0x04cc
	.4byte ..___tag_value_main.51-..___tag_value_main.50
	.2byte 0x04c3
	.4byte ..___tag_value_main.52-..___tag_value_main.51
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.54-..___tag_value_main.52
	.4byte 0x0410060c
	.4byte ..___tag_value_main.56-..___tag_value_main.54
	.4byte 0x0410070c
	.4byte ..___tag_value_main.57-..___tag_value_main.56
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.59-..___tag_value_main.57
	.8byte 0xff800d1c380e0310
	.8byte 0xffffffb80d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.60-..___tag_value_main.59
	.8byte 0xff800d1c380e0d10
	.8byte 0xffffffa80d1affff
	.8byte 0x800d1c380e0e1022
	.8byte 0xffffa00d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xff980d1affffff80
	.4byte 0x0422ffff
	.4byte ..___tag_value_main.63-..___tag_value_main.60
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffffb00d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.73-..___tag_value_main.63
	.2byte 0x04cf
	.4byte ..___tag_value_main.74-..___tag_value_main.73
	.2byte 0x04ce
	.4byte ..___tag_value_main.75-..___tag_value_main.74
	.2byte 0x04cd
	.4byte ..___tag_value_main.76-..___tag_value_main.75
	.2byte 0x04cc
	.4byte ..___tag_value_main.77-..___tag_value_main.76
	.2byte 0x04c3
	.4byte ..___tag_value_main.78-..___tag_value_main.77
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.80-..___tag_value_main.78
	.8byte 0x1c380e031010060c
	.8byte 0xb80d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022ffffffb00d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22ffffffa80d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffffa00d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffff980d1affffff
	.4byte 0x000022ff
	.4byte 0x00000024
	.4byte 0x000001cc
	.8byte ..___tag_value_timer.94
	.8byte ..___tag_value_timer.100-..___tag_value_timer.94
	.byte 0x04
	.4byte ..___tag_value_timer.96-..___tag_value_timer.94
	.2byte 0x400e
	.byte 0x04
	.4byte ..___tag_value_timer.99-..___tag_value_timer.96
	.4byte 0x0000080e
	.4byte 0x0000004c
	.4byte 0x000001f4
	.8byte ..___tag_value_fill.101
	.8byte ..___tag_value_fill.111-..___tag_value_fill.101
	.byte 0x04
	.4byte ..___tag_value_fill.103-..___tag_value_fill.101
	.2byte 0x300e
	.byte 0x04
	.4byte ..___tag_value_fill.104-..___tag_value_fill.103
	.2byte 0x048c
	.byte 0x04
	.4byte ..___tag_value_fill.105-..___tag_value_fill.104
	.2byte 0x058d
	.byte 0x04
	.4byte ..___tag_value_fill.106-..___tag_value_fill.105
	.2byte 0x068e
	.byte 0x04
	.4byte ..___tag_value_fill.107-..___tag_value_fill.106
	.2byte 0x04cc
	.4byte ..___tag_value_fill.108-..___tag_value_fill.107
	.2byte 0x04cd
	.4byte ..___tag_value_fill.109-..___tag_value_fill.108
	.2byte 0x04ce
	.4byte ..___tag_value_fill.110-..___tag_value_fill.109
	.4byte 0x0000080e
	.byte 0x00
# End
