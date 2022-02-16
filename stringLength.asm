Include Irvine32.inc
.data
str1 byte "Umair"
.code

str_len Proto,str11: PTR BYTE

Main Proc
Invoke str_len,ADDR str1
call writeint
Exit
Main Endp

str_len PROC, str11: PTR BYTE
mov eax,0
mov edi,str11
l1:
cmp byte ptr[edi],0
je l2
inc edi
inc eax
jmp l1
l2:
ret
str_len endp
End Main
