#include "Keypad.h"

char ReadKeypad(void){
    P0 = 0xFF;
    char numbers[4][4] = {
        {12, 8, 4, 0},
        {13, 9, 5, 1},
        {14, 10, 6, 2},
        {15, 11, 7, 3}
    };
    //keypad對應數字
    for (char c = 0; c < 4; c++) {
        P0 = ~(0x01 << c);
        //一條一條線掃
        for (char r = 0; r < 4; ++r) {
            //掃按下哪個按鍵
            if ((P0 & (0x10 << r)) == 0) {
                return numbers[c][r];
                //傳按下的數字回去
            }
        }
    }
    return -1;
}