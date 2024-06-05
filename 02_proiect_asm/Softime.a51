Name RutinaSoft;
Public Softime;

SoftSeg Segment code
RSEG Softseg;
Extrn code (timer8051);

softime:
push acc;2C
orl a, b;1C
cjne a, #0h, ok;2C
pop acc;2C
ret;2C

ok:
pop acc;2C
jz bdown;2C

bdown:
dec b;1C
sjmp timer;2C

timer:
acall timer8051;
nop;1C
djnz acc, timer;2C
cjne a, b, bdown;2C
ret;2C
;Timer = 1C + Onemil + 2C = R7*6*C + 3C 

ret;
end;