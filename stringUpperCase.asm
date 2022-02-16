Include Irvine32.inc
.data
str1 byte "IamUmairKhan"
.code
Main Proc
mov esi,offset str1
mov ecx,lengthof str1
l1:
and byte ptr [esi] ,11011111b
inc esi
loop l1
mov edx,offset str1
call writestring
Exit
Main Endp
End Main
