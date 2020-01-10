# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=znver2 -instruction-tables < %s | FileCheck %s

cmovow    %si, %di
cmovnow   %si, %di
cmovbw    %si, %di
cmovaew   %si, %di
cmovew    %si, %di
cmovnew   %si, %di
cmovbew   %si, %di
cmovaw    %si, %di
cmovsw    %si, %di
cmovnsw   %si, %di
cmovpw    %si, %di
cmovnpw   %si, %di
cmovlw    %si, %di
cmovgew   %si, %di
cmovlew   %si, %di
cmovgw    %si, %di

cmovow    (%rax), %di
cmovnow   (%rax), %di
cmovbw    (%rax), %di
cmovaew   (%rax), %di
cmovew    (%rax), %di
cmovnew   (%rax), %di
cmovbew   (%rax), %di
cmovaw    (%rax), %di
cmovsw    (%rax), %di
cmovnsw   (%rax), %di
cmovpw    (%rax), %di
cmovnpw   (%rax), %di
cmovlw    (%rax), %di
cmovgew   (%rax), %di
cmovlew   (%rax), %di
cmovgw    (%rax), %di

cmovol    %esi, %edi
cmovnol   %esi, %edi
cmovbl    %esi, %edi
cmovael   %esi, %edi
cmovel    %esi, %edi
cmovnel   %esi, %edi
cmovbel   %esi, %edi
cmoval    %esi, %edi
cmovsl    %esi, %edi
cmovnsl   %esi, %edi
cmovpl    %esi, %edi
cmovnpl   %esi, %edi
cmovll    %esi, %edi
cmovgel   %esi, %edi
cmovlel   %esi, %edi
cmovgl    %esi, %edi

cmovol    (%rax), %edi
cmovnol   (%rax), %edi
cmovbl    (%rax), %edi
cmovael   (%rax), %edi
cmovel    (%rax), %edi
cmovnel   (%rax), %edi
cmovbel   (%rax), %edi
cmoval    (%rax), %edi
cmovsl    (%rax), %edi
cmovnsl   (%rax), %edi
cmovpl    (%rax), %edi
cmovnpl   (%rax), %edi
cmovll    (%rax), %edi
cmovgel   (%rax), %edi
cmovlel   (%rax), %edi
cmovgl    (%rax), %edi

cmovoq    %rsi, %rdi
cmovnoq   %rsi, %rdi
cmovbq    %rsi, %rdi
cmovaeq   %rsi, %rdi
cmoveq    %rsi, %rdi
cmovneq   %rsi, %rdi
cmovbeq   %rsi, %rdi
cmovaq    %rsi, %rdi
cmovsq    %rsi, %rdi
cmovnsq   %rsi, %rdi
cmovpq    %rsi, %rdi
cmovnpq   %rsi, %rdi
cmovlq    %rsi, %rdi
cmovgeq   %rsi, %rdi
cmovleq   %rsi, %rdi
cmovgq    %rsi, %rdi

cmovoq    (%rax), %rdi
cmovnoq   (%rax), %rdi
cmovbq    (%rax), %rdi
cmovaeq   (%rax), %rdi
cmoveq    (%rax), %rdi
cmovneq   (%rax), %rdi
cmovbeq   (%rax), %rdi
cmovaq    (%rax), %rdi
cmovsq    (%rax), %rdi
cmovnsq   (%rax), %rdi
cmovpq    (%rax), %rdi
cmovnpq   (%rax), %rdi
cmovlq    (%rax), %rdi
cmovgeq   (%rax), %rdi
cmovleq   (%rax), %rdi
cmovgq    (%rax), %rdi

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      1     0.25                        cmovow	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovnow	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovbw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovaew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovnew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovbew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovaw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovsw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovnsw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovpw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovnpw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovlw	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovgew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovlew	%si, %di
# CHECK-NEXT:  1      1     0.25                        cmovgw	%si, %di
# CHECK-NEXT:  2      5     0.33    *                   cmovow	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovnow	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovbw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovaew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovnew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovbew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovaw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovsw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovnsw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovpw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovnpw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovlw	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovgew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovlew	(%rax), %di
# CHECK-NEXT:  2      5     0.33    *                   cmovgw	(%rax), %di
# CHECK-NEXT:  1      1     0.25                        cmovol	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovnol	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovbl	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovael	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovel	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovnel	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovbel	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmoval	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovsl	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovnsl	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovpl	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovnpl	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovll	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovgel	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovlel	%esi, %edi
# CHECK-NEXT:  1      1     0.25                        cmovgl	%esi, %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovol	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovnol	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovbl	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovael	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovel	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovnel	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovbel	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmoval	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovsl	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovnsl	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovpl	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovnpl	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovll	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovgel	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovlel	(%rax), %edi
# CHECK-NEXT:  2      5     0.33    *                   cmovgl	(%rax), %edi
# CHECK-NEXT:  1      1     0.25                        cmovoq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovnoq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovbq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovaeq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmoveq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovneq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovbeq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovaq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovsq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovnsq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovpq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovnpq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovlq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovgeq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovleq	%rsi, %rdi
# CHECK-NEXT:  1      1     0.25                        cmovgq	%rsi, %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovoq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovnoq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovbq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovaeq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmoveq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovneq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovbeq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovaq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovsq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovnsq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovpq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovnpq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovlq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovgeq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovleq	(%rax), %rdi
# CHECK-NEXT:  2      5     0.33    *                   cmovgq	(%rax), %rdi

# CHECK:      Resources:
# CHECK-NEXT: [0]   - Zn2AGU0
# CHECK-NEXT: [1]   - Zn2AGU1
# CHECK-NEXT: [2]   - Zn2AGU2
# CHECK-NEXT: [3]   - Zn2ALU0
# CHECK-NEXT: [4]   - Zn2ALU1
# CHECK-NEXT: [5]   - Zn2ALU2
# CHECK-NEXT: [6]   - Zn2ALU3
# CHECK-NEXT: [7]   - Zn2Divider
# CHECK-NEXT: [8]   - Zn2FPU0
# CHECK-NEXT: [9]   - Zn2FPU1
# CHECK-NEXT: [10]  - Zn2FPU2
# CHECK-NEXT: [11]  - Zn2FPU3
# CHECK-NEXT: [12]  - Zn2Multiplier

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]
# CHECK-NEXT: 16.00 16.00  16.00  24.00  24.00  24.00  24.00    -      -      -      -      -      -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]   Instructions:
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovow	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnow	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlw	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlew	%si, %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgw	%si, %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovow	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnow	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlw	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlew	(%rax), %di
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgw	(%rax), %di
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovol	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnol	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbl	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovael	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovel	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnel	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbel	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmoval	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsl	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsl	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpl	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpl	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovll	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgel	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlel	%esi, %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgl	%esi, %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovol	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnol	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbl	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovael	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovel	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnel	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbel	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmoval	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsl	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsl	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpl	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpl	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovll	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgel	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlel	(%rax), %edi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgl	(%rax), %edi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovoq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnoq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaeq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmoveq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovneq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbeq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgeq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovleq	%rsi, %rdi
# CHECK-NEXT:  -      -     -     0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgq	%rsi, %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovoq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnoq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaeq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmoveq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovneq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovbeq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovaq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovsq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnsq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovpq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovnpq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovlq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgeq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovleq	(%rax), %rdi
# CHECK-NEXT: 0.33   0.33   0.33   0.25   0.25   0.25   0.25    -      -      -      -      -      -     cmovgq	(%rax), %rdi