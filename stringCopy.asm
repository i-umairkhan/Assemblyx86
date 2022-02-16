Include Irvine32.inc
.data
str1 byte "I am Umair Khan"
str2 byte sizeof str1 DUP (?)
.code
Main Proc
mov esi,offset str1
mov edi,offset str2
mov ecx,lengthof str1
l1:
mov dl,[esi]
mov [edi],dl
inc esi
inc edi
loop l1
mov edx,offset str2
call writestring
Exit
Main Endp
End Main
