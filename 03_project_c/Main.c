#include<reg51.h>
void delay_ms();
void Init_Lcd();
unsigned int ADC_Read();
void display_number(unsigned int Adc, unsigned int ref);
void Test_relay(unsigned int adc, unsigned int ref);
void ISR_ex0(void);
void ISR_ex1(void);
unsigned int ref = 25;
void main(void)
{
	unsigned int adc;
	IE = 0x85;
	IT0=1;
	IT1=1;
	Init_Lcd();
	while(1)
	{
		delay_ms();
		adc = ADC_Read();
		delay_ms();
		display_number(adc, ref);
		delay_ms();
		Test_relay(adc, ref);
	}
}
void ISR_ex0(void)  interrupt 0
{
	ref++;
}
void ISR_ex1(void)  interrupt 2
{
	ref--;
}