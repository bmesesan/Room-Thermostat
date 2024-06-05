Name RutinaInitLCD;
Public InitLCD;
	
instr1 equ 00111000b;function set
instr2 equ 00001000b;display off
instr3 equ 00000001b;display on
instr4 equ 00001100b;display on/off control

LCDSeg Segment code
RSEG LCDSeg;
Extrn Code (sendInstr);
Extrn Code (TempStringDisp);
InitLCD:

clr P3.4;RS
clr P3.5;R/W
clr P3.6;ENABLE
mov P2, 0h;

mov P2, #instr1;
acall sendInstr;

mov P2, #instr2;
acall sendInstr;

mov P2, #instr3;
acall sendInstr;

mov P2, #instr4;
acall sendInstr;

;Display string 'Temperature:'
acall TempStringDisp;
ret;
end;