#include <reg52.h>
#include <string.h>
#define uchar unsigned char
/************************************以下是液晶显示部分的代码*******************************/

sbit rs = P0 ^ 0;
sbit rw = P0 ^ 1;
sbit en = P0 ^ 2;

void ys(int i)
{
    int t;
    for (; i >= 1; i--)
    {
        for (t = 120; t > 1; t--)
        {
        }
    }
}

void dm()
{
    P2 = 0xff;
    rs = 0;
    rw = 1;
    en = 1;
    while (P2 & 0x80)
        ;
    en = 0;
}

void ddata(int x, uchar DATA)
{
    dm();
    P2 = DATA;
    rw = 0;
    rs = x;
    en = 1;
    en = 0;
}

void lcd1602()
{
    rs = 1;
    rw = 1;
    en = 1;
    P2 = 0xff;
    ys(15);
    ddata(0, 0x38);
    ys(5);
    ddata(0, 0x38);
    ddata(0, 0x08);
    ddata(0, 0x01);
    ddata(0, 0x06);
    ddata(0, 0x0c);
}

void xianshi(uchar i, uchar j, uchar DDATA)
{
    if ((int)i == 1)
    {
        j = j + 0x40;
    }
    if ((int)i == 2)
    {
        j = j + 20;
    }
    if ((int)i == 3)
    {
        j = j + 20 + 0x40;
    }
    j = j + 0x80;
    ddata(0, j);
    ddata(1, DDATA);
}

void xianshi1(uchar y, uchar x, uchar shuzu0[])
{
    uchar j;
    uchar i;
    int k = 1;
    i = 0;
    j = strlen(shuzu0) + x;
    for (; k > 0;)
    {
        if (x < j)
        {
            xianshi(y, x, shuzu0[i]);
            x++;
            i++;
        }
        else
        {
            k = 0;
        }
    }
}

/************************************以下是按键输入部分的代码*******************************/

void delay_in_key(uchar z)
{
    uchar x, y;
    for (x = z; x > 0; x--)
        for (y = 110; y > 0; y--)
            ;
}

uchar keyscan()
{
    uchar row, col, i;
    uchar code keycode[] = {0xee, 0xde, 0xbe, 0x7e,
                            0xed, 0xdd, 0xbd, 0x7d,
                            0xeb, 0xdb, 0xbb, 0x7b,
                            0xe7, 0xd7, 0xb7, 0x77};
    uchar k = 16;
    P3 = 0xf0;
    if ((P3 & 0xf0) != 0xf0)
    {
        delay_in_key(5);
        if ((P3 & 0xf0) != 0xf0)
        {
            row = P3 & 0xf0;
            P3 = row | 0x0f;
            col = P3 & 0x0f;

            for (i = 0; i < 16; i++)
                if ((col | row) == keycode[i])
                {
                    k = i;
                    break;
                }
            P3 = 0xf0;
            while ((P3 & 0xf0) != 0xf0)
                ;
        }
    }
    return k;
}

/************************************以下是蜂鸣器部分的代码*******************************/

sbit beepIO = P1 ^ 0;
uchar m, n;
uchar code T[49][2] = {{0, 0},
                       {0xF8, 0x8B},
                       {0xF8, 0xF2},
                       {0xF9, 0x5B},
                       {0xF9, 0xB7},
                       {0xFA, 0x14},
                       {0xFA, 0x66},
                       {0xFA, 0xB9},
                       {0xFB, 0x03},
                       {0xFB, 0x4A},
                       {0xFB, 0x8F},
                       {0xFB, 0xCF},
                       {0xFC, 0x0B},
                       {0xFC, 0x43},
                       {0xFC, 0x78},
                       {0xFC, 0xAB},
                       {0xFC, 0xDB},
                       {0xFD, 0x08},
                       {0xFD, 0x33},
                       {0xFD, 0x5B},
                       {0xFD, 0x81},
                       {0xFD, 0xA5},
                       {0xFD, 0xC7},
                       {0xFD, 0xE7},
                       {0xFE, 0x05},
                       {0xFE, 0x21},
                       {0xFE, 0x3C},
                       {0xFE, 0x55},
                       {0xFE, 0x6D},
                       {0xFE, 0x84},
                       {0xFE, 0x99},
                       {0xFE, 0xAD},
                       {0xFE, 0xC0},
                       {0xFE, 0x02},
                       {0xFE, 0xE3},
                       {0xFE, 0xF3},
                       {0xFF, 0x02},
                       {0xFF, 0x10},
                       {0xFF, 0x1D},
                       {0xFF, 0x2A},
                       {0xFF, 0x36},
                       {0xFF, 0x42},
                       {0xFF, 0x4C},
                       {0xFF, 0x56},
                       {0xFF, 0x60},
                       {0xFF, 0x69},
                       {0xFF, 0x71},
                       {0xFF, 0x79},
                       {0xFF, 0x81}};

