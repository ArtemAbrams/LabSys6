sumOfDivisors(int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        mov     DWORD PTR [rbp-4], 0
        mov     DWORD PTR [rbp-8], 1
        jmp     .L2
.L4:
        mov     eax, DWORD PTR [rbp-20]
        cdq
        idiv    DWORD PTR [rbp-8]
        mov     eax, edx
        test    eax, eax
        jne     .L3
        mov     eax, DWORD PTR [rbp-8]
        add     DWORD PTR [rbp-4], eax
.L3:
        add     DWORD PTR [rbp-8], 1
.L2:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-20]
        jle     .L4
        mov     eax, DWORD PTR [rbp-4]
        pop     rbp
        ret
.LC0:
        .string "Sum of division "
main:
        push    rbp
        mov     rbp, rsp
        push    r12
        push    rbx
        sub     rsp, 16
        mov     DWORD PTR [rbp-20], 20
        jmp     .L7
.L10:
        mov     DWORD PTR [rbp-24], 500
        jmp     .L8
.L9:
        mov     esi, OFFSET FLAT:.LC0
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)
        mov     r12, rax
        mov     eax, DWORD PTR [rbp-20]
        mov     edi, eax
        call    sumOfDivisors(int)
        mov     ebx, eax
        mov     eax, DWORD PTR [rbp-24]
        mov     edi, eax
        call    sumOfDivisors(int)
        add     eax, ebx
        mov     esi, eax
        mov     rdi, r12
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        add     DWORD PTR [rbp-24], 1
.L8:
        cmp     DWORD PTR [rbp-24], 999
        jle     .L9
        add     DWORD PTR [rbp-20], 1
.L7:
        cmp     DWORD PTR [rbp-20], 999
        jle     .L10
        mov     eax, 0
        add     rsp, 16
        pop     rbx
        pop     r12
        pop     rbp
        ret