Include Irvine32.inc 
.data
arr1 dword 10,35,60,85
 dword 15,40,64,90
 dword 20,45,70,95
 dword 25,50,75,0

arr2 dword 4,4,4,4
	 dword 4,4,4,4
	 dword 4,4,4,4
	 dword 4,4,4,4
Rows = 4
Columns = 4
.code
Main Proc
mov ebx,offset arr1
mov edi,offset arr2
mov ch,Rows
l2:
mov cl,Columns
mov esi,0
mov eax,0
l1:
mov eax,[ebx+esi]
mov edx,[edi+esi]
mul edx
call writeint
add esi,4
dec cl
jnz l1
call crlf
add ebx,Columns*4
add edi,Columns*4
dec ch
jnz l2

exit
Main Endp
End main
