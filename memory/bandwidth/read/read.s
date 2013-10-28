# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) MIC Architecture, Version 13.1.1.163";
# mark_description " Beta Build 20130313";
# mark_description "-mmic -openmp -S";
	.file "read.c"
	.text
..TXTST0:
# -- Begin  main, L_main_117__par_loop0_2.39, L_main_117__tree_reduce0_2.77
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl main
main:
# parameter 1: %edi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0 Latency 17
..___tag_value_main.1:                                          #93.1
        pushq     %rbp                                          #93.1
..___tag_value_main.3:                                          #
        movq      %rsp, %rbp                                    #93.1
..___tag_value_main.4:                                          #
        andq      $-128, %rsp                                   #93.1
        subq      $256, %rsp                                    #93.1 c1
        pushq     $3                                            #93.1 c1
        popq      %rdi                                          #93.1
        movq      %rbx, 120(%rsp)                               #93.1 c5
        movq      %r15, 88(%rsp)                                #93.1 c5
        movq      %r14, 96(%rsp)                                #93.1 c9
        movq      %r13, 104(%rsp)                               #93.1 c9
        movq      %r12, 112(%rsp)                               #93.1 c13
..___tag_value_main.6:                                          #93.1
        call      __intel_new_proc_init_R                       #93.1
..___tag_value_main.7:                                          #
                                # LOE
..B1.64:                        # Preds ..B1.1 Latency 11
        stmxcsr   (%rsp)                                        #93.1 c1
        movl      $.2.11_2_kmpc_loc_struct_pack.13, %edi        #93.1 c2
        xorl      %esi, %esi                                    #93.1 c2
        orl       $32832, (%rsp)                                #93.1 c6
        xorl      %eax, %eax                                    #93.1 c6
        ldmxcsr   (%rsp)                                        #93.1 c10
..___tag_value_main.13:                                         #93.1
        call      __kmpc_begin                                  #93.1
..___tag_value_main.14:                                         #
                                # LOE
..B1.2:                         # Preds ..B1.64 Latency 5
        movl      $.2.11_2_kmpc_loc_struct_pack.24, %edi        #93.1 c1
        call      __kmpc_global_thread_num                      #93.1 c5
                                # LOE eax
..B1.66:                        # Preds ..B1.2 Latency 13
        movl      $1073741824, %edi                             #105.12 c1
        movl      %eax, 64(%rsp)                                #93.1 c1
        movq      $0, 128(%rsp)                                 #100.2 c5
        movq      $134217728, 16(%rsp)                          #102.2 c9
        call      malloc                                        #105.12 c13
                                # LOE rax
..B1.65:                        # Preds ..B1.66 Latency 1
        movq      %rax, %r12                                    #105.12 c1
                                # LOE r12
..B1.3:                         # Preds ..B1.65 Latency 5
        movq      %r12, 24(%rsp)                                #105.2 c1
        testq     %r12, %r12                                    #106.8 c1
        jne       ..B1.8        # Prob 68%                      #106.8 c5
                                # LOE r12
..B1.4:                         # Preds ..B1.3 Latency 5
        movl      $.L_2__STRING.5, %edi                         #108.3 c1
        xorl      %eax, %eax                                    #108.3 c1
..___tag_value_main.15:                                         #108.3
        call      printf                                        #108.3
..___tag_value_main.16:                                         #
                                # LOE
..B1.5:                         # Preds ..B1.4 Latency 5
        movl      $.L_2__STRING.6, %edi                         #108.3 c1
        xorl      %eax, %eax                                    #108.3 c1
..___tag_value_main.17:                                         #108.3
        call      printf                                        #108.3
..___tag_value_main.18:                                         #
                                # LOE
..B1.6:                         # Preds ..B1.5 Latency 5
        movl      $.L_2__STRING.7, %edi                         #108.3 c1
        xorl      %eax, %eax                                    #108.3 c1
..___tag_value_main.19:                                         #108.3
        call      printf                                        #108.3
..___tag_value_main.20:                                         #
                                # LOE
..B1.7:                         # Preds ..B1.6 Latency 5
        orl       $-1, %edi                                     #108.3 c1
        call      exit                                          #108.3 c5
                                # LOE
..B1.8:                         # Preds ..B1.3 Latency 9
        movl      $1, %eax                                      #110.2 c1
        vprefetche0 (%r12)                                      #110.2 c1
        xorl      %ebx, %ebx                                    #110.2 c5
        vprefetche0 8(%r12)                                     #110.2 c5
        kmov      %eax, %k1                                     #110.2 c9
                                # LOE rbx r12 k1
..B1.9:                         # Preds ..B1.10 ..B1.8 Latency 1
        call      rand                                          #110.2 c1
                                # LOE rbx r12 eax
..B1.67:                        # Preds ..B1.9 Latency 5
        movl      $1, %edx                                      # c1
        kmov      %edx, %k1                                     # c5
                                # LOE rbx r12 eax k1
..B1.10:                        # Preds ..B1.67 Latency 33
        movl      %eax, 152(%rsp)                               #110.2 c1
        vprefetche1 128(%r12)                                   #110.2 c1
        vcvtfxpntdq2ps $0, 152(%rsp){1to16}, %zmm0{%k1}         #110.2 c5
        vprefetche0 16(%r12)                                    #110.2 c5
        vmulps    .L_2il0floatpacket.88(%rip){1to16}, %zmm0, %zmm1{%k1} #110.2 c9
        incq      %rbx                                          #110.2 c13
        vcvtps2pd %zmm1, %zmm2{%k1}                             #110.2 c17
        vmulpd    .L_2il0floatpacket.87(%rip){1to8}, %zmm2, %zmm3{%k1} #110.2 c21
        nop                                                     #110.2 c25
        vpackstorelpd %zmm3, (%r12){%k1}                        #110.2 c29
        addq      $8, %r12                                      #110.2 c29
        cmpq      $134217728, %rbx                              #110.2 c33
        jb        ..B1.9        # Prob 81%                      #110.2 c33
                                # LOE rbx r12 k1
..B1.11:                        # Preds ..B1.10 Latency 1
        movb      $-2, %bl                                      #114.6 c1
                                # LOE bl
..B1.12:                        # Preds ..B1.21 ..B1.11 Latency 5
        xorl      %edi, %edi                                    #116.13 c1
        lea       32(%rsp), %rsi                                #116.13 c1
..___tag_value_main.21:                                         #116.13
        call      clock_gettime                                 #116.13
..___tag_value_main.22:                                         #
                                # LOE bl
..B1.13:                        # Preds ..B1.12 Latency 81
        movl      $1, %ecx                                      #116.13 c1
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c1
        kmov      %ecx, %k1                                     #116.13 c5
        vcvtudq2pd 32(%rsp){1to8}, %zmm0{%k1}                   #116.13 c9
        kmov      %k1, %k2                                      #116.13 c9
        vcvtdq2pd 36(%rsp){1to8}, %zmm2{%k1}                    #116.13 c13
        vcvtudq2pd 40(%rsp){1to8}, %zmm1{%k1}                   #116.13 c17
        vcvtdq2pd 44(%rsp){1to8}, %zmm3{%k1}                    #116.13 c21
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm0, %zmm2{%k1} #116.13 c25
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm1, %zmm3{%k1} #116.13 c29
        vfmadd231pd .L_2il0floatpacket.89(%rip){1to8}, %zmm2, %zmm3{%k1} #116.13 c33
        nop                                                     #116.13 c37
        vpackstorelpd %zmm3, 152(%rsp){%k2}                     #116.13 c41
        fldl      152(%rsp)                                     #116.13 c45
        fnstcw    72(%rsp)                                      #116.13 c49
        movzwl    72(%rsp), %eax                                #116.13
        orl       $3072, %eax                                   #116.13
        movl      %eax, 80(%rsp)                                #116.13
        fldcw     80(%rsp)                                      #116.13
        fistpq    152(%rsp)                                     #116.13
        fldcw     72(%rsp)                                      #116.13
        xorl      %eax, %eax                                    #117.2 c53
        movq      152(%rsp), %rsi                               #116.13 c53
        movq      %rsi, 136(%rsp)                               #116.13 c57
        vcvtdq2pd 140(%rsp){1to8}, %zmm5{%k1}                   #116.13 c61
        vcvtudq2pd 136(%rsp){1to8}, %zmm4{%k1}                  #116.13 c65
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm4, %zmm5{%k1} #116.13 c69
        nop                                                     #116.13 c73
        vpackstorelpd %zmm5, 160(%rsp){%k1}                     #116.13 c77
..___tag_value_main.23:                                         #117.2
        call      __kmpc_ok_to_fork                             #117.2
..___tag_value_main.24:                                         #
                                # LOE eax bl
..B1.14:                        # Preds ..B1.13 Latency 1
        testl     %eax, %eax                                    #117.2 c1
        je        ..B1.16       # Prob 50%                      #117.2 c1
                                # LOE bl
..B1.15:                        # Preds ..B1.14 Latency 18
        movl      $L_main_117__par_loop0_2.39, %edx             #117.2 c1
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c1
        pushq     $3                                            #117.2 c5
        popq      %rsi                                          #117.2
        lea       24(%rsp), %rcx                                #117.2 c5
        lea       16(%rsp), %r8                                 #117.2 c9
        lea       128(%rsp), %r9                                #117.2 c9
        xorl      %eax, %eax                                    #117.2 c13
..___tag_value_main.25:                                         #117.2
        call      __kmpc_fork_call                              #117.2
..___tag_value_main.26:                                         #
        jmp       ..B1.19       # Prob 100%                     #117.2 c17
                                # LOE bl
..B1.16:                        # Preds ..B1.14 Latency 9
        movl      64(%rsp), %esi                                #117.2 c1
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c1
        xorl      %eax, %eax                                    #117.2 c5
..___tag_value_main.27:                                         #117.2
        call      __kmpc_serialized_parallel                    #117.2
..___tag_value_main.28:                                         #
                                # LOE bl
..B1.17:                        # Preds ..B1.16 Latency 13
        lea       64(%rsp), %rdi                                #117.2 c1
        movl      $___kmpv_zeromain_0, %esi                     #117.2 c1
        lea       24(%rsp), %rdx                                #117.2 c5
        lea       16(%rsp), %rcx                                #117.2 c5
        lea       128(%rsp), %r8                                #117.2 c9
..___tag_value_main.29:                                         #117.2
        call      L_main_117__par_loop0_2.39                    #117.2
..___tag_value_main.30:                                         #
                                # LOE bl
