.model small
.data 

   msg  db 'Ola,sou sua calculadora simples!',0Dh,0Ah,'Digite o primeiro numero!',0Dh,0Ah,'$'
   msg2 db 0Dh,0Ah,'Agora Digite o proximo numero!',0Dh,0Ah,'$'

.code
;;----------------------funcoes---------------------------------;; 
printf macro string 
    lea dx,string
    mov ah,09h
    int 21h
endm

;;--------------------------------------------------------------;; 
    mov ax,@data
    mov ds,ax 
  
    printf msg
      
    mov ah,01h
    int 21h

    printf msg2