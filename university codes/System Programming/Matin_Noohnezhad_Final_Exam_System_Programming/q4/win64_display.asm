extrn printf:proc
extrn exit:proc

.data
MyDisp db 'Hello 64-bit world!',0ah,0

.code
main proc

        mov     rcx,offset MyDisp
        sub     rsp,20h
        call    printf
        add     rsp,20h

        mov     rcx,0
        call    exit

main endp
end