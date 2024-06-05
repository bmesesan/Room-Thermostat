#include<reg51.h>

sbit Rellay = P3^0;

void Test_relay(unsigned int adc, unsigned int ref)
{
	if (adc >= ref)
		Rellay = 0;
	else
		Rellay = 1;
}