..B1.18:                        # Preds ..B1.17 Latency 9
        movl      64(%rsp), %esi                                #117.2 c1
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c1
        xorl      %eax, %eax                                    #117.2 c5
..___tag_value_main.31:                                         #117.2
        call      __kmpc_end_serialized_parallel                #117.2
..___tag_value_main.32:                                         #
                                # LOE bl
..B1.19:                        # Preds ..B1.18 ..B1.15 Latency 25
        vbroadcastsd .L_2il0floatpacket.94(%rip), %zmm0         #122.11 c1
        movl      $1, %eax                                      #122.11 c5
        xorl      %edi, %edi                                    #123.11 c5
        kmov      %eax, %k1                                     #122.11 c9
        lea       48(%rsp), %rsi                                #123.11 c9
        vaddpd    128(%rsp){1to8}, %zmm0, %zmm1{%k1}            #122.11 c13
        nop                                                     #122.3 c17
        vpackstorelpd %zmm1, 128(%rsp){%k1}                     #122.3 c21
..___tag_value_main.33:                                         #123.11
        call      clock_gettime                                 #123.11
..___tag_value_main.34:                                         #
                                # LOE bl
..B1.20:                        # Preds ..B1.19 Latency 73
        movl      $1, %edx                                      #123.11 c1
        kmov      %edx, %k1                                     #123.11 c5
        vcvtudq2pd 48(%rsp){1to8}, %zmm0{%k1}                   #123.11 c9
        kmov      %k1, %k2                                      #123.11 c9
        vcvtdq2pd 52(%rsp){1to8}, %zmm2{%k1}                    #123.11 c13
        vcvtudq2pd 56(%rsp){1to8}, %zmm1{%k1}                   #123.11 c17
        vcvtdq2pd 60(%rsp){1to8}, %zmm3{%k1}                    #123.11 c21
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm0, %zmm2{%k1} #123.11 c25
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm1, %zmm3{%k1} #123.11 c29
        vfmadd231pd .L_2il0floatpacket.89(%rip){1to8}, %zmm2, %zmm3{%k1} #123.11 c33
        nop                                                     #123.11 c37
        vpackstorelpd %zmm3, 152(%rsp){%k2}                     #123.11 c41
        fldl      152(%rsp)                                     #123.11 c45
        fnstcw    72(%rsp)                                      #123.11 c49
        movzwl    72(%rsp), %eax                                #123.11
        orl       $3072, %eax                                   #123.11
        movl      %eax, 80(%rsp)                                #123.11
        fldcw     80(%rsp)                                      #123.11
        fistpq    152(%rsp)                                     #123.11
        fldcw     72(%rsp)                                      #123.11
        cmpb      $2, %bl                                       #124.18 c53
        movq      152(%rsp), %rcx                               #123.11 c53
        movq      %rcx, 144(%rsp)                               #123.11 c57
        vcvtdq2pd 148(%rsp){1to8}, %zmm0{%k1}                   #123.11 c61
        vcvtudq2pd 144(%rsp){1to8}, %zmm4{%k1}                  #123.11 c65
        vfmadd132pd .L_2il0floatpacket.95(%rip){1to8}, %zmm4, %zmm0{%k1} #123.11 c69
        je        ..B1.55       # Prob 14%                      #124.18 c73
                                # LOE bl zmm0
..B1.21:                        # Preds ..B1.58 ..B1.20 Latency 5
        incb      %bl                                           #114.23 c1
        cmpb      $3, %bl                                       #114.14 c5
        jl        ..B1.12       # Prob 82%                      #114.14 c5
                                # LOE bl
..B1.22:                        # Preds ..B1.21 Latency 5
        movl      $.L_2__STRING.2, %edi                         #131.2 c1
        movl      $.L_2__STRING.3, %esi                         #131.2 c1
        call      fopen                                         #131.2 c5
                                # LOE rax
..B1.69:                        # Preds ..B1.22 Latency 1
        movq      %rax, %rbx                                    #131.2 c1
                                # LOE rbx
..B1.23:                        # Preds ..B1.69 Latency 9
        vbroadcastsd 128(%rsp), %zmm0                           #131.2 c1
        movq      %rbx, %rdi                                    #131.2 c1
        movl      $.L_2__STRING.4, %esi                         #131.2 c5
        movl      $1, %eax                                      #131.2 c5
        call      fprintf                                       #131.2 c9
                                # LOE rbx
..B1.24:                        # Preds ..B1.23 Latency 5
        movq      %rbx, %rdi                                    #131.2 c1
        call      fclose                                        #131.2 c5
                                # LOE
..B1.25:                        # Preds ..B1.24 Latency 5
        movl      $.L_2__STRING.8, %edi                         #132.2 c1
        movl      $.L_2__STRING.3, %esi                         #132.2 c1
        call      fopen                                         #132.2 c5
                                # LOE rax
..B1.70:                        # Preds ..B1.25 Latency 1
        movq      %rax, %rbx                                    #132.2 c1
                                # LOE rbx
..B1.26:                        # Preds ..B1.70 Latency 5
        movl      $.L_2__STRING.7, %edi                         #132.2 c1
        movq      %rbx, %rsi                                    #132.2 c1
        call      fputs                                         #132.2 c5
                                # LOE rbx
..B1.27:                        # Preds ..B1.26 Latency 5
        movq      %rbx, %rdi                                    #132.2 c1
        call      fclose                                        #132.2 c5
                                # LOE
..B1.28:                        # Preds ..B1.27 Latency 5
        movq      24(%rsp), %rdi                                #135.5 c1
        testq     %rdi, %rdi                                    #135.8 c5
        je        ..B1.30       # Prob 33%                      #135.8 c5
                                # LOE rdi
..B1.29:                        # Preds ..B1.28 Latency 1
        call      free                                          #135.14 c1
                                # LOE
..B1.30:                        # Preds ..B1.29 ..B1.28 Latency 5
        movl      $.2.11_2_kmpc_loc_struct_pack.32, %edi        #136.9 c1
        xorl      %eax, %eax                                    #136.9 c1
..___tag_value_main.35:                                         #136.9
        call      __kmpc_end                                    #136.9
..___tag_value_main.36:                                         #
                                # LOE
..B1.31:                        # Preds ..B1.30 Latency 17
        movq      88(%rsp), %r15                                #136.9 c1
..___tag_value_main.37:                                         #
        xorl      %eax, %eax                                    #136.9 c1
        movq      96(%rsp), %r14                                #136.9 c5
..___tag_value_main.38:                                         #
        movq      104(%rsp), %r13                               #136.9 c5
..___tag_value_main.39:                                         #
        movq      112(%rsp), %r12                               #136.9 c9
..___tag_value_main.40:                                         #
        movq      120(%rsp), %rbx                               #136.9 c9
..___tag_value_main.41:                                         #
        movq      %rbp, %rsp                                    #136.9 c17
        popq      %rbp                                          #136.9
..___tag_value_main.42:                                         #
        ret                                                     #136.9
..___tag_value_main.44:                                         #
                                # LOE
L_main_117__tree_reduce0_2.77:
# parameter 1: %rdi
# parameter 2: %rsi
..B1.32:                        # Preds ..B1.0 Latency 37
        pushq     %rbp                                          #117.2
..___tag_value_main.46:                                         #
        movq      %rsp, %rbp                                    #117.2
..___tag_value_main.47:                                         #
        andq      $-128, %rsp                                   #117.2
        subq      $256, %rsp                                    #117.2 c1
        pushq     $1                                            #117.2 c1
        popq      %rax                                          #117.2
        vbroadcastsd (%rsi), %zmm0                              #117.2 c5
        kmov      %eax, %k1                                     #117.2 c5
        vaddpd    (%rdi){1to8}, %zmm0, %zmm1{%k1}               #117.2 c9
        movq      %rbx, 120(%rsp)                               #117.2 c9
        movq      %r15, 88(%rsp)                                #117.2 c13
        xorl      %eax, %eax                                    #117.2 c13
        movq      %r14, 96(%rsp)                                #117.2 c17
        movq      88(%rsp), %r15                                #117.2 c17
..___tag_value_main.49:                                         #
        movq      %r13, 104(%rsp)                               #117.2 c21
        movq      96(%rsp), %r14                                #117.2 c21
..___tag_value_main.51:                                         #
        movq      %r12, 112(%rsp)                               #117.2 c25
        movq      104(%rsp), %r13                               #117.2 c25
..___tag_value_main.53:                                         #
        movq      112(%rsp), %r12                               #117.2 c29
..___tag_value_main.55:                                         #
        vpackstorelpd %zmm1, (%rdi){%k1}                        #117.2 c29
        movq      120(%rsp), %rbx                               #117.2 c33
..___tag_value_main.56:                                         #
        movq      %rbp, %rsp                                    #117.2 c37
        popq      %rbp                                          #117.2
..___tag_value_main.57:                                         #
        ret                                                     #117.2
..___tag_value_main.59:                                         #
                                # LOE
L_main_117__par_loop0_2.39:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %rcx
# parameter 5: %r8
..B1.33:                        # Preds ..B1.0 Latency 29
        pushq     %rbp                                          #117.2
..___tag_value_main.61:                                         #
        movq      %rsp, %rbp                                    #117.2
..___tag_value_main.62:                                         #
        andq      $-128, %rsp                                   #117.2
        subq      $256, %rsp                                    #117.2 c1
        movl      $1, %eax                                      #117.2 c1
        vpxorq    %zmm0, %zmm0, %zmm0                           #117.2 c5
        movq      %r14, 96(%rsp)                                #117.2 c5
        kmov      %eax, %k1                                     #117.2 c9
        movq      %rbx, 120(%rsp)                               #117.2 c9
        movq      %r15, 88(%rsp)                                #117.2 c13
..___tag_value_main.64:                                         #
        movq      (%rcx), %r14                                  #117.2 c13
        movq      %r13, 104(%rsp)                               #117.2 c17
..___tag_value_main.67:                                         #
        movq      %rdx, %r13                                    #117.2 c17
        movq      %r12, 112(%rsp)                               #117.2 c21
..___tag_value_main.68:                                         #
        movq      %r8, %r12                                     #117.2 c21
        movl      (%rdi), %ebx                                  #117.2 c25
        vpackstorelpd %zmm0, 16(%rsp){%k1}                      #117.2 c25
        testq     %r14, %r14                                    #118.14 c29
        jle       ..B1.49       # Prob 10%                      #118.14 c29
                                # LOE r12 r13 r14 ebx
