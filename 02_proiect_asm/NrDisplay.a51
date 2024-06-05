Name RutinaNrDisplay;
Public NrDisplay;

Cseg at 186h
	disp0: db 00110000b;48
	disp1: db 00110001b;49
	disp2: db 00110010b;50
	disp3: db 00110011b;51
	disp4: db 00110100b;52
	disp5: db 00110101b;53
	disp6: db 00110110b;54
	disp7: db 00110111b;55
	disp8: db 00111000b;56
	disp9: db 00111001b;57

NrDisplaySeg Segment code
RSEG NrDisplaySeg;
Extrn Code (sendInstr);
Extrn code (DPTRFilter);
Extrn code (Display_up_nr);
Extrn code (DPTRFilter_ref);
Extrn code (Display_down_nr);	
NrDisplay:
acall DPTRFilter;
acall Display_up_nr;
acall DPTRFilter_ref;
acall Display_down_nr;

gata_display:
ret;	
end;