void delay_in_music(uchar p)
{
    uchar i, j;
    for (; p > 0; p--)
        for (i = 160; i > 0; i--)
            for (j = 160; j > 0; j--)
                ;
}

void pause()
{
    uchar i, j;
    for (i = 140; i > 0; i--)
        for (j = 140; j > 0; j--)
            ;
}

void T0_int() interrupt 1
{
    beepIO = !beepIO;
    TH0 = T[m][0];
    TL0 = T[m][1];
}

void play(uchar music[200][2])
{
    uchar i = 0;
    TMOD = 0x01;
    EA = 1;
    ET0 = 1;
    while (1)
    {
        m = music[i][0];
        n = music[i][1];
        if (m == 0x00)
        {
            TR0 = 0;
            delay_in_music(n);
            i++;
        }
        else if (m == 0xFF)
        {
            TR0 = 0;
            delay_in_music(30);
            i = 0;
            break;
        }
        else if (m == music[i + 1][0])
        {
            TR0 = 1;
            delay_in_music(n);
            TR0 = 0;
            pause();
            i++;
        }
        else
        {
            TR0 = 1;
            delay_in_music(n);
            i++;
        }
    }
}

/************************************以下是24点游戏部分的代码*******************************/

int is_start = 0;            //游戏是否开始，0为未开始，1为开始
int level = 0;               //当前关卡
int code leftInputPos = 7;   //用户可以输入的最左边的位置
int currentInputPos = 7;     //用户当前输入的位置
int code rightInputPos = 20; //用户可以输入的最右边的位置
int can_input = 0;           //用户是否可以输入、删除字符

uchar code startGameMusic[][2] = {{0, 8}, {23, 8}, {23, 8}, {24, 8}, {26, 8}, {26, 8}, {24, 8}, {23, 8}, {21, 8}, {19, 8}, {19, 8}, {21, 8}, {23, 8}, {21, 12}, {19, 4}, {19, 16}, {0xFF, 0xFF}};      //开始游戏音乐
uchar code endGameMusic[][2] = {{0, 4}, {26, 2}, {19, 2}, {23, 2}, {26, 2}, {19, 2}, {23, 2}, {26, 2}, {23, 2}, {16, 2}, {19, 2}, {11, 2}, {16, 2}, {19, 2}, {11, 2}, {16, 2}, {11, 2}, {0xFF, 0xFF}}; //结束游戏音乐
uchar code pressKeySound[][2] = {{0, 4}, {23, 2}, {19, 2}, {21, 2}, {23, 2}, {0xFF, 0xFF}};//按键音效

void showStartInterface();                 //显示游戏开始界面
void showLevelOrEndInterface();            //显示游戏关卡或游戏结束界面
void showEndInterface();                   //显示游戏结束界面
void showLevelInterface();                 //显示游戏关卡界面
void showLevel1Interface();                //显示第1关界面
void showLevel2Interface();                //显示第2关界面
void showToBeContinued();                  //显示未完待续界面
void showAnswer();                         //显示关卡的答案
void deleteCurrentChar();                  //删除当前字符
void inputChar(int key);                   //输入字符
void showRule1Interface();                 //显示按键规则1界面
void showRule2Interface();                 //显示按键规则2界面
void updateDisplay(uchar newLines[4][20]); //更新显示，将newLines的内容显示到液晶显示上

main()
{
    int keys[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}; //将按键映射为整数的数组，键11-14对应3-0，键21-24对应7-4，键31-34对应11-8，键41-44对应15-12，16表示未按键
    int key = 16;
    showStartInterface(); //显示游戏开始界面

    while (1)
    {
        key = keys[keyscan()]; //获取按键

        switch (key)
        {
        case 3: //显示关卡或结束界面
            showLevelOrEndInterface();
            break;
        case 2: //显示关卡界面
            showLevelInterface();
            break;
        case 1: //显示答案
            showAnswer();
            break;
        case 0: //删除当前字符
            deleteCurrentChar();
            break;
        case 12: //显示按键规则1界面
            showRule2Interface();
            break;
        case 13: //显示按键规则2界面
            showRule1Interface();
            break;
        case 16: //16表示未按键
            break;
        default: //输入字符
            inputChar(key);
            break;
        }

        if (key != 3 && key != 16) //播放按键音效
        {
            play(pressKeySound);
        }
    }
}

void showStartInterface() //显示游戏开始界面
{
    uchar code newLines[4][20] = {"24 Point Game", "Welcome!", "Key43-44: key rules", "Key11: start"};
    updateDisplay(newLines);
    play(startGameMusic);
}

void showLevelOrEndInterface() //显示游戏关卡或游戏结束界面
{
    if (is_start == 0)
    {
        is_start = 1;
        level = 0;
        showLevelInterface();
        play(pressKeySound);
    }
    else
    {
        is_start = 0;
        showEndInterface();
    }
}

void showEndInterface() //显示游戏结束界面
{
    uchar code newLines[4][20] = {"See you!", "", "", "Key11: start"};
    updateDisplay(newLines);
    play(endGameMusic);
}

void showLevelInterface() //显示游戏关卡界面
{
    level += 1;
    currentInputPos = leftInputPos;
    if (level != 3)
    {
        can_input = 1;
    }
    switch (level)
    {
    case 1:
        showLevel1Interface();
        break;
    case 2:
        showLevel2Interface();
        break;
    case 3:
        showToBeContinued();
        break;
    }
}

void showLevel1Interface() //显示关卡1界面
{
    uchar code newLines[4][20] = {"Level 1", "Numbers: 1 2 3 4", "Input: ", "Key13: answer"};
    updateDisplay(newLines);
}

void showLevel2Interface() //显示关卡2界面
{
    uchar code newLines[4][20] = {"Level 2", "Numbers: 5 6 7 8", "Input: ", "Key13: answer"};
    updateDisplay(newLines);
}

void showToBeContinued() //显示未完待续界面
{
    uchar code newLines[4][20] = {"To be continued.", "", "", "Key11: end"};
    updateDisplay(newLines);
}

void showAnswer() //显示答案
{
    can_input = 0;
    xianshi1(0, 9, "Key12: next");
    switch (level)
    {
    case 1:
        xianshi1(3, 0, "Reference: 1x2x3x4");
        break;
    case 2:
        xianshi1(3, 0, "Reference: 6x8/(7-5)");
        break;
    }
}

void deleteCurrentChar() //删除当前字符
{
    if (currentInputPos - 1 >= leftInputPos && can_input == 1)
    {
        xianshi(2, currentInputPos - 1, ' ');
        currentInputPos -= 1;
    }
}

void inputChar(int key) //输入字符
{
    if (currentInputPos + 1 <= rightInputPos && can_input == 1)
    {
        switch (key)
        {
        case 7:
            if (level == 1)
                xianshi(2, currentInputPos, '1');
            else
                xianshi(2, currentInputPos, '5');
            break;
        case 6:
            if (level == 1)
                xianshi(2, currentInputPos, '2');
            else
                xianshi(2, currentInputPos, '6');
            break;
        case 5:
            if (level == 1)
                xianshi(2, currentInputPos, '3');
            else
                xianshi(2, currentInputPos, '7');
            break;
        case 4:
            if (level == 1)
                xianshi(2, currentInputPos, '4');
            else
                xianshi(2, currentInputPos, '8');
            break;
        case 11:
            xianshi(2, currentInputPos, '+');
            break;
        case 10:
            xianshi(2, currentInputPos, '-');
            break;
        case 9:
            xianshi(2, currentInputPos, 'x');
            break;
        case 8:
            xianshi(2, currentInputPos, '/');
            break;
        case 15:
            xianshi(2, currentInputPos, '(');
            break;
        case 14:
            xianshi(2, currentInputPos, ')');
            break;
        }
        currentInputPos += 1;
    }
}

void showRule1Interface() //显示按键规则1界面
{
    uchar code newLines[4][20] = {"Key11: start/end", "Key12: next level", "Key13: get answer", "Key14: delete char"};
    updateDisplay(newLines);
}

void showRule2Interface() //显示按键规则2界面
{
    uchar code newLines[4][20] = {"Key21-24: num1-4", "Key31-42: +-x/()", "Key43-44: key rules", "Have a good time!"};
    updateDisplay(newLines);
}

void updateDisplay(uchar newLines[4][20]) //更新显示，将newLines的内容显示到液晶显示上
{
    int i;
    ys(15);
    lcd1602();
    for (i = 0; i < 4; i++)
    {
        xianshi1(i, 0, newLines[i]);
    }
}