..B1.34:                        # Preds ..B1.33 Latency 45
        movq      $0, 24(%rsp)                                  #117.2 c1
        movl      $0, 48(%rsp)                                  #117.2 c5
        decq      %r14                                          #117.2 c9
        movl      $1, %r11d                                     #117.2 c9
        movq      %r14, 32(%rsp)                                #117.2 c13
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c13
        movq      %r11, 40(%rsp)                                #117.2 c17
        addq      $-32, %rsp                                    #117.2 c17
        lea       72(%rsp), %r10                                #117.2 c21
        movl      %ebx, %esi                                    #117.2 c21
        movl      $34, %edx                                     #117.2 c25
        lea       80(%rsp), %rcx                                #117.2 c25
        lea       56(%rsp), %r8                                 #117.2 c29
        lea       64(%rsp), %r9                                 #117.2 c29
        xorl      %eax, %eax                                    #117.2 c33
        movq      %r10, (%rsp)                                  #117.2 c33
        movq      %r11, 8(%rsp)                                 #117.2 c37
        movq      %r11, 16(%rsp)                                #117.2 c41
..___tag_value_main.69:                                         #117.2
        call      __kmpc_for_static_init_8                      #117.2
..___tag_value_main.70:                                         #
                                # LOE r12 r13 r14 ebx
..B1.71:                        # Preds ..B1.34 Latency 1
        addq      $32, %rsp                                     #117.2 c1
                                # LOE r12 r13 r14 ebx
..B1.35:                        # Preds ..B1.71 Latency 5
        movq      24(%rsp), %r9                                 #117.2 c1
        movq      32(%rsp), %rax                                #117.2 c1
        cmpq      %r14, %r9                                     #117.2 c5
        jg        ..B1.48       # Prob 50%                      #117.2 c5
                                # LOE rax r9 r12 r13 r14 ebx
..B1.36:                        # Preds ..B1.35 Latency 9
        cmpq      %r14, %rax                                    #117.2 c1
        jl        ..L71         # Prob 50%                      #117.2 c5
        movq      %r14, %rax                                    #117.2
..L71:                                                          #
        cmpq      %rax, %r9                                     #118.14 c9
        jg        ..B1.48       # Prob 0%                       #118.14 c9
                                # LOE rax r9 r12 r13 ebx
..B1.37:                        # Preds ..B1.36 Latency 61
        movq      (%r13), %r8                                   #120.9 c1
        xorl      %edx, %edx                                    #117.2 c1
        lea       (%r8,%r9,8), %rdi                             #120.9 c5
        subq      %r9, %rax                                     #117.2 c5
        movq      %rdi, %rcx                                    #117.2 c9
        incq      %rax                                          #117.2 c9
        andq      $63, %rcx                                     #117.2 c13
        subq      %rcx, %rdx                                    #117.2 c17
        addq      $64, %rdx                                     #117.2 c21
        shrq      $3, %rdx                                      #117.2 c25
        testq     %rcx, %rcx                                    #117.2 c25
        jne       ..L72         # Prob 50%                      #117.2 c29
        movq      %rcx, %rdx                                    #117.2
..L72:                                                          #
        xorl      %ecx, %ecx                                    #117.2 c29
        lea       64(%rdx), %rsi                                #117.2 c33
        cmpq      %rsi, %rax                                    #117.2 c37
        movq      %rax, %rsi                                    #117.2 c37
        jge       ..L73         # Prob 50%                      #117.2 c41
        movq      %rax, %rdx                                    #117.2
..L73:                                                          #
        subq      %rdx, %rsi                                    #117.2 c45
        andq      $63, %rsi                                     #117.2 c49
        negq      %rsi                                          #117.2 c53
        addq      %rax, %rsi                                    #117.2 c57
        cmpq      $1, %rdx                                      #117.2 c61
        jae       ..B1.59       # Prob 0%                       #117.2 c61
                                # LOE rax rdx rcx rsi rdi r8 r9 r12 ebx
..B1.38:                        # Preds ..B1.37 ..B1.61 Latency 1
        cmpq      %rdx, %rax                                    #117.2 c1
        je        ..B1.48       # Prob 50%                      #117.2 c1
                                # LOE rax rdx rsi rdi r8 r9 r12 ebx
..B1.39:                        # Preds ..B1.38 Latency 53
        vbroadcastsd 16(%rsp), %zmm0                            #117.2 c1
        vprefetch0 (%rdi)                                       #117.2 c1
        vpxorq    %zmm4, %zmm4, %zmm4                           #117.2 c5
        vprefetch0 512(%r8,%r9,8)                               #117.2 c5
        vmovaps   %zmm4, %zmm8                                  #117.2 c9
        vprefetch0 64(%r8,%r9,8)                                #117.2 c9
        movl      $1, %ecx                                      #117.2 c13
        vprefetch0 576(%r8,%r9,8)                               #117.2 c13
        kmov      %ecx, %k1                                     #117.2 c17
        vprefetch0 128(%r8,%r9,8)                               #117.2 c17
        vpackstorelpd %zmm0, (%rsp){%k1}                        #117.2 c21
        vprefetch0 640(%r8,%r9,8)                               #117.2 c21
        vbroadcastsd (%rsp), %zmm8{%k1}                         #117.2 c25
        vmovaps   %zmm4, %zmm7                                  #117.2 c29
        vmovaps   %zmm4, %zmm6                                  #117.2 c33
        vmovaps   %zmm4, %zmm5                                  #117.2 c37
        vmovaps   %zmm4, %zmm3                                  #117.2 c41
        vmovaps   %zmm4, %zmm2                                  #117.2 c45
        vmovaps   %zmm4, %zmm1                                  #117.2 c49
        vmovaps   %zmm4, %zmm0                                  #117.2 c53
                                # LOE rax rdx rsi rdi r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8
..B1.40:                        # Preds ..B1.40 ..B1.39 Latency 65
        vaddpd    (%rdi,%rdx,8), %zmm8, %zmm8                   #120.4 c1
        vprefetch1 4096(%rdi,%rdx,8)                            #120.9 c1
        vaddpd    64(%rdi,%rdx,8), %zmm7, %zmm7                 #120.4 c5
        vprefetch0 1024(%rdi,%rdx,8)                            #120.9 c5
        vaddpd    128(%rdi,%rdx,8), %zmm6, %zmm6                #120.4 c9
        vprefetch1 4160(%rdi,%rdx,8)                            #120.9 c9
        vaddpd    192(%rdi,%rdx,8), %zmm5, %zmm5                #120.4 c13
        vprefetch0 1088(%rdi,%rdx,8)                            #120.9 c13
        vaddpd    256(%rdi,%rdx,8), %zmm3, %zmm3                #120.4 c17
        vprefetch1 4224(%rdi,%rdx,8)                            #120.9 c17
        vaddpd    320(%rdi,%rdx,8), %zmm2, %zmm2                #120.4 c21
        vprefetch0 1152(%rdi,%rdx,8)                            #120.9 c21
        vaddpd    384(%rdi,%rdx,8), %zmm1, %zmm1                #120.4 c25
        vprefetch1 4288(%rdi,%rdx,8)                            #120.9 c25
        vaddpd    448(%rdi,%rdx,8), %zmm0, %zmm0                #120.4 c29
        vprefetch0 1216(%rdi,%rdx,8)                            #120.9 c29
        vprefetch1 4352(%rdi,%rdx,8)                            #120.9 c33
        movb      %al, %al                                      #120.9 c33
        vprefetch0 1280(%rdi,%rdx,8)                            #120.9 c37
        movb      %al, %al                                      #120.9 c37
        vprefetch1 4416(%rdi,%rdx,8)                            #120.9 c41
        movb      %al, %al                                      #120.9 c41
        vprefetch0 1344(%rdi,%rdx,8)                            #120.9 c45
        movb      %al, %al                                      #120.9 c45
        vprefetch1 4480(%rdi,%rdx,8)                            #120.9 c49
        movb      %al, %al                                      #120.9 c49
        vprefetch0 1408(%rdi,%rdx,8)                            #120.9 c53
        movb      %al, %al                                      #120.9 c53
        vprefetch1 4544(%rdi,%rdx,8)                            #120.9 c57
        movb      %al, %al                                      #120.9 c57
        vprefetch0 1472(%rdi,%rdx,8)                            #120.9 c61
        addq      $64, %rdx                                     #117.2 c61
        cmpq      %rsi, %rdx                                    #117.2 c65
        jb        ..B1.40       # Prob 82%                      #117.2 c65
                                # LOE rax rdx rsi rdi r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8
..B1.41:                        # Preds ..B1.40 Latency 49
        vaddpd    %zmm7, %zmm8, %zmm7                           #117.2 c1
        vaddpd    %zmm5, %zmm6, %zmm5                           #117.2 c1
        vaddpd    %zmm2, %zmm3, %zmm2                           #117.2 c5
        vaddpd    %zmm0, %zmm1, %zmm0                           #117.2 c5
        vaddpd    %zmm5, %zmm7, %zmm1                           #117.2 c9
        vaddpd    %zmm0, %zmm2, %zmm3                           #117.2 c9
        vaddpd    %zmm3, %zmm1, %zmm8                           #117.2 c13
        movl      $1, %edx                                      #117.2 c13
        kmov      %edx, %k1                                     #117.2 c17
        lea       1(%rsi), %rdx                                 #117.2 c17
        vpermf32x4 $238, %zmm8, %zmm6                           #117.2 c21
        cmpq      %rdx, %rax                                    #117.2 c21
        vaddpd    %zmm8, %zmm6, %zmm9                           #117.2 c25
        nop                                                     #117.2 c29
        vaddpd    %zmm9{badc}, %zmm9, %zmm10                    #117.2 c33
        nop                                                     #117.2 c37
        vaddpd    %zmm10{cdab}, %zmm10, %zmm11                  #117.2 c41
        nop                                                     #117.2 c45
        vpackstorelpd %zmm11, 16(%rsp){%k1}                     #117.2 c49
        jb        ..B1.48       # Prob 50%                      #117.2 c49
                                # LOE rax rsi rdi r12 ebx zmm4
