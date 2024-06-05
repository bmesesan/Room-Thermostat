Name RutinaDelay1ms
Public delay_1ms

DelaySeg Segment code
RSEG DelaySeg
delay_1ms:
mov tmod, #00000001b;
mov th0, #0FCh;
mov tl0, #66h;
setb TR0;
stau:
jnb TF0,stau;
clr TF0;
clr TR0;

ret;
end;