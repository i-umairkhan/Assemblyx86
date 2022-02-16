Include Irvine32.inc
.data

x dword 7
y dword 6

.code
;--- PROTOTYPES OF FUNCTIONS ---
addProc proto,val1:dword,val2:dword
subProc proto,val1:dword,val2:dword
myfunc proto,val1:dword,val2:dword

Main PROC
invoke myfunc,x,y
EXIT
Main ENDP

;--- FUNCTION LOGIC ---
; if(eax>ebx)AND(ebx<edx)OR(eax==ebx)
; call sum
; else
; call subtract

myfunc PROC,val1:dword,val2:dword
call readint
mov ecx,eax
call readint
mov ebx,eax
call readint
mov edx,eax
mov eax,ecx
cmp eax,ebx
jg l1
jmp l2
l1:
cmp ebx,edx
jg l3
invoke addProc,val1,val2
jmp o
l3:
cmp eax,ebx
jne l2
invoke addProc,val1,val2
jmp o
l2:
invoke subProc,val1,val2
o:
ret
myfunc ENDP




addProc PROC,val1:dword,val2:dword
mov eax,val1
add eax,val2
call writeint
call crlf
ret
addProc ENDP


subProc PROC,val1:dword,val2:dword
mov eax,val1
sub eax,val2
call writeint
call crlf
ret
subProc ENDP

End MAIN