..B1.42:                        # Preds ..B1.41 Latency 37
        vbroadcastsd 16(%rsp), %zmm0                            #117.2 c1
        pushq     $1                                            #117.2 c1
        popq      %rdx                                          #117.2
        kmov      %edx, %k1                                     #117.2 c5
        subq      %rsi, %rax                                    #117.2 c5
        vpackstorelpd %zmm0, (%rsp){%k1}                        #117.2 c9
        lea       (%rdi,%rsi,8), %rdx                           #120.9 c9
        vbroadcastsd (%rsp), %zmm4{%k1}                         #117.2 c13
        movl      $21845, %esi                                  #120.9 c13
        movq      %rax, 8(%rsp)                                 #117.2 c17
        kmov      %esi, %k2                                     #120.9 c17
        movl      $43690, %esi                                  #120.9 c21
        xorl      %ecx, %ecx                                    #117.2 c21
        vpbroadcastq .L_2il0floatpacket.91(%rip), %zmm3         #117.2 c25
        vmovaps   .L_2il0floatpacket.92(%rip), %zmm2            #117.2 c29
        vpbroadcastq 8(%rsp), %zmm1                             #117.2 c33
        kmov      %esi, %k1                                     #120.9 c33
        vpxord    %zmm0, %zmm0, %zmm0                           #120.9 c37
                                # LOE rax rdx rcx r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2
..B1.43:                        # Preds ..B1.46 ..B1.42 Latency 57
        vpcmpud   $6, %zmm1, %zmm2, %k4                         #117.2 c1
        vpcmpud   $0, %zmm1, %zmm2, %k3                         #117.2 c5
        vpcmpgtd  %zmm1, %zmm2, %k0                             #117.2 c9
        kmov      %k4, %r8d                                     #117.2 c9
        vmovaps   %zmm0, %zmm5                                  #117.2 c13
        kmov      %k3, %esi                                     #117.2 c13
        addl      %r8d, %r8d                                    #117.2 c17
        kmov      %k0, %edi                                     #117.2 c17
        andl      %esi, %r8d                                    #117.2 c21
        orl       %edi, %r8d                                    #117.2 c25
        andl      $-21846, %r8d                                 #117.2 c29
        kmov      %r8d, %k5                                     #117.2 c33
        vbroadcastss .L_2il0floatpacket.93(%rip), %zmm5{%k5}    #117.2 c37
        vcmpneqpd %zmm5, %zmm0, %k6                             #117.2 c41
        nop                                                     #117.2 c45
        knot      %k6, %k3                                      #117.2 c49
        knot      %k3, %k7                                      #117.2 c53
        jknzd     ..B1.45, %k7  # Prob 9%                       #117.2 c57
                                # LOE rax rdx rcx r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2 k3
..B1.44:                        # Preds ..B1.43 Latency 2
        vaddpd    (%rdx), %zmm4, %zmm4                          #120.4 c1
        jmp       ..B1.46       # Prob 100%                     #120.4 c1
                                # LOE rax rdx rcx r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2
..B1.45:                        # Preds ..B1.43 Latency 1
        vaddpd    (%rdx), %zmm4, %zmm4{%k3}                     #120.4 c1
                                # LOE rax rdx rcx r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2
..B1.46:                        # Preds ..B1.44 ..B1.45 Latency 21
        vpaddsetcd %zmm3, %k3, %zmm2{%k2}                       #117.2 c1
        addq      $8, %rcx                                      #117.2 c1
        addq      $64, %rdx                                     #117.2 c5
        movb      %al, %al                                      #117.2 c5
        kmov      %k3, %esi                                     #117.2 c9
        addl      %esi, %esi                                    #117.2 c13
        kmov      %esi, %k4                                     #117.2 c17
        cmpq      %rax, %rcx                                    #117.2 c17
        vpadcd    %zmm3, %k4, %zmm2{%k1}                        #117.2 c21
        jb        ..B1.43       # Prob 82%                      #117.2 c21
                                # LOE rax rdx rcx r12 ebx zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2
..B1.47:                        # Preds ..B1.46 Latency 29
        vpermf32x4 $238, %zmm4, %zmm0                           #117.2 c1
        movl      $1, %eax                                      #117.2 c1
        vaddpd    %zmm4, %zmm0, %zmm1                           #117.2 c5
        kmov      %eax, %k1                                     #117.2 c5
        nop                                                     #117.2 c9
        vaddpd    %zmm1{badc}, %zmm1, %zmm2                     #117.2 c13
        nop                                                     #117.2 c17
        vaddpd    %zmm2{cdab}, %zmm2, %zmm3                     #117.2 c21
        nop                                                     #117.2 c25
        vpackstorelpd %zmm3, 16(%rsp){%k1}                      #117.2 c29
                                # LOE r12 ebx
..B1.48:                        # Preds ..B1.35 ..B1.36 ..B1.38 ..B1.47 ..B1.41
                                #       Latency 9
        movl      $.2.11_2_kmpc_loc_struct_pack.41, %edi        #117.2 c1
        movl      %ebx, %esi                                    #117.2 c1
        xorl      %eax, %eax                                    #117.2 c5
..___tag_value_main.74:                                         #117.2
        call      __kmpc_for_static_fini                        #117.2
..___tag_value_main.75:                                         #
                                # LOE r12 ebx
..B1.49:                        # Preds ..B1.33 ..B1.48 Latency 29
        vbroadcastsd 16(%rsp), %zmm0                            #117.2 c1
        pushq     $1                                            #117.2 c1
        popq      %rdx                                          #117.2
        movl      $.2.11_2_kmpc_loc_struct_pack.70, %r13d       #117.2 c5
        kmov      %edx, %k1                                     #117.2 c5
        lea       (%rsp), %r8                                   #117.2 c9
        vpackstorelpd %zmm0, (%rsp){%k1}                        #117.2 c9
        movl      $L_main_117__tree_reduce0_2.77, %r9d          #117.2 c13
        movq      %r13, %rdi                                    #117.2 c13
        movl      %ebx, %esi                                    #117.2 c17
        pushq     $8                                            #117.2 c17
        popq      %rcx                                          #117.2
        xorl      %eax, %eax                                    #117.2 c21
        pushq     %rsp                                          #117.2 c21
        pushq     $main_kmpc_tree_reduct_lock_0                 #117.2 c25
..___tag_value_main.76:                                         #117.2
        call      __kmpc_reduce_nowait                          #117.2
..___tag_value_main.77:                                         #
                                # LOE r12 r13 eax ebx
..B1.72:                        # Preds ..B1.49 Latency 1
        addq      $16, %rsp                                     #117.2 c1
                                # LOE r12 r13 eax ebx
..B1.50:                        # Preds ..B1.72 Latency 1
        cmpl      $1, %eax                                      #117.2 c1
        jne       ..B1.52       # Prob 50%                      #117.2 c1
                                # LOE r12 r13 eax ebx
..B1.51:                        # Preds ..B1.50 Latency 22
        vbroadcastsd (%rsp), %zmm0                              #117.2 c1
        pushq     $1                                            #117.2 c1
        popq      %rax                                          #117.2
        kmov      %eax, %k1                                     #117.2 c5
        movl      $main_kmpc_tree_reduct_lock_0, %edx           #117.2 c5
        vaddpd    (%r12){1to8}, %zmm0, %zmm1{%k1}               #117.2 c9
        movq      %r13, %rdi                                    #117.2 c9
        movl      %ebx, %esi                                    #117.2 c13
        xorl      %eax, %eax                                    #117.2 c13
        vpackstorelpd %zmm1, (%r12){%k1}                        #117.2 c17
..___tag_value_main.78:                                         #117.2
        call      __kmpc_end_reduce_nowait                      #117.2
..___tag_value_main.79:                                         #
        jmp       ..B1.54       # Prob 100%                     #117.2 c21
                                # LOE
..B1.52:                        # Preds ..B1.50 Latency 1
        cmpl      $2, %eax                                      #117.2 c1
        jne       ..B1.54       # Prob 50%                      #117.2 c1
                                # LOE r12 r13 ebx
..B1.53:                        # Preds ..B1.52 Latency 13
        vbroadcastsd (%rsp), %zmm0                              #117.2 c1
        movq      %r13, %rdi                                    #117.2 c1
        movl      %ebx, %esi                                    #117.2 c5
        movq      %r12, %rdx                                    #117.2 c5
        pushq     $1                                            #117.2 c9
        popq      %rax                                          #117.2
..___tag_value_main.80:                                         #117.2
        call      __kmpc_atomic_float8_add                      #117.2
..___tag_value_main.81:                                         #
                                # LOE
..B1.54:                        # Preds ..B1.51 ..B1.52 ..B1.53 Latency 17
        movq      88(%rsp), %r15                                #117.2 c1
..___tag_value_main.82:                                         #
        xorl      %eax, %eax                                    #117.2 c1
        movq      96(%rsp), %r14                                #117.2 c5
..___tag_value_main.83:                                         #
        movq      104(%rsp), %r13                               #117.2 c5
..___tag_value_main.84:                                         #
        movq      112(%rsp), %r12                               #117.2 c9
..___tag_value_main.85:                                         #
        movq      120(%rsp), %rbx                               #117.2 c9
..___tag_value_main.86:                                         #
        movq      %rbp, %rsp                                    #117.2 c17
        popq      %rbp                                          #117.2
..___tag_value_main.87:                                         #
        ret                                                     #117.2
..___tag_value_main.89:                                         #
                                # LOE
..B1.55:                        # Preds ..B1.20                 # Infreq Latency 13
        movl      $1, %eax                                      #127.4 c1
        movl      $.L_2__STRING.8, %edi                         #127.4 c1
        movl      $.L_2__STRING.3, %esi                         #127.4 c5
        kmov      %eax, %k1                                     #127.4 c5
        vpackstorelpd %zmm0, 8(%rsp){%k1}                       #127.4 c9
        call      fopen                                         #127.4 c13
                                # LOE rax bl
..B1.73:                        # Preds ..B1.55                 # Infreq Latency 1
        vbroadcastsd 8(%rsp), %zmm0                             # c1
        movq      %rax, %r12                                    #127.4 c1
                                # LOE r12 bl zmm0
