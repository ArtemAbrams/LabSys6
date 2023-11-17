sumOfDivisors(int):
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movl    %ecx, 16(%rbp)
        movl    $0, -4(%rbp)
        movl    $1, -8(%rbp)
        jmp     .L2
.L4:
        movl    16(%rbp), %eax
        cltd
        idivl   -8(%rbp)
        movl    %edx, %eax
        testl   %eax, %eax
        jne     .L3
        movl    -8(%rbp), %eax
        addl    %eax, -4(%rbp)
.L3:
        addl    $1, -8(%rbp)
.L2:
        movl    -8(%rbp), %eax
        cmpl    16(%rbp), %eax
        jle     .L4
        movl    -4(%rbp), %eax
        addq    $16, %rsp
        popq    %rbp
        ret