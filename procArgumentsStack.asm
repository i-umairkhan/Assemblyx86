Include Irvine32.inc
.data
arr dword 1,2,3,4,5
.code

Main Proc
mov ebx,offset arr
mov ecx,lengthof arr
push ebx
push ecx
call sum

Exit
Main Endp

sum Proc
mov esi,[esp+8]
mov ecx,[esp+4]
l1:
mov eax,[esi]
call writeint
add esi,4
loop l1
ret
sum Endp


End Main