..B1.56:                        # Preds ..B1.73                 # Infreq Latency 161
        vbroadcastsd .L_2il0floatpacket.90(%rip), %zmm2         #127.4 c1
        vbroadcasti32x4 .L_2il0floatpacket.98(%rip), %zmm13     #127.4 c5
        vbroadcasti64x4 .L_2il0floatpacket.96(%rip), %zmm19     #127.4 c9
        vpxorq    %zmm4, %zmm4, %zmm4                           #127.4 c13
        movl      $1, %eax                                      #126.21 c13
        vpbroadcastd .L_2il0floatpacket.99(%rip), %zmm3         #127.4 c17
        vmovapd   %zmm19{bbbb}, %zmm7                           #127.4 c21
        kmov      %eax, %k3                                     #126.21 c21
        vsubpd    160(%rsp){1to8}, %zmm0, %zmm1{%k3}            #126.21 c25
        movq      %r12, %rdi                                    #127.4 c25
        vgetexppd %zmm1, %zmm10{%k3}                            #127.4 c29
        movl      $.L_2__STRING.4, %esi                         #127.4 c29
        vgetexppd %zmm2, %zmm9{%k3}                             #127.4 c33
        vgetmantpd $0, %zmm1, %zmm8{%k3}                        #127.4 c37
        vsubpd    %zmm10, %zmm9, %zmm11{%k3}                    #127.4 c41
        vpminsd   %zmm13{aaaa}, %zmm11, %zmm12                  #127.4 c45
        vcvtpd2ps {rz-sae}, %zmm8, %zmm5{%k3}                   #127.4 c49
        vpminud   %zmm13{bbbb}, %zmm12, %zmm14                  #127.4 c53
        vrcp23ps  %zmm5, %zmm6{%k3}                             #127.4 c57
        vaddpd    %zmm19{cccc}, %zmm14, %zmm14{%k3}             #127.4 c57
        vfixupnanpd %zmm3, %zmm1, %zmm4{%k3}                    #127.4 c61
        vcvtps2pd %zmm6, %zmm21{%k3}                            #127.4 c65
        vpslld    $20, %zmm14, %zmm16                           #127.4 c69
        vbroadcasti64x4 .L_2il0floatpacket.97(%rip), %zmm15     #127.4 c73
        vfixupnanpd %zmm3, %zmm2, %zmm4{%k3}                    #127.4 c77
        vfnmadd213pd {rn-sae}, %zmm7, %zmm21, %zmm8{%k3}        #127.4 c81
        vpsrad    $1, %zmm16, %zmm23                            #127.4 c85
        vcmpeqpd  %zmm4, %zmm4, %k2{%k3}                        #127.4 c89
        vfmadd231pd {rn-sae}, %zmm8, %zmm8, %zmm8{%k3}          #127.4 c93
        vpandq    %zmm15{aaaa}, %zmm23, %zmm23{%k3}             #127.4 c97
        kmov      %k2, %k1                                      #127.4 c97
        vpbroadcastd .L_2il0floatpacket.100(%rip), %zmm22       #127.4 c101
        vfmadd231pd {rn-sae}, %zmm21, %zmm8, %zmm21{%k3}        #127.4 c105
        kandn     %k3, %k1                                      #127.4 c105
        vgetmantpd $0, %zmm2, %zmm20{%k3}                       #127.4 c109
        vpsubd    %zmm23, %zmm16, %zmm17                        #127.4 c113
        vmovdqa64 %zmm19{bbbb}, %zmm18                          #127.4 c117
        vfixupnanpd %zmm22, %zmm1, %zmm1{%k3}                   #127.4 c121
        vmulpd    {rn-sae}, %zmm21, %zmm20, %zmm26{%k2}         #127.4 c125
        vpaddd    %zmm18, %zmm17, %zmm25                        #127.4 c129
        vmulpd    {rn-sae}, %zmm1, %zmm2, %zmm26{%k1}           #127.4 c133
        kmov      %k3, %k1                                      #127.4 c133
        vpandq    %zmm19{aaaa}, %zmm25, %zmm25{%k3}             #127.4 c137
        vpaddd    %zmm23, %zmm26, %zmm24                        #127.4 c141
        vmulpd    {rn}, %zmm25, %zmm24, %zmm26{%k2}             #127.4 c145
        vmovapd   %zmm26, %zmm0{%k3}                            #127.4 c149
        nop                                                     #127.4 c153
        vpackstorelpd %zmm0, (%rsp){%k1}                        #127.4 c157
        call      fprintf                                       #127.4 c161
                                # LOE r12 bl
..B1.57:                        # Preds ..B1.56                 # Infreq Latency 5
        movq      %r12, %rdi                                    #127.4 c1
        call      fclose                                        #127.4 c5
                                # LOE bl
..B1.58:                        # Preds ..B1.57                 # Infreq Latency 10
        vbroadcastsd (%rsp), %zmm0                              #128.4 c1
        movl      $.L_2__STRING.9, %edi                         #128.4 c1
        movl      $1, %eax                                      #128.4 c5
..___tag_value_main.96:                                         #128.4
        call      printf                                        #128.4
..___tag_value_main.97:                                         #
        jmp       ..B1.21       # Prob 100%                     #128.4 c9
                                # LOE bl
..B1.59:                        # Preds ..B1.37                 # Infreq Latency 5
        movl      $1, %r10d                                     # c1
        vbroadcastsd 16(%rsp), %zmm0                            # c5
        kmov      %r10d, %k1                                    # c5
                                # LOE rax rdx rcx rsi rdi r8 r9 r12 ebx zmm0 k1
..B1.60:                        # Preds ..B1.60 ..B1.59         # Infreq Latency 5
        vaddpd    (%rdi,%rcx,8){1to8}, %zmm0, %zmm0{%k1}        #120.4 c1
        incq      %rcx                                          #117.2 c1
        cmpq      %rdx, %rcx                                    #117.2 c5
        jb        ..B1.60       # Prob 82%                      #117.2 c5
                                # LOE rax rdx rcx rsi rdi r8 r9 r12 ebx zmm0 k1
..B1.61:                        # Preds ..B1.60                 # Infreq Latency 10
        movl      $1, %ecx                                      # c1
        kmov      %ecx, %k1                                     # c5
        vpackstorelpd %zmm0, 16(%rsp){%k1}                      # c9
        jmp       ..B1.38       # Prob 100%                     # c9
        .align    16,0x90
..___tag_value_main.98:                                         #
                                # LOE rax rdx rsi rdi r8 r9 r12 ebx
# mark_end;
	.type	main,@function
	.size	main,.-main
	.section .gcc_except_table, "a"
	.align 4
main$$LSDA:
	.byte	255
	.byte	0
	.uleb128	..___tag_value_main.102 - ..___tag_value_main.101
..___tag_value_main.101:
	.byte	1
	.uleb128	..___tag_value_main.100 - ..___tag_value_main.99
..___tag_value_main.99:
	.uleb128	..___tag_value_main.6 - ..___tag_value_main.1
	.uleb128	..___tag_value_main.22 - ..___tag_value_main.6
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.33 - ..___tag_value_main.1
	.uleb128	..___tag_value_main.36 - ..___tag_value_main.33
	.byte	0
	.byte	0
	.uleb128	..___tag_value_main.96 - ..___tag_value_main.1
	.uleb128	..___tag_value_main.97 - ..___tag_value_main.96
	.byte	0
	.byte	0
..___tag_value_main.100:
	.long	0x00000000,0x00000000
..___tag_value_main.102:
	.data
	.align 4
	.align 4
.2.11_2_kmpc_loc_struct_pack.13:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.11_2__kmpc_loc_pack.12
	.align 4
.2.11_2__kmpc_loc_pack.12:
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
	.byte	57
	.byte	51
	.byte	59
	.byte	57
	.byte	51
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.11_2_kmpc_loc_struct_pack.24:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.11_2__kmpc_loc_pack.23
	.align 4
.2.11_2__kmpc_loc_pack.23:
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
	.byte	57
	.byte	51
	.byte	59
	.byte	57
	.byte	51
	.byte	59
	.byte	59
	.space 3, 0x00 	# pad
	.align 4
.2.11_2_kmpc_loc_struct_pack.41:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.11_2__kmpc_loc_pack.40
	.align 4
.2.11_2__kmpc_loc_pack.40:
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
	.byte	55
	.byte	59
	.byte	49
	.byte	50
	.byte	49
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.11_2_kmpc_loc_struct_pack.32:
	.long	0
	.long	2
	.long	0
	.long	0
	.quad	.2.11_2__kmpc_loc_pack.31
	.align 4
.2.11_2__kmpc_loc_pack.31:
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
	.byte	51
	.byte	54
	.byte	59
	.byte	49
	.byte	51
	.byte	54
	.byte	59
	.byte	59
	.space 1, 0x00 	# pad
	.align 4
.2.11_2_kmpc_loc_struct_pack.70:
	.long	0
	.long	18
	.long	0
	.long	0
	.quad	.2.11_2__kmpc_loc_pack.69
	.align 4
.2.11_2__kmpc_loc_pack.69:
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
	.byte	55
	.byte	59
	.byte	49
	.byte	49
	.byte	55
	.byte	59
	.byte	59
	.data
# -- End  main, L_main_117__par_loop0_2.39, L_main_117__tree_reduce0_2.77
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
..B2.1:                         # Preds ..B2.0 Latency 5
..___tag_value_fill.103:                                        #30.35
        subq      $40, %rsp                                     #30.35 c1
..___tag_value_fill.105:                                        #
        xorl      %eax, %eax                                    #32.5 c1
        testq     %rsi, %rsi                                    #32.21 c5
        jle       ..B2.6        # Prob 10%                      #32.21 c5
                                # LOE rax rbx rbp rsi rdi r12 r13 r14 r15 zmm0
..B2.2:                         # Preds ..B2.1 Latency 21
        movl      $1, %edx                                      #34.51 c1
        vprefetche0 (%rdi)                                      #32.5 c1
        kmov      %edx, %k1                                     #34.51 c5
        vprefetche0 8(%rdi)                                     #32.5 c5
        vpackstorelpd %zmm0, 32(%rsp){%k1}                      #34.51 c9
        movb      %dl, %dl                                      #34.51 c9
        movq      %r12, 16(%rsp)                                #34.51 c13
..___tag_value_fill.106:                                        #
        movq      %rax, %r12                                    #34.51 c13
        movq      %r13, 8(%rsp)                                 #34.51 c17
..___tag_value_fill.107:                                        #
        movq      %rdi, %r13                                    #34.51 c17
        movq      %r14, (%rsp)                                  #34.51 c21
..___tag_value_fill.108:                                        #
        movq      %rsi, %r14                                    #34.51 c21
                                # LOE rbx rbp r12 r13 r14 r15
..B2.3:                         # Preds ..B2.4 ..B2.2 Latency 1
        call      rand                                          #34.30 c1
                                # LOE rbx rbp r12 r13 r14 r15 eax
