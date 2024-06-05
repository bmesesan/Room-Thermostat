#include<reg51.h>

unsigned int ADC_Read()
{
	unsigned int x = P1;
	unsigned int i;
	unsigned int value = 1;
	if (x == 179)
		return (35);
	for (i = 0; i < 36; i++)
	{
		if (value == x)
		{
			return (i);
		}
		if (i == 3 || i == 12 || i == 21 || i == 30 || i == 34)
			value = value + 6;
		else
			value = value + 5;
	}
	return (0);
}