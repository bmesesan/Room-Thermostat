Name RutinaDPTRFilter;
Public DPTRFilter;
	
DPTRFilterSeg Segment code
RSEG DPTRFilterSeg;
	
DPTRFilter:
cjne R3,#0FFh, start_filter;
sjmp gata;

start_filter:

	mov a, R6;
	mov dptr, #0h;
	constrloop:
	
	test0:
	cjne a, #0, test10;
	sjmp H0;
	
	test10:
	cjne a, #10, test20;
	sjmp H10;
	
	test20:
	cjne a, #20, test30;
	sjmp H20;
	
	test30:
	cjne a, #30, FormL;
	sjmp H30;
	
	FormL:
	dec a;
	inc dpl;
	sjmp constrloop;
	
	H0:
	mov dph, #0;
	sjmp gata;
	
	H10:
	mov dph, #1;
	sjmp gata;
	
	H20:
	mov dph, #2;
	sjmp gata;
	
	H30:
	mov dph, #3;
	sjmp gata;
	
	gata:
	ret;
end;