..B2.4:                         # Preds ..B2.3 Latency 41
        movl      %eax, 24(%rsp)                                #34.30 c1
        vprefetche1 128(%r13,%r12,8)                            #34.9 c1
        movl      $1, %eax                                      #34.30 c5
        vprefetche0 16(%r13,%r12,8)                             #34.9 c5
        kmov      %eax, %k1                                     #34.30 c9
        vcvtfxpntdq2ps $0, 24(%rsp){1to16}, %zmm0{%k1}          #34.30 c13
        vmulps    .L_2il0floatpacket.104(%rip){1to16}, %zmm0, %zmm1{%k1} #34.51 c17
        nop                                                     #34.51 c21
        vcvtps2pd %zmm1, %zmm2{%k1}                             #34.51 c25
        vmulpd    32(%rsp){1to8}, %zmm2, %zmm3{%k1}             #34.51 c29
        nop                                                     #34.9 c33
        vpackstorelpd %zmm3, (%r13,%r12,8){%k1}                 #34.9 c37
        incq      %r12                                          #32.5 c37
        cmpq      %r14, %r12                                    #32.5 c41
        jb        ..B2.3        # Prob 82%                      #32.5 c41
                                # LOE rbx rbp r12 r13 r14 r15
..B2.5:                         # Preds ..B2.4 Latency 5
        movq      16(%rsp), %r12                                # c1
..___tag_value_fill.109:                                        #
        movq      8(%rsp), %r13                                 # c1
..___tag_value_fill.110:                                        #
        movq      (%rsp), %r14                                  # c5
..___tag_value_fill.111:                                        #
                                # LOE rbx rbp r12 r13 r14 r15
..B2.6:                         # Preds ..B2.5 ..B2.1 Latency 5
        addq      $40, %rsp                                     #36.5 c1
..___tag_value_fill.112:                                        #
        ret                                                     #36.5 c5
        .align    16,0x90
..___tag_value_fill.113:                                        #
                                # LOE
# mark_end;
	.type	fill,@function
	.size	fill,.-fill
	.data
# -- End  fill
	.text
# -- Begin  timer
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl timer
timer:
..B3.1:                         # Preds ..B3.0 Latency 9
..___tag_value_timer.114:                                       #43.1
        subq      $56, %rsp                                     #43.1 c1
..___tag_value_timer.116:                                       #
        xorl      %edi, %edi                                    #47.2 c1
        lea       (%rsp), %rsi                                  #47.2 c5
..___tag_value_timer.117:                                       #47.2
        call      clock_gettime                                 #47.2
..___tag_value_timer.118:                                       #
                                # LOE rbx rbp r12 r13 r14 r15
..B3.2:                         # Preds ..B3.1 Latency 77
        movl      $1, %edx                                      #48.10 c1
        kmov      %edx, %k1                                     #48.10 c5
        vcvtudq2pd (%rsp){1to8}, %zmm1{%k1}                     #48.10 c9
        kmov      %k1, %k2                                      #48.29 c9
        vcvtdq2pd 4(%rsp){1to8}, %zmm4{%k1}                     #48.10 c13
        vcvtudq2pd 8(%rsp){1to8}, %zmm2{%k1}                    #48.29 c17
        vcvtdq2pd 12(%rsp){1to8}, %zmm3{%k1}                    #48.29 c21
        vfmadd132pd .L_2il0floatpacket.106(%rip){1to8}, %zmm1, %zmm4{%k1} #48.10 c25
        vfmadd132pd .L_2il0floatpacket.106(%rip){1to8}, %zmm2, %zmm3{%k1} #48.29 c29
        vfmadd132pd .L_2il0floatpacket.105(%rip){1to8}, %zmm3, %zmm4{%k1} #50.17 c33
        nop                                                     #48.29 c37
        vpackstorelpd %zmm4, 40(%rsp){%k2}                      #48.29 c41
        fldl      40(%rsp)                                      #48.29 c45
        fnstcw    16(%rsp)                                      #48.29 c49
        movzwl    16(%rsp), %eax                                #48.29
        orl       $3072, %eax                                   #48.29
        movl      %eax, 24(%rsp)                                #48.29
        fldcw     24(%rsp)                                      #48.29
        fistpq    40(%rsp)                                      #48.29
        fldcw     16(%rsp)                                      #48.29
        movq      40(%rsp), %rcx                                #48.29 c53
        movq      %rcx, 32(%rsp)                                #50.17 c57
        vcvtdq2pd 36(%rsp){1to8}, %zmm0{%k1}                    #50.17 c61
        vcvtudq2pd 32(%rsp){1to8}, %zmm5{%k1}                   #50.17 c65
        vfmadd132pd .L_2il0floatpacket.106(%rip){1to8}, %zmm5, %zmm0{%k1} #50.17 c69
        addq      $56, %rsp                                     #50.17 c73
..___tag_value_timer.119:                                       #
        ret                                                     #50.17 c77
        .align    16,0x90
..___tag_value_timer.120:                                       #
                                # LOE
# mark_end;
	.type	timer,@function
	.size	timer,.-timer
	.data
# -- End  timer
	.text
# -- Begin  verify_array
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl verify_array
verify_array:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
..B4.1:                         # Preds ..B4.0 Latency 5
..___tag_value_verify_array.121:                                #54.53
        pushq     %rsi                                          #54.53 c1
..___tag_value_verify_array.123:                                #
        xorl      %eax, %eax                                    #58.5 c1
        testq     %rdx, %rdx                                    #58.17 c5
        jle       ..B4.6        # Prob 10%                      #58.17 c5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15
..B4.2:                         # Preds ..B4.1 Latency 49
        movl      $1, %ecx                                      #60.50 c1
        vprefetch0 (%rdi)                                       #58.5 c1
        vbroadcastsd .L_2il0floatpacket.110(%rip), %zmm5        #60.50 c5
        vbroadcasti64x4 .L_2il0floatpacket.112(%rip), %zmm4     #60.50 c9
        vbroadcasti64x4 .L_2il0floatpacket.113(%rip), %zmm3     #60.50 c13
        vbroadcasti32x4 .L_2il0floatpacket.114(%rip), %zmm2     #60.50 c17
        vpbroadcastd .L_2il0floatpacket.115(%rip), %zmm1        #60.50 c21
        vpbroadcastd .L_2il0floatpacket.116(%rip), %zmm0        #60.50 c25
        vprefetch0 8(%rdi)                                      #58.5 c29
        movb      %al, %al                                      #58.5 c29
        vprefetch0 16(%rdi)                                     #58.5 c33
        movb      %al, %al                                      #58.5 c33
        vprefetch0 24(%rdi)                                     #58.5 c37
        movb      %al, %al                                      #58.5 c37
        vprefetch0 32(%rdi)                                     #58.5 c41
        movb      %al, %al                                      #58.5 c41
        vprefetch0 40(%rdi)                                     #58.5 c45
        kmov      %ecx, %k1                                     #60.50 c49
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 k1
..B4.3:                         # Preds ..B4.4 ..B4.2 Latency 145
        vbroadcastsd (%rdi,%rax,8), %zmm7                       #60.16 c1
        vprefetch1 128(%rdi,%rax,8)                             #60.39 c1
        vsubpd    (%rsi,%rax,8){1to8}, %zmm7, %zmm6{%k1}        #60.27 c5
        vprefetch0 64(%rdi,%rax,8)                              #60.39 c5
        vpandq    .L_2il0floatpacket.111(%rip){1to8}, %zmm6, %zmm8{%k1} #60.11 c9
        vgetexppd %zmm7, %zmm15{%k1}                            #60.39 c13
        vprefetch1 128(%rsi,%rax,8)                             #60.27 c13
        vgetexppd %zmm8, %zmm14{%k1}                            #60.39 c17
        vprefetch0 64(%rsi,%rax,8)                              #60.27 c17
        vgetmantpd $0, %zmm7, %zmm13{%k1}                       #60.39 c21
        vsubpd    %zmm15, %zmm14, %zmm16{%k1}                   #60.39 c25
        vpminsd   %zmm2{aaaa}, %zmm16, %zmm17                   #60.39 c29
        vcvtpd2ps {rz-sae}, %zmm13, %zmm10{%k1}                 #60.39 c33
        vpminud   %zmm2{bbbb}, %zmm17, %zmm18                   #60.39 c37
        vrcp23ps  %zmm10, %zmm11{%k1}                           #60.39 c41
        vaddpd    %zmm4{cccc}, %zmm18, %zmm18{%k1}              #60.39 c41
        vpxorq    %zmm9, %zmm9, %zmm9                           #60.39 c45
        vfixupnanpd %zmm1, %zmm7, %zmm9{%k1}                    #60.39 c49
        vcvtps2pd %zmm11, %zmm23{%k1}                           #60.39 c53
        vmovapd   %zmm4{bbbb}, %zmm12                           #60.39 c57
        vpslld    $20, %zmm18, %zmm19                           #60.39 c61
        vfixupnanpd %zmm1, %zmm8, %zmm9{%k1}                    #60.39 c65
        vfnmadd213pd {rn-sae}, %zmm12, %zmm23, %zmm13{%k1}      #60.39 c69
        vpsrad    $1, %zmm19, %zmm24                            #60.39 c73
        vcmpeqpd  %zmm9, %zmm9, %k3{%k1}                        #60.39 c77
        vfmadd231pd {rn-sae}, %zmm13, %zmm13, %zmm13{%k1}       #60.39 c81
        vpandq    %zmm3{aaaa}, %zmm24, %zmm24{%k1}              #60.39 c85
        kmov      %k3, %k2                                      #60.39 c85
        vfmadd231pd {rn-sae}, %zmm23, %zmm13, %zmm23{%k1}       #60.39 c89
        kandn     %k1, %k2                                      #60.39 c89
        vgetmantpd $0, %zmm8, %zmm22{%k1}                       #60.39 c93
        vpsubd    %zmm24, %zmm19, %zmm20                        #60.39 c97
        vmovdqa64 %zmm4{bbbb}, %zmm21                           #60.39 c101
        vfixupnanpd %zmm0, %zmm7, %zmm7{%k1}                    #60.39 c105
        vmulpd    {rn-sae}, %zmm23, %zmm22, %zmm27{%k3}         #60.39 c109
        vpaddd    %zmm21, %zmm20, %zmm26                        #60.39 c113
        vmulpd    {rn-sae}, %zmm7, %zmm8, %zmm27{%k2}           #60.39 c117
        vpandq    %zmm4{aaaa}, %zmm26, %zmm26{%k1}              #60.39 c121
        vpaddd    %zmm24, %zmm27, %zmm25                        #60.39 c125
        vmulpd    {rn}, %zmm26, %zmm25, %zmm27{%k3}             #60.39 c129
        vmovapd   %zmm27, %zmm28{%k1}                           #60.39 c133
        vcmpltpd  %zmm28, %zmm5, %k0{%k1}                       #60.50 c137
        nop                                                     #60.50 c141
        kortest   %k0, %k0                                      #60.50 c145
        jne       ..B4.8        # Prob 20%                      #60.50 c145
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 k1
..B4.4:                         # Preds ..B4.3 Latency 5
        incq      %rax                                          #58.5 c1
        cmpq      %rdx, %rax                                    #58.5 c5
        jb        ..B4.3        # Prob 82%                      #58.5 c5
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 k1
..B4.6:                         # Preds ..B4.4 ..B4.1 Latency 5
        movl      $.L_2__STRING.0, %edi                         #66.9 c1
        xorl      %eax, %eax                                    #66.9 c1
        addq      $8, %rsp                                      #66.9 c5
