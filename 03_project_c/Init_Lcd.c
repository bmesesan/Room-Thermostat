#include<reg51.h>

void delay_ms();
void instr_set();
void temp_string_display();
void tref_string_display();
void send_instr(unsigned int instruct);

sbit RS = P3^4;
sbit RW = P3^5;
sbit EN = P3^6;

void Init_Lcd()
{
	RS = 0;
	RW = 0;
	EN = 0;
	
	instr_set();
	temp_string_display();
	tref_string_display();
}

void send_instr(unsigned int instruct)
{
	P2 = instruct;
	delay_ms();
	EN = 1;
	delay_ms();
	EN =~ EN;
}

void instr_set()
{
	unsigned int i;
	unsigned char instr[4] = {56, 8, 1, 12};
	for (i = 0; i < 4; i++)
	{
		send_instr(instr[i]);
	}
}

void temp_string_display()
{
	//instructiunile necesare pe a afisa 'TEMPERATURE:'
	unsigned char instr[12] = {84, 69, 77, 80, 69, 82, 65, 84, 85, 82, 69, 58};
	unsigned int i;
	RS = 1;
	for (i = 0; i < 12; i++)
	{
		send_instr(instr[i]);
	}
}

void tref_string_display()
{
	unsigned char instr[5] = {84, 82, 69, 70, 58};
	unsigned int i;
	//setez a doua linie a LCD-ului
	RS = 0;
	send_instr(192);
	
	RS = 1;
	//instructiunile necesare pe a afisa 'TREF:'
	for (i = 0; i < 5; i++)
	{
		send_instr(instr[i]);
	}
}
