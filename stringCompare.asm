Include Irvine32.inc
.data
str1 byte "Umair"
str2 byte "Umair"
.code

str_cmp Proto,str11: PTR BYTE,str22: PTR BYTE

Main Proc
Invoke str_cmp,ADDR str1,ADDR str2
Exit
Main Endp

str_cmp Proc,str11: PTR BYTE,str22: PTR BYTE
mov esi,str11
mov edi,str22
l1:
mov al,[esi]
mov dl,[edi]
cmp al,0
jne l2
cmp dl,0
jne l2
jmp l3
l2:
cmp al,dl
inc esi
inc edi
je l1
l3:
ret
str_cmp endp


End Main
