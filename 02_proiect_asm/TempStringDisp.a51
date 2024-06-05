Name RutinaTempStringDisp;
Public TempStringDisp;
	
instrT equ 01010100b;
instrE equ 01000101b;
instrM equ 01001101b;
instrP equ 01010000b;
instrR equ 01010010b;
instrA equ 01000001b;
instrU equ 01010101b;
instr2P equ 00111010b;
instrF equ 01000110b;

TempStringDispSeg Segment code
RSEG TempStringDispSeg;
Extrn Code (sendInstr);
	
TempStringDisp:

;RS = 1, deoarece trimitem caractere pentru display
setb P3.4;
mov P2, #instrT;
acall sendInstr;

mov P2, #instrE;
acall sendInstr;

mov P2, #instrM;
acall sendInstr;

mov P2, #instrP;
acall sendInstr;

mov P2, #instrE;
acall sendInstr;

mov P2, #instrR;
acall sendInstr;

mov P2, #instrA;
acall sendInstr;

mov P2, #instrT;
acall sendInstr;

mov P2, #instrU;
acall sendInstr;

mov P2, #instrR;
acall sendInstr;

mov P2, #instrE;
acall sendInstr;

mov P2, #instr2P;
acall sendInstr;

;Rs = 0 deoarece urmeaza sa setam pozitia
clr P3.4;

mov P2, #11000000b;setez pozitia corecta
acall sendInstr;

setb P3.4;

mov P2, #instrT;
acall sendInstr;

mov P2, #instrR;
acall sendInstr;

mov P2, #instrE;
acall sendInstr;

mov P2, #instrF;
acall sendInstr;

mov P2, #instr2P;
acall sendInstr;

ret;
end;	