..___tag_value_verify_array.124:                                #
        jmp       printf                                        #66.9 c5
..___tag_value_verify_array.125:                                #
                                # LOE
..B4.8:                         # Preds ..B4.3                  # Infreq Latency 5
        movl      $.L_2__STRING.1, %edi                         #69.9 c1
        xorl      %eax, %eax                                    #69.9 c1
        addq      $8, %rsp                                      #69.9 c5
..___tag_value_verify_array.126:                                #
        jmp       printf                                        #69.9 c5
        .align    16,0x90
..___tag_value_verify_array.127:                                #
                                # LOE
# mark_end;
	.type	verify_array,@function
	.size	verify_array,.-verify_array
	.data
# -- End  verify_array
	.text
# -- Begin  save_results
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl save_results
save_results:
# parameter 1: %rdi
# parameter 2: %rsi
..B5.1:                         # Preds ..B5.0 Latency 17
..___tag_value_save_results.128:                                #80.40
        pushq     %r12                                          #80.40 c1
..___tag_value_save_results.130:                                #
        pushq     %r13                                          #80.40 c5
..___tag_value_save_results.132:                                #
        subq      $24, %rsp                                     #80.40 c5
..___tag_value_save_results.134:                                #
        movq      %rsi, %r13                                    #80.40 c9
        movq      %rdi, %r12                                    #80.40 c9
        movl      $.L_2__STRING.2, %edi                         #82.13 c13
        movl      $.L_2__STRING.3, %esi                         #82.13 c13
        call      fopen                                         #82.13 c17
                                # LOE rax rbx rbp r12 r13 r14 r15
..B5.11:                        # Preds ..B5.1 Latency 1
        movq      %rax, %rdi                                    #82.13 c1
                                # LOE rbx rbp rdi r12 r13 r14 r15
..B5.2:                         # Preds ..B5.11 Latency 5
        xorl      %eax, %eax                                    #83.2 c1
        testq     %r13, %r13                                    #83.13 c1
        jle       ..B5.7        # Prob 10%                      #83.13 c5
                                # LOE rax rbx rbp rdi r12 r13 r14 r15
..B5.3:                         # Preds ..B5.2 Latency 17
        vprefetch0 (%r12)                                       #83.2 c1
        movb      %al, %al                                      #83.2 c1
        vprefetch0 8(%r12)                                      #83.2 c5
        movb      %al, %al                                      #83.2 c5
        movq      %r14, 8(%rsp)                                 #83.2 c9
..___tag_value_save_results.135:                                #
        movq      %r12, %r14                                    #83.2 c9
        movq      %r15, (%rsp)                                  #83.2 c13
..___tag_value_save_results.136:                                #
        movq      %rax, %r12                                    #83.2 c13
        movq      %r13, %r15                                    #83.2 c17
        movq      %rdi, %r13                                    #83.2 c17
                                # LOE rbx rbp r12 r13 r14 r15
..B5.4:                         # Preds ..B5.5 ..B5.3 Latency 9
        vbroadcastsd (%r14,%r12,8), %zmm0                       #85.3 c1
        movq      %r13, %rdi                                    #85.3 c1
        movl      $.L_2__STRING.4, %esi                         #85.3 c5
        movl      $1, %eax                                      #85.3 c5
        call      fprintf                                       #85.3 c9
                                # LOE rbx rbp r12 r13 r14 r15
..B5.5:                         # Preds ..B5.4 Latency 9
        vprefetch1 128(%r14,%r12,8)                             #85.24 c1
        movb      %al, %al                                      #85.24 c1
        vprefetch0 16(%r14,%r12,8)                              #85.24 c5
        incq      %r12                                          #83.2 c5
        cmpq      %r15, %r12                                    #83.2 c9
        jb        ..B5.4        # Prob 82%                      #83.2 c9
                                # LOE rbx rbp r12 r13 r14 r15
..B5.6:                         # Preds ..B5.5 Latency 5
        movq      %r13, %rdi                                    # c1
        movq      8(%rsp), %r14                                 # c1
..___tag_value_save_results.137:                                #
        movq      (%rsp), %r15                                  # c5
..___tag_value_save_results.138:                                #
                                # LOE rbx rbp rdi r14 r15
..B5.7:                         # Preds ..B5.6 ..B5.2 Latency 9
        addq      $24, %rsp                                     #87.2 c1
..___tag_value_save_results.139:                                #
        popq      %r13                                          #87.2
..___tag_value_save_results.141:                                #
        popq      %r12                                          #87.2
..___tag_value_save_results.143:                                #
        jmp       fclose                                        #87.2 c9
        .align    16,0x90
..___tag_value_save_results.144:                                #
                                # LOE
# mark_end;
	.type	save_results,@function
	.size	save_results,.-save_results
	.data
# -- End  save_results
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
.L_2il0floatpacket.92:
	.long	0x00000001,0x00000000,0x00000002,0x00000000,0x00000003,0x00000000,0x00000004,0x00000000,0x00000005,0x00000000,0x00000006,0x00000000,0x00000007,0x00000000,0x00000008,0x00000000
	.type	.L_2il0floatpacket.92,@object
	.size	.L_2il0floatpacket.92,64
	.align 32
.L_2il0floatpacket.96:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x41380000,0x00000000,0x4137fc02
	.type	.L_2il0floatpacket.96,@object
	.size	.L_2il0floatpacket.96,32
	.align 32
.L_2il0floatpacket.97:
	.long	0x00000000,0xfff00000,0x00000001,0x00000000,0x0000043e,0x00000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.97,@object
	.size	.L_2il0floatpacket.97,32
	.align 32
.L_2il0floatpacket.112:
	.long	0x00000000,0x7ff00000,0x00000000,0x3ff00000,0x00000000,0x41380000,0x00000000,0x4137fc02
	.type	.L_2il0floatpacket.112,@object
	.size	.L_2il0floatpacket.112,32
	.align 32
.L_2il0floatpacket.113:
	.long	0x00000000,0xfff00000,0x00000001,0x00000000,0x0000043e,0x00000000,0x00000000,0x80000000
	.type	.L_2il0floatpacket.113,@object
	.size	.L_2il0floatpacket.113,32
	.align 16
.L_2il0floatpacket.98:
	.long	0x40900800,0xc090d400,0x7fe00000,0x03500000
	.type	.L_2il0floatpacket.98,@object
	.size	.L_2il0floatpacket.98,16
	.align 16
.L_2il0floatpacket.114:
	.long	0x40900800,0xc090d400,0x7fe00000,0x03500000
	.type	.L_2il0floatpacket.114,@object
	.size	.L_2il0floatpacket.114,16
	.align 8
.L_2il0floatpacket.87:
	.long	0x00000000,0x40140000
	.type	.L_2il0floatpacket.87,@object
	.size	.L_2il0floatpacket.87,8
	.align 8
.L_2il0floatpacket.89:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.89,@object
	.size	.L_2il0floatpacket.89,8
	.align 8
.L_2il0floatpacket.90:
	.long	0x00000000,0x41d00000
	.type	.L_2il0floatpacket.90,@object
	.size	.L_2il0floatpacket.90,8
	.align 8
.L_2il0floatpacket.91:
	.long	0x00000008,0x00000000
	.type	.L_2il0floatpacket.91,@object
	.size	.L_2il0floatpacket.91,8
	.align 8
.L_2il0floatpacket.94:
	.long	0x00000000,0x3ff00000
	.type	.L_2il0floatpacket.94,@object
	.size	.L_2il0floatpacket.94,8
	.align 8
.L_2il0floatpacket.95:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.95,@object
	.size	.L_2il0floatpacket.95,8
	.align 8
.L_2il0floatpacket.105:
	.long	0x00000000,0x41cdcd65
	.type	.L_2il0floatpacket.105,@object
	.size	.L_2il0floatpacket.105,8
	.align 8
.L_2il0floatpacket.106:
	.long	0x00000000,0x41f00000
	.type	.L_2il0floatpacket.106,@object
	.size	.L_2il0floatpacket.106,8
	.align 8
.L_2il0floatpacket.110:
	.long	0xd2f1a9fc,0x3f60624d
	.type	.L_2il0floatpacket.110,@object
	.size	.L_2il0floatpacket.110,8
	.align 8
.L_2il0floatpacket.111:
	.long	0xffffffff,0x7fffffff
	.type	.L_2il0floatpacket.111,@object
	.size	.L_2il0floatpacket.111,8
	.align 4
.L_2il0floatpacket.88:
	.long	0x30000000
	.type	.L_2il0floatpacket.88,@object
	.size	.L_2il0floatpacket.88,4
	.align 4
.L_2il0floatpacket.93:
	.long	0x40000000
	.type	.L_2il0floatpacket.93,@object
	.size	.L_2il0floatpacket.93,4
	.align 4
.L_2il0floatpacket.99:
	.long	0x00028b45
	.type	.L_2il0floatpacket.99,@object
	.size	.L_2il0floatpacket.99,4
	.align 4
.L_2il0floatpacket.100:
	.long	0x00018842
	.type	.L_2il0floatpacket.100,@object
	.size	.L_2il0floatpacket.100,4
	.align 4
.L_2il0floatpacket.104:
	.long	0x30000000
	.type	.L_2il0floatpacket.104,@object
	.size	.L_2il0floatpacket.104,4
	.align 4
.L_2il0floatpacket.115:
	.long	0x00028b45
	.type	.L_2il0floatpacket.115,@object
	.size	.L_2il0floatpacket.115,4
	.align 4
.L_2il0floatpacket.116:
	.long	0x00018842
	.type	.L_2il0floatpacket.116,@object
	.size	.L_2il0floatpacket.116,4
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.3:
	.byte	97
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.8:
	.byte	114
	.byte	97
	.byte	119
	.byte	46
	.byte	100
	.byte	97
	.byte	116
	.byte	0
	.type	.L_2__STRING.8,@object
	.size	.L_2__STRING.8,8
	.align 4
.L_2__STRING.4:
	.byte	37
	.byte	108
	.byte	102
	.byte	9
	.byte	0
	.type	.L_2__STRING.4,@object
	.size	.L_2__STRING.4,5
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.9:
	.byte	98
	.byte	119
	.byte	58
	.byte	32
	.byte	37
	.byte	108
	.byte	102
	.byte	9
	.byte	0
	.type	.L_2__STRING.9,@object
	.size	.L_2__STRING.9,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.2:
	.byte	116
	.byte	109
	.byte	112
	.byte	46
	.byte	100
	.byte	117
	.byte	109
	.byte	112
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.7:
	.byte	10
	.byte	0
	.type	.L_2__STRING.7,@object
	.size	.L_2__STRING.7,2
	.space 2, 0x00 	# pad
	.align 4
.L_2__STRING.5:
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
	.byte	0
	.type	.L_2__STRING.5,@object
	.size	.L_2__STRING.5,11
	.space 1, 0x00 	# pad
	.align 4
.L_2__STRING.6:
	.byte	97
	.byte	114
	.byte	114
	.byte	97
	.byte	121
	.byte	32
	.byte	39
	.byte	97
	.byte	39
	.byte	32
	.byte	97
	.byte	108
	.byte	108
	.byte	111
	.byte	99
	.byte	97
	.byte	116
	.byte	105
	.byte	111
	.byte	110
	.byte	32
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	0
	.type	.L_2__STRING.6,@object
	.size	.L_2__STRING.6,28
	.align 4
.L_2__STRING.1:
	.byte	102
	.byte	97
	.byte	105
	.byte	108
	.byte	101
	.byte	100
	.byte	46
	.byte	10
	.byte	0
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,9
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.0:
	.byte	112
	.byte	97
	.byte	115
	.byte	115
	.byte	101
	.byte	100
	.byte	46
	.byte	10
	.byte	0
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,9
	.data
	.comm main_kmpc_tree_reduct_lock_0,32,8
# mark_proc_addr_taken L_main_117__tree_reduce0_2.77;
# mark_proc_addr_taken L_main_117__par_loop0_2.39;
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000234
	.4byte 0x0000001c
	.8byte ..___tag_value_main.1
	.8byte ..___tag_value_main.98-..___tag_value_main.1
	.byte 0x04
	.4byte ..___tag_value_main.3-..___tag_value_main.1
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_main.4-..___tag_value_main.3
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.7-..___tag_value_main.4
	.8byte 0xff800d1c380e0310
	.8byte 0xffffff780d1affff
	.8byte 0x800d1c380e0c1022
	.8byte 0xffff700d1affffff
	.8byte 0x0d1c380e0d1022ff
	.8byte 0xff680d1affffff80
	.8byte 0x1c380e0e1022ffff
	.8byte 0x600d1affffff800d
	.8byte 0x380e0f1022ffffff
	.8byte 0x0d1affffff800d1c
	.4byte 0xffffff58
	.2byte 0x0422
	.4byte ..___tag_value_main.37-..___tag_value_main.7
	.2byte 0x04cf
	.4byte ..___tag_value_main.38-..___tag_value_main.37
	.2byte 0x04ce
	.4byte ..___tag_value_main.39-..___tag_value_main.38
	.2byte 0x04cd
	.4byte ..___tag_value_main.40-..___tag_value_main.39
	.2byte 0x04cc
	.4byte ..___tag_value_main.41-..___tag_value_main.40
	.2byte 0x04c3
	.4byte ..___tag_value_main.42-..___tag_value_main.41
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.44-..___tag_value_main.42
	.4byte 0x0410060c
	.4byte ..___tag_value_main.46-..___tag_value_main.44
	.4byte 0x0410070c
	.4byte ..___tag_value_main.47-..___tag_value_main.46
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.49-..___tag_value_main.47
	.8byte 0xff800d1c380e0310
	.8byte 0xffffff780d1affff
	.8byte 0x800d1c380e0e1022
	.8byte 0xffff600d1affffff
	.2byte 0x22ff
	.byte 0x04
	.4byte ..___tag_value_main.51-..___tag_value_main.49
	.8byte 0xff800d1c380e0d10
	.8byte 0xffffff680d1affff
	.2byte 0xce22
	.byte 0x04
	.4byte ..___tag_value_main.53-..___tag_value_main.51
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffff700d1affff
	.2byte 0xcd22
	.byte 0x04
	.4byte ..___tag_value_main.55-..___tag_value_main.53
	.2byte 0x04cc
	.4byte ..___tag_value_main.56-..___tag_value_main.55
	.2byte 0x04c3
	.4byte ..___tag_value_main.57-..___tag_value_main.56
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.59-..___tag_value_main.57
	.4byte 0x0410060c
	.4byte ..___tag_value_main.61-..___tag_value_main.59
	.4byte 0x0410070c
	.4byte ..___tag_value_main.62-..___tag_value_main.61
	.4byte 0x8610060c
	.2byte 0x0402
	.4byte ..___tag_value_main.64-..___tag_value_main.62
	.8byte 0xff800d1c380e0310
	.8byte 0xffffff780d1affff
	.8byte 0x800d1c380e0e1022
	.8byte 0xffff600d1affffff
	.8byte 0x0d1c380e0f1022ff
	.8byte 0xff580d1affffff80
	.4byte 0x0422ffff
	.4byte ..___tag_value_main.67-..___tag_value_main.64
	.8byte 0xff800d1c380e0d10
	.8byte 0xffffff680d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.68-..___tag_value_main.67
	.8byte 0xff800d1c380e0c10
	.8byte 0xffffff700d1affff
	.2byte 0x0422
	.4byte ..___tag_value_main.82-..___tag_value_main.68
	.2byte 0x04cf
	.4byte ..___tag_value_main.83-..___tag_value_main.82
	.2byte 0x04ce
	.4byte ..___tag_value_main.84-..___tag_value_main.83
	.2byte 0x04cd
	.4byte ..___tag_value_main.85-..___tag_value_main.84
	.2byte 0x04cc
	.4byte ..___tag_value_main.86-..___tag_value_main.85
	.2byte 0x04c3
	.4byte ..___tag_value_main.87-..___tag_value_main.86
	.4byte 0xc608070c
	.byte 0x04
	.4byte ..___tag_value_main.89-..___tag_value_main.87
	.8byte 0x1c380e031010060c
	.8byte 0x780d1affffff800d
	.8byte 0x0c10028622ffffff
	.8byte 0xffffff800d1c380e
	.8byte 0x1022ffffff700d1a
	.8byte 0xffff800d1c380e0d
	.8byte 0x22ffffff680d1aff
	.8byte 0xff800d1c380e0e10
	.8byte 0xffffff600d1affff
	.8byte 0x800d1c380e0f1022
	.8byte 0xffff580d1affffff
	.8byte 0x00000000000022ff
	.4byte 0x0000004c
	.4byte 0x00000254
	.8byte ..___tag_value_fill.103
	.8byte ..___tag_value_fill.113-..___tag_value_fill.103
	.byte 0x04
	.4byte ..___tag_value_fill.105-..___tag_value_fill.103
	.2byte 0x300e
	.byte 0x04
	.4byte ..___tag_value_fill.106-..___tag_value_fill.105
	.2byte 0x048c
	.byte 0x04
	.4byte ..___tag_value_fill.107-..___tag_value_fill.106
	.2byte 0x058d
	.byte 0x04
	.4byte ..___tag_value_fill.108-..___tag_value_fill.107
	.2byte 0x068e
	.byte 0x04
	.4byte ..___tag_value_fill.109-..___tag_value_fill.108
	.2byte 0x04cc
	.4byte ..___tag_value_fill.110-..___tag_value_fill.109
	.2byte 0x04cd
	.4byte ..___tag_value_fill.111-..___tag_value_fill.110
	.2byte 0x04ce
	.4byte ..___tag_value_fill.112-..___tag_value_fill.111
	.4byte 0x0000080e
	.byte 0x00
	.4byte 0x00000024
	.4byte 0x000002a4
	.8byte ..___tag_value_timer.114
	.8byte ..___tag_value_timer.120-..___tag_value_timer.114
	.byte 0x04
	.4byte ..___tag_value_timer.116-..___tag_value_timer.114
	.2byte 0x400e
	.byte 0x04
	.4byte ..___tag_value_timer.119-..___tag_value_timer.116
	.4byte 0x0000080e
	.4byte 0x00000034
	.4byte 0x000002cc
	.8byte ..___tag_value_verify_array.121
	.8byte ..___tag_value_verify_array.127-..___tag_value_verify_array.121
	.byte 0x04
	.4byte ..___tag_value_verify_array.123-..___tag_value_verify_array.121
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_verify_array.124-..___tag_value_verify_array.123
	.2byte 0x080e
	.byte 0x04
	.4byte ..___tag_value_verify_array.125-..___tag_value_verify_array.124
	.2byte 0x100e
	.byte 0x04
	.4byte ..___tag_value_verify_array.126-..___tag_value_verify_array.125
	.4byte 0x0000080e
	.2byte 0x0000
	.4byte 0x00000064
	.4byte 0x00000304
	.8byte ..___tag_value_save_results.128
	.8byte ..___tag_value_save_results.144-..___tag_value_save_results.128
	.byte 0x04
	.4byte ..___tag_value_save_results.130-..___tag_value_save_results.128
	.4byte 0x028c100e
	.byte 0x04
	.4byte ..___tag_value_save_results.132-..___tag_value_save_results.130
	.4byte 0x038d180e
	.byte 0x04
	.4byte ..___tag_value_save_results.134-..___tag_value_save_results.132
	.2byte 0x300e
	.byte 0x04
	.4byte ..___tag_value_save_results.135-..___tag_value_save_results.134
	.2byte 0x058e
	.byte 0x04
	.4byte ..___tag_value_save_results.136-..___tag_value_save_results.135
	.2byte 0x068f
	.byte 0x04
	.4byte ..___tag_value_save_results.137-..___tag_value_save_results.136
	.2byte 0x04ce
	.4byte ..___tag_value_save_results.138-..___tag_value_save_results.137
	.2byte 0x04cf
	.4byte ..___tag_value_save_results.139-..___tag_value_save_results.138
	.4byte 0x04cd180e
	.4byte ..___tag_value_save_results.141-..___tag_value_save_results.139
	.4byte 0x04cc100e
	.4byte ..___tag_value_save_results.143-..___tag_value_save_results.141
	.8byte 0x000000000000080e
# End
