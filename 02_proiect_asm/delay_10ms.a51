Name RutinaDelay70ms
Public delay_70ms

delay_70msSeg Segment code
RSEG delay_70msSeg
delay_70ms:
mov tmod, #00000001b;
mov th0, #0FFh;
mov tl0, #0FFh;
setb TR0;
stau:
jnb TF0,stau;
clr TF0;
clr TR0;

ret;
end;	