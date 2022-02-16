Include Irvine32.inc
.data
str1 byte "khan"
.code
Main Proc

mov esi,0
mov ecx,lengthof str1

l1:
movzx eax,str1[esi]
inc esi
push eax
loop l1

mov esi,0
mov ecx,lengthof str1

l2:
pop eax
mov str1[esi],al
inc esi
loop l2

mov edx,offset str1
call writestring

Exit
Main Endp
End Main
