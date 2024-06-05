#include <reg51.h>
//functie care creeaza un delay de n ms
void delay_ms()
{
	TMOD = 0x01;
	TH0 = 0xFC;
	TL0 = 0x66;
	TR0 = 1;
	while(TF0 == 0)
		;
	TF0 = 0;
	TR0 = 0;
}