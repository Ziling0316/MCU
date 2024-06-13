#include <8051.h>
#include "Keypad.h"
#include "Display.h"

__idata unsigned char buffer[8] = {-1};
__idata unsigned char flag = 0;
__idata unsigned char history[50] = {-1};
__idata unsigned char history_start[10] = {-1};
__idata unsigned int Base_num[10] = {0};
__idata unsigned char negative_base[10] = {0};
__idata unsigned char bits = 0;
__idata unsigned char base_index = 0;
__idata unsigned char history_count = 0;
__idata unsigned char start = 0;
__idata unsigned char base_flag = 0;
// 宣告外部記憶體
char timer_count = 0, number, num1_counter = 0;
__sbit divide_zero = 0;
__sbit cal_flag = 0;
__sbit Keypad_flag = 0;

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
void SaveNumber(char n, char start, char *b)
{
	for (char i = start; i > 0; i--)
	{
		b[i] = b[i - 1];
	}
	b[0] = n;
}
// 儲存數字

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
		if(num2 == 0){
			divide_zero = 1;
		}
		else{
			*ans = (((-1) * negative_num1) * num1) / (((-1) * negative_num2) * num2);
		}
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
		// 關閉 Timer_0
		timer_count = 0;
	}
}

void Base_init(void)
{
	IE = 0x8a;
	// 允許Timer_1 overflow
	TMOD = 0x10;
	// 設定 Timer_1 為 Mode 1
}

void Base_timer(void) __interrupt(3) __using(2)
{
	TH1 = (65536 - 50000) / 256;
	TL1 = (65536 - 50000) % 256;
	base_flag = 1;
	TF1 = 0;
	// 清空 Timer_1 overflow flag
	TR1 = 0;
	// 關閉 Timer_0
}

void clean()
{
	flag = 0;
	for (char f = 0; f < 8; f++)
	{
		buffer[f] = -1;
	}
	// 清空buffer
}

void Base(char bits, char b, char flag){
	if (negative_base[base_index - 1] == 1)
	{
		bits = ~bits;
		bits += 1;
	}
	switch(b){
		case 2:
			for (char m = 0; m < 8; m++)
			{
				SaveNumber(bits&1, 7, buffer);
				bits >>= 1;
			}
			break;
		case 8:
			for (char m = 0; m < 3; m++)
			{
				SaveNumber(bits&0x07, 7, buffer);
				bits >>= 3;
			}
			if (negative_base[base_index - 1] == 1)
			{
				buffer[0]+=4;
			}
			break;
		case 16:
			for (char m = 0; m < 2; m++)
			{
				SaveNumber(bits&0x0f, 7, buffer);
				bits >>= 4;
			}
			break;
	}
	for (char m = 0; m < 100; m++)
	{
		Show_Ans(buffer, flag);
	}
	
}
void main(void)
{
	__idata int num_1 = 0, num_2 = 0, ans = 0;
	__idata int negative_num1 = -1, negative_num2 = -1, negative_ans = 0;
	__idata char op = '$';
	// __idata unsigned int n = 0;
	Base_init();
	// 利用Timer_1秀進制轉換結果
	Keypad_Debounce_init();
	// 利用Timer_0製作keypad debounce

	while (1)
	{
		TR0 = 1;
		// 啟動 Timer_0
		number = ReadKeypad();
		// 從Keypad讀數字並存進number
		if (number >= 0 && number <= 15)
		{
			// 表示有讀到數字
			if (number == 10)
			{
				TR1 = 1;
				// 啟動 Timer_1
				char count = history_start[history_count];
				for (char m = 0; m < 100; m++)
				{
					Show_History(history, start, count);
				}
				start += count;
				history_count++;
				// 秀history
			}

			if (base_flag == 1)
			{
				for (char i = 0; i < 8; i++)
				{
					bits <<= 1;
					bits |= Base_num[base_index - 1] & 1;
					Base_num[base_index - 1] >>= 1;
				}
				char temp = 0;
				for (char i = 0; i < 8; i++)
				{
					temp <<= 1;
					temp |= bits & 1;
					bits >>= 1;
				}
				Base(temp, 2, 0xff);
				Base(temp, 8, 0x07);
				Base(temp, 16, 0x03);
				base_flag = 0;
				base_index--;
				clean();
			}
			// 秀進制轉換結果
			else if (Keypad_flag == 1)
			{
				// Timer_0時間一到就會將Keypad_flag設為1

				flag <<= 1;
				flag |= 0x01;
				// flag 每個bit對應每個七段顯示器，如果bit為1表示該七段顯示器要亮
				SaveNumber(number, 7, buffer);
				// 將輸入的數字儲存進buffer
				Update_Expression(&num_1, &num_2, &op, &negative_num1, &negative_num2);
				// 更新當下的運算式
				if (cal_flag == 1)
				{
					// 如果按了'='就會將cal_flag設為1，表示可以運算了
					Calculate(num_1, num_2, op, negative_num1, negative_num2, &ans);
					// 進行運算
					if(divide_zero == 1){
						SaveNumber(14, 7, buffer);
						SaveNumber(17, 7, buffer);
						SaveNumber(17, 7, buffer);
						SaveNumber(18, 7, buffer);
						SaveNumber(17, 7, buffer);
						flag = 0x1f;
						for (char m = 0; m < 100; m++)
						{
							Show(buffer, flag);
						}
						divide_zero = 0;
					}
					else{
						if (ans < 0)
						{
							ans = -ans;
							negative_ans = 1;
							negative_base[base_index] = 1;
						}
						Base_num[base_index] = ans;
						base_index++;
						// 統一將答案轉成正數，如果答案本身是負數將negative_ans設為1
						clean();
						// 清空buffer及flag
						do
						{
							SaveNumber(ans % 10, 49, history);
							SaveNumber(ans % 10, 7, buffer);
							ans /= 10;
							flag <<= 1;
							flag |= 0x01;
						} while (ans);
						// 將答案放進buffer
						if (negative_ans == 1)
						{
							SaveNumber(13, 49, history);
							SaveNumber(13, 7, buffer);
							flag <<= 1;
							flag |= 0x01;
						}
						// 如果答案是負的就放負號進去buffer
						char count = Counter(flag);
						SaveNumber(count, 9, history_start);
						for (char m = 0; m < 100; m++)
						{
							Show_Ans(buffer, flag);
						}
						// 顯示答案
					}
					
					clean();
					Restart(&num_1, &num_2, &op, &ans, &negative_num1, &negative_num2, &negative_ans);
					// 將變數歸零重新準備計算
				}
				Keypad_flag = 0;
			}
		}
		Show(buffer, flag);
	}
}