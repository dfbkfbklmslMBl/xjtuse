#include <reg52.h>
#include <string.h>
#define uchar unsigned char
/************************************LCD显示相关代码*******************************/

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

/************************************键盘输入部分的代码*******************************/
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

/************************************声音发生器部分的代码*******************************/
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

/************************************数独游戏部分的代码*******************************/
// 游戏状态变量
int is_start = 0;           // 游戏是否开始，0为未开始，1为已开始
int level = 0;              // 当前关卡
int cursor_row = 0;         // 光标行位置
int cursor_col = 0;         // 光标列位置

// 数独游戏盘(9x9)，0表示空格
uchar code sudoku_board_level1[9][9] = {
    {5,3,0, 0,7,0, 0,0,0},
    {6,0,0, 1,9,5, 0,0,0},
    {0,9,8, 0,0,0, 0,6,0},
    
    {8,0,0, 0,6,0, 0,0,3},
    {4,0,0, 8,0,3, 0,0,1},
    {7,0,0, 0,2,0, 0,0,6},
    
    {0,6,0, 0,0,0, 2,8,0},
    {0,0,0, 4,1,9, 0,0,5},
    {0,0,0, 0,8,0, 0,7,9}
};

uchar code sudoku_solution_level1[9][9] = {
    {5,3,4, 6,7,8, 9,1,2},
    {6,7,2, 1,9,5, 3,4,8},
    {1,9,8, 3,4,2, 5,6,7},
    
    {8,5,9, 7,6,1, 4,2,3},
    {4,2,6, 8,5,3, 7,9,1},
    {7,1,3, 9,2,4, 8,5,6},
    
    {9,6,1, 5,3,7, 2,8,4},
    {2,8,7, 4,1,9, 6,3,5},
    {3,4,5, 2,8,6, 1,7,9}
};

// 用户当前游戏盘
uchar current_board[9][9];

// 某个格子是否为原始数字（不可更改）
bit isOriginalCell(uchar row, uchar col) {
    if(sudoku_board_level1[row][col] != 0)
        return 1;
    return 0;
}

// 音效数据
uchar code startGameMusic[][2] = {{0, 8}, {23, 8}, {23, 8}, {24, 8}, {26, 8}, {0xFF, 0xFF}};
uchar code winGameMusic[][2] = {{0, 4}, {26, 2}, {28, 2}, {30, 2}, {31, 4}, {31, 4}, {0xFF, 0xFF}};
uchar code pressKeySound[][2] = {{0, 2}, {23, 1}, {0xFF, 0xFF}};

// 函数声明
void showStartInterface();                 // 显示游戏开始界面
void showGameInterface();                  // 显示游戏界面
void showEndInterface();                   // 显示游戏结束界面
void updateBoard();                        // 更新数独板显示
void moveCursor(int direction);            // 移动光标
void inputNumber(int num);                 // 输入数字
void checkWin();                           // 检查是否获胜
void hint();                               // 提示功能
void updateDisplay(uchar newLines[4][20]); // 更新显示内容
void showRule1Interface();                 // 显示规则界面1
void showRule2Interface();                 // 显示规则界面2

void showStartInterface()
{
    uchar code newLines[4][20] = {
        "    Sudoku Game     ",
        "     Welcome!       ",
        "Key43-44: Rules     ",
        "Key11: Start        "
    };
    updateDisplay(newLines);
    play(startGameMusic);
}

void showEndInterface()
{
    uchar code newLines[4][20] = {
        "     Game Over!     ",
        "Thanks for playing  ",
        "                    ",
        "Key11: Restart      "
    };
    updateDisplay(newLines);
}

void showWinInterface()
{
    uchar code newLines[4][20] = {
        "  Congratulations!  ",
        "   You solved it!   ",
        "                    ",
        "Key11: Back         "
    };
    updateDisplay(newLines);
    play(winGameMusic);
}

void showGameInterface()
{
    // 初始化游戏盘
    int i, j;
    for(i = 0; i < 9; i++) {
        for(j = 0; j < 9; j++) {
            current_board[i][j] = sudoku_board_level1[i][j];
        }
    }
    
    // 重置光标
    cursor_row = 0;
    cursor_col = 0;
    
    // 更新显示
    updateBoard();
}

// 4×20显示屏可以显示9×9数独的完整左半部分或右半部分
void updateBoard()
{
    uchar display_lines[4][20];
    int i, j;
    
    // 第一行显示标题和操作信息
    sprintf(display_lines[0], "Sudoku [%d,%d]  H:?", cursor_row+1, cursor_col+1);
    
    // 第二三四行显示数独游戏盘（每行显示9个数字）
    for(i = 0; i < 3; i++) {
        // 显示行号
        display_lines[i+1][0] = '0' + (i*3 + 1);
        display_lines[i+1][1] = ':';
        
        // 显示第一行的9个数字
        for(j = 0; j < 9; j++) {
            if(i*3 + 0 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+2] = '[';
            } else {
                display_lines[i+1][j+2] = ' ';
            }
            
            if(current_board[i*3 + 0][j] == 0) {
                display_lines[i+1][j+3] = '.';
            } else {
                display_lines[i+1][j+3] = '0' + current_board[i*3 + 0][j];
            }
            
            if(i*3 + 0 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+4] = ']';
            } else {
                display_lines[i+1][j+4] = ' ';
            }
        }
        
        // 显示第二行的9个数字
        for(j = 0; j < 9; j++) {
            if(i*3 + 1 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+12] = '[';
            } else {
                display_lines[i+1][j+12] = ' ';
            }
            
            if(current_board[i*3 + 1][j] == 0) {
                display_lines[i+1][j+13] = '.';
            } else {
                display_lines[i+1][j+13] = '0' + current_board[i*3 + 1][j];
            }
            
            if(i*3 + 1 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+14] = ']';
            } else {
                display_lines[i+1][j+14] = ' ';
            }
        }
        
        // 显示第三行的9个数字
        for(j = 0; j < 9; j++) {
            if(i*3 + 2 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+22] = '[';
            } else {
                display_lines[i+1][j+22] = ' ';
            }
            
            if(current_board[i*3 + 2][j] == 0) {
                display_lines[i+1][j+23] = '.';
            } else {
                display_lines[i+1][j+23] = '0' + current_board[i*3 + 2][j];
            }
            
            if(i*3 + 2 == cursor_row && j == cursor_col) {
                display_lines[i+1][j+24] = ']';
            } else {
                display_lines[i+1][j+24] = ' ';
            }
        }
        
        // 确保字符串结束
        display_lines[i+1][19] = '\0';
    }
    
    // 更新显示
    updateDisplay(display_lines);
}

void moveCursor(int direction)
{
    // 方向: 0-上, 1-右, 2-下, 3-左
    switch(direction) {
        case 0: // 上
            if(cursor_row > 0) cursor_row--;
            break;
        case 1: // 右
            if(cursor_col < 8) cursor_col++;
            break;
        case 2: // 下
            if(cursor_row < 8) cursor_row++;
            break;
        case 3: // 左
            if(cursor_col > 0) cursor_col--;
            break;
    }
    
    // 更新显示
    updateBoard();
}

void inputNumber(int num)
{
    // 检查当前位置是否可以修改(原始数独盘中为0的位置才能修改)
    if(!isOriginalCell(cursor_row, cursor_col)) {
        current_board[cursor_row][cursor_col] = num;
        updateBoard();
        
        // 检查是否完成游戏
        checkWin();
    }
}

void checkWin()
{
    int i, j;
    int win = 1;
    
    // 检查所有格子是否填完且正确
    for(i = 0; i < 9; i++) {
        for(j = 0; j < 9; j++) {
            if(current_board[i][j] == 0 || 
               current_board[i][j] != sudoku_solution_level1[i][j]) {
                win = 0;
                break;
            }
        }
        if(!win) break;
    }
    
    if(win) {
        // 游戏胜利
        showWinInterface();
        is_start = 0;
    }
}

void hint()
{
    // 提示功能：在当前光标位置显示正确答案
    if(!isOriginalCell(cursor_row, cursor_col)) {
        current_board[cursor_row][cursor_col] = sudoku_solution_level1[cursor_row][cursor_col];
        updateBoard();
    }
}

void showRule1Interface()
{
    uchar code newLines[4][20] = {
        "   Sudoku Rules:    ",
        "Fill 9x9 grid with  ",
        "digits 1-9 without  ",
        "repetition in any row"
    };
    updateDisplay(newLines);
}

void showRule2Interface()
{
    uchar code newLines[4][20] = {
        "Controls:           ",
        "Arrows: Move cursor ",
        "1-9: Input number   ",
        "0: Clear, Key13: Hint"
    };
    updateDisplay(newLines);
}

void updateDisplay(uchar newLines[4][20])
{
    int i;
    ys(15);
    lcd1602();
    for (i = 0; i < 4; i++)
    {
        xianshi1(i, 0, newLines[i]);
    }
}

/************************************主程序*******************************/
main()
{
    // 键盘映射
    int keys[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int key = 16;
    
    // 初始化LCD
    lcd1602();
    // 显示开始界面
    showStartInterface();
    
    while(1)
    {
        key = keys[keyscan()]; // 获取按键
        
        if(is_start) {
            // 游戏进行中
            switch(key) {
                case 3: // 返回主菜单
                    is_start = 0;
                    showStartInterface();
                    break;
                case 7: // 数字1
                    inputNumber(1);
                    break;
                case 6: // 数字2
                    inputNumber(2);
                    break;
                case 5: // 数字3
                    inputNumber(3);
                    break;
                case 4: // 数字4
                    inputNumber(4);
                    break;
                case 11: // 数字5
                    inputNumber(5);
                    break;
                case 10: // 数字6
                    inputNumber(6);
                    break;
                case 9: // 数字7
                    inputNumber(7);
                    break;
                case 8: // 数字8
                    inputNumber(8);
                    break;
                case 15: // 数字9
                    inputNumber(9);
                    break;
                case 14: // 清除当前位置
                    inputNumber(0);
                    break;
                case 12: // 上移光标
                    moveCursor(0);
                    break;
                case 0: // 下移光标
                    moveCursor(2);
                    break;
                case 1: // 左移光标
                    moveCursor(3);
                    break; 
                case 13: // 右移光标
                    moveCursor(1);
                    break;
                case 2: // 提示
                    hint();
                    break;
            }
        } else {
            // 游戏未开始
            switch(key) {
                case 3: // 开始游戏
                    is_start = 1;
                    showGameInterface();
                    break;
                case 12: // 显示规则说明1
                    showRule1Interface();
                    break;
                case 13: // 显示规则说明2
                    showRule2Interface();
                    break;
            }
        }
        
        if(key != 16) { // 按键音效
            play(pressKeySound);
        }
    }
}
