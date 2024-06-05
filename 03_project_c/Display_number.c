#include<reg51.h>

sbit RS = P3^4;
sbit RW = P3^5;
sbit EN = P3^6;

void display_digit(unsigned int dig);
void send_instr(unsigned int instruct);
void delay_ms();
void display_upper(unsigned int x);
void display_lower(unsigned int x);

void display_number(unsigned int Adc, unsigned int ref)
{
	display_upper(Adc);
	display_lower(ref);
}

void display_upper(unsigned int x)
{
	RS = 0;
	//setez pozitia dorita
	send_instr(140);
	RS = 1;
	delay_ms();
	//MSB
	display_digit(x/10);
	delay_ms();
	//LSB
	display_digit(x%10);
	send_instr(223);
}

void display_lower(unsigned int x)
{
	RS = 0;
	//setez pozitia dorita
	send_instr(204);
	RS = 1;
	delay_ms();
	//MSB
	display_digit(x/10);
	delay_ms();
	//LSB
	display_digit(x%10);
	send_instr(223);
}

void display_digit(unsigned int dig)
{
	RS = 1;
	send_instr(dig + 48);
}