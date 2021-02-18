#include <stdio.h>
#include "swap.h"

void Swap(char *left, char *right)
{
	// ваш код здесь
    char temp_char = *left;
    *left = *right;
    *right = temp_char;

}
