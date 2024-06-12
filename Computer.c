#include <8051.h>
#include "Keypad.h"
#include "Display.h"

__idata unsigned char buffer[8] = {-1};
char flag = 0;
__idata unsigned char history[50] = {0};
__idata unsigned char start_count[50] = {0};
__idata unsigned char history_count = 0;
__idata unsigned char start = 0;
// 宣告外部記憶體
char timer_count = 0;
__sbit cal_flag = 0;
__sbit Keypad_flag = 0;
char num1_counter = 0;

void Restart(int *num_1, int *num_2, char *op, int *ans, int *negative_num1, int *negative_num2, int *negative_ans)
{
	*num_1 = 0;
	*num_2 = 0;
	*op = '$';
	*ans = 0;
	cal_flag = 0;
	*negative_ans = 0;
	*negative_num1 = -1;
	*negative_num2 = -1;
	num1_counter = 0;
}
void SaveNumber(char n)
{
	for (char i = 7; i > 0; i--)
	{
		buffer[i] = buffer[i - 1];
	}
	buffer[0] = n;
}
// 儲存當下的計算

void SaveAns(char n, char* b)
{
	for (char i = 49; i > 0; i--)
	{
		b[i] = b[i - 1];
	}
	b[0] = n;
}
// 儲存每次的答案


void Update_Expression(int *num_1, int *num_2, char *op, int *negative_num1, int *negative_num2)
{

	if (buffer[0] >= 0 && buffer[0] <= 9)
	{
		if (*op == '$')
		{
			*num_1 = *num_1 * 10 + (int)buffer[0];
			num1_counter++;
		}
		if (*op != '$')
		{
			*num_2 = *num_2 * 10 + (int)buffer[0];
		}
	}
	else if (buffer[0] == 13 && num1_counter == 0)
	{
		*negative_num1 = 1;
	}
	else if (buffer[0] >= 12 && buffer[0] <= 15 && num1_counter != 0 && *op == '$')
	{
		*op = buffer[0];
	}
	else if (buffer[0] == 13 && *op != '$')
	{
		*negative_num2 = 1;
	}
	else if (buffer[0] == 11)
	{
		cal_flag = 1;
	}
}
// 更新運算式子

void Calculate(int num1, int num2, char op, int negative_num1, int negative_num2, int *ans)
{
	switch (op)
	{
	case 12:
		*ans = (((-1) * negative_num1) * num1) + (((-1) * negative_num2) * num2);
		break;
	case 13:
		*ans = (((-1) * negative_num1) * num1) - (((-1) * negative_num2) * num2);
		break;
	case 14:
		*ans = (((-1) * negative_num1) * num1) * (((-1) * negative_num2) * num2);
		break;
	case 15:
		*ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
		break;
	}
}
// 計算

void Keypad_Debounce_init(void)
{
	IE = 0x8a;
	// 允許Timer_0 overflow
	TMOD = 0x01;
	// 設定 Timer_0 為 Mode 1
}

void Keypad_Debounce(void) __interrupt(1) __using(1)
{
	TH0 = (65536 - 50000) / 256;
	TL0 = (65536 - 50000) % 256;
	timer_count++;
	if (timer_count == 20)
	{
		Keypad_flag = 1;
		TF0 = 0;
		// 清空 Timer_0 overflow flag
		TR0 = 0;
		timer_count = 0;
	}
}

void main(void)
{
	int num_1 = 0, num_2 = 0, ans = 0;
	char op = '$';
	char number, old_number;
	int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
	Keypad_Debounce_init();
	// 利用Timer_0製作keypad debounce
	while (1)
	{
		TR0 = 1;
		// 啟動 Timer_0
		number = ReadKeypad();
		if (number >= 0 && number <= 15)
		{
			// 表示有讀到數字
			old_number = number;
			if (Keypad_flag == 1)
			{
				if (old_number == 10)
				{
					char count = Counter(start_count[history_count]);
					for (char m = 0; m < 100; m++)
					{
						Show_Ans(history, start, start+count);
					}
					start = count;
					history_count++;
				}
				else
				{
					// Timer_0時間一到就會將Keypad_flag設為1
					flag <<= 1;
					flag |= 0x01;
					// flag 每個bit對應每個七段顯示器，如果bit為1表示該七段顯示器要亮
					SaveNumber(old_number);
					// 將輸入的數字儲存進buffer
					Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
					// 更新當下的運算式
					if (cal_flag == 1)
					{
						// 如果按了'='就會將cal_flag設為1，表示可以運算了
						Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
						// 進行運算
						if (ans < 0)
						{
							ans = -ans;
							negative_ans = 1;
						}
						// 統一將答案轉成正數，如果答案本身是負數將negative_ans設為1
						flag = 0;
						for (char f = 0; f < 8; f++)
						{
							buffer[f] = -1;
						}
						// 清空顯示中的畫面
						do
						{
							SaveAns(ans % 10, history);
							SaveNumber(ans % 10);
							ans /= 10;
							flag <<= 1;
							flag |= 0x01;
						} while (ans);
						// 將答案放進buffer
						if (negative_ans == 1)
						{
							SaveAns(13, history);
							SaveNumber(13);
							flag <<= 1;
							flag |= 0x01;
						}
						SaveAns(flag, start_count);
						// 如果答案是負的需再放負號進去
						for (char m = 0; m < 100; m++)
						{
							Show_Reverse(buffer, flag);
						}
						// 顯示答案
						for (char f = 0; f < 8; f++)
						{
							buffer[f] = -1;
						}
						flag = 0;
						// 清空顯示中的畫面
						Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
						// 將變數歸零重新準備計算
					}
					Keypad_flag = 0;
				}
			}
		}
		Show(buffer, flag);
	}
}