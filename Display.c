#include "Display.h"

char control[8] = {0b00000111, 0b00000110, 0b00000101, 0b00000100, 0b00000011, 0b00000010, 0b00000001, 0b0000000};
char numbers[19] = {0b11000000, 0b11111001, 0b10100100, 0b10110000, 0b10011001, 0b10010010, 0b10000010, 0b11111000, 0b10000000, 0b10010000,
                    0b10001000, 0b10000011, 0b10100111, 0b10100001, 0b10000110, 0b10001110, 0xFF, 0b10101111, 0b10100011};

void delay(int i)
{
    while (i--)
        ;
}

void Show(char *buffer, char flag)
{
    for (char i = 0; i < 8; i++)
    {
        P1 = control[i];
        if ((flag & (1 << i)) > 0)
        {
            P2 = ~numbers[buffer[i]];
        }
        else
        {
            P2 = ~numbers[16];
        }
        delay(280);
    }
}

void Show_Ans(char *buffer, char flag)
{
    char count = Counter(flag)-1;
    for (char i = 0; i < 8; i++)
    {
        P1 = control[i];
        if ((flag & (1 << i)) > 0)
        {
            P2 = ~numbers[buffer[count - i]];
        }
        else
        {
            P2 = ~numbers[16];
        }
        delay(280);
    }
}

void Show_History(char *buffer, char start, char count)
{
    // Show_Reverse(buffer, count);
    for (char i = 0; i < 8; i++)
    {
        P1 = control[i];
        if (i<count)
        {
            P2 = ~numbers[buffer[start+(count-1-i)]];
        }
        else
        {
            P2 = ~numbers[16];
        }
        delay(280);
    }
}

char Counter(char flag)
{
    char count = 0;
    for (char i = 0; i < 8; i++)
    {
        if ((flag & (1 << i)) > 0)
        {
            count++;
        }
    }
    return count;
}
