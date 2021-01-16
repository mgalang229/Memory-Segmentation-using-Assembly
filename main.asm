.model small
.data   ; variables   
    prompt db "Enter a number: $"
  
.code       
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9   ; print prompt
    mov dx, offset prompt
    int 21h     
    
    mov ah, 1   ; input number
    int 21h
    mov bl, al
    
    mov dl, 10  ; print newline
    mov ah, 2h
    int 21h
    mov dl, 13
    mov ah, 2h
    int 21h
    
    mov dl, bl  ; move bl to dl
    add dl, 5   ; add 5 to dl
    sub dl, 1   ; subtract 1 to dl
    mov ah, 2
    int 21h
    
    mov ah, 4ch ; end program
    int 21h
        
endp

end main