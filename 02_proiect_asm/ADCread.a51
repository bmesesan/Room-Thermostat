Name RutinaADCRead;
Public ADCread;
Cseg at 150h
	my0: db 00000001b;1
	my1: db 00000110b;6
	my2: db 00001011b;11
	my3: db 00010000b;16
	my4: db 00010110b;!!22	
	my5: db 00011011b;27	
	my6: db 00100000b;32		
	my7: db 00100101b;37			
	my8: db 00101010b;42			
	my9: db 00101111b;47			
	my10: db 00110100b;52			
	my11: db 00111001b;57			
	my12: db 00111110b;62	
    my13: db 01000100b;!!68		
	my14: db 01001001b;73
	my15: db 01001110b;78		
	my16: db 01010011b;83
	my17: db 01011000b;88
	my18: db 01011101b;93	
	my19: db 01100010b;98		
	my20: db 01100111b;103
	my21: db 01101100b;108	
	my22: db 01110010b;!!114	
	my23: db 01110111b;119	
	my24: db 01111100b;124	
	my25: db 10000001b;129	
	my26: db 10000110b;134	
	my27: db 10001011b;139	
	my28: db 10010000b;144	
	my29: db 10010101b;149	
	my30: db 10011010b;154	
	my31: db 10100000b;!!160
	my32: db 10100101b;165			
	my33: db 10101010b;170	
	my34: db 10101111b;175	
	my35: db 10110011b;!!179
		
ADCreadSeg Segment code
RSEG ADCreadSeg;
ADCread:
mov R3, 0FFh;tot timpul vom crede ca este o eroare initial
mov b, P1;punem in B valoarea citita de la P1
mov dptr, #100h;
loopadc:

mov a, dpl;
cjne a, #36, continuareverif;
sjmp stop_nok;

continuareverif:
mov a, #50h;
movc a, @a+dptr;
inc dptr;

cjne a, b, loopadc;	
sjmp stopok;

stop_nok:
mov R3, #0FFh;cod ca nu e ok
sjmp stop;

stopok:
mov R3, 00h;cod ca e ok

mov a, dpl;
dec a;
mov R6, a;
stop:
ret;	
end;	