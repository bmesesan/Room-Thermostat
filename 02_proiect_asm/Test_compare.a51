Name RutinaTest_comparare
Public Test_comparare

Test_comparareSeg Segment code
RSEG Test_comparareSeg
	
Test_comparare:
mov a, R7;Referinta

loop_cmp_releu:
djnz R7, dec_Adc
sjmp opreste_releu;
dec_Adc:
djnz R6, loop_cmp_releu;
sjmp porneste_releu;

porneste_releu:
setb P3.0;
sjmp stop_comparare_releu;
opreste_releu:
clr P3.0;

stop_comparare_releu:
mov R7, a;
ret;
end;
