$title(Main_Project5)

MainP segment Code
		
Extrn code (InitLCD);
Extrn code (ADCread);
Extrn code (NrDisplay);
Extrn code (delay_1ms);
;Extrn code (delay_70ms);
Extrn code (Test_comparare);
org 0000h;
ljmp start;bypass interrupt

org 03h;
inc R7;
reti;

org 13h;
dec R7;
reti;


RSEG MainP;
org 30h;
start:
mov P1, #0FFh;set P1 as input port for the adc
mov Ie, #10000101b; enable external int 1
setb tcon.2;activeaza itnreruperea pe falling edge
setb tcon.0;activeaza itnreruperea pe falling edge
mov R7, #25;
acall InitLCD;
mainloop:
acall ADCread;
acall NrDisplay;
acall Test_comparare;
sjmp mainloop;
jmp $;
end;