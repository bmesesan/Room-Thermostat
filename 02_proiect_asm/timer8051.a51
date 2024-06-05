Name RutinaTimer8051
Public timer8051
del equ 99h;
TimerSeg Segment code
RSEG TimerSeg

timer8051:	;Timer =  3xCM+6CM
	mov r7, #del;1C
	onemil:
		nop;  1CM TONE = 1
		nop;
		nop;
		nop;	TONE = 4
	djnz r7, onemil;Onemil = R7x6xCM
	ret;2C
	;Total 3C + Onemil
end;