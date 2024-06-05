Name RutinaDisplay_down_nr;
Public Display_down_nr;

instrgrd equ 11011111b;

Display_down_nrSeg Segment code
RSEG Display_down_nrSeg;
	
Extrn Code (sendInstr);
	
Display_down_nr:
clr P3.4;setez RS pe 0
mov P2, #11001100b;setez pozitia corecta 
acall sendInstr;
mov a, dph;
mov b, dpl;
setb P3.4;Rs = 1

regular_display:
mov a, dph;
mov b, dpl;

setb P3.4;

mov dptr, #186h;trimitem MSB
movc a, @a+dptr;
mov P2, a;
acall sendInstr;

mov a, b;
movc a, @a+dptr;
mov P2, a;
acall sendInstr;
;punem bulina de grade
mov P2, #instrgrd;
acall sendInstr;
ret;
end;