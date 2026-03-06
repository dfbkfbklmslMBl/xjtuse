#include <reg51.h> 
#include <string.h> 
#include <stdio.h> 
#include <stdlib.h>
#define uchar unsigned char
#define unit unsigned int 

/********************/
sbit sound=P1^3;
sbit rs = P1 ^ 0;
sbit rw = P1 ^ 1;
sbit en = P1 ^ 2;
sbit beepIO = P1 ^ 3;

// 函数原型声明
void updateDisplay(uchar code newLines[4][20]);
void checkGameComplete();
void showGameOverInterface();  // 新增函数声明

// 游戏状态变量
int is_start = 0;
int score = 0;
int level = 1;
int first_select = 0xFF;
int second_select = 0xFF;
int game_map[8] = {1,1,2,2,3,3,4,4};
int shown_map[8] = {0,0,0,0,0,0,0,0};
int pairs_found = 0;
int combo = 0;  // 连续配对次数
int key_left = 100;  // 剩余按键次数（代替时间限制）
int keys[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
int key = 16;
uchar m, n;

// 添加游戏状态变量
int is_game_over = 0;  // 新增变量：标记游戏是否失败

// 音符定义
uchar code T[49][2] = {{0, 0}, 
    {0xF8, 0x8B}, {0xF8, 0xF2}, {0xF9, 0x5B}, {0xF9, 0xB7}, 
    {0xFA, 0x14}, {0xFA, 0x66}, {0xFA, 0xB9}, {0xFB, 0x03}, 
    {0xFB, 0x4A}, {0xFB, 0x8F}, {0xFB, 0xCF}, {0xFC, 0x0B}, 
    {0xFC, 0x43}, {0xFC, 0x78}, {0xFC, 0xAB}, {0xFC, 0xDB}, 
    {0xFD, 0x08}, {0xFD, 0x33}, {0xFD, 0x5B}, {0xFD, 0x81}, 
    {0xFD, 0xA5}, {0xFD, 0xC7}, {0xFD, 0xE7}, {0xFE, 0x05}, 
    {0xFE, 0x21}, {0xFE, 0x3C}, {0xFE, 0x55}, {0xFE, 0x6D}, 
    {0xFE, 0x84}, {0xFE, 0x99}, {0xFE, 0xAD}, {0xFE, 0xC0}, 
    {0xFE, 0x02}, {0xFE, 0xE3}, {0xFE, 0xF3}, {0xFF, 0x02}, 
    {0xFF, 0x10}, {0xFF, 0x1D}, {0xFF, 0x2A}, {0xFF, 0x36}, 
    {0xFF, 0x42}, {0xFF, 0x4C}, {0xFF, 0x56}, {0xFF, 0x60},
    {0xFF, 0x69}, {0xFF, 0x71}, {0xFF, 0x79}, {0xFF, 0x81}
};

// 音乐定义
uchar code startGameMusic[][2] = {
    {23, 4}, {25, 4}, {27, 4}, {30, 4}, {0xFF, 0xFF}  // 上升音阶
};

uchar code endGameMusic[][2] = {
    {30, 4}, {27, 4}, {25, 4}, {23, 4}, {20, 8}, {0xFF, 0xFF}  // 下降音阶，结尾低音
};

uchar code matchSuccessSound[][2] = {
    {25, 2}, {30, 4}, {0xFF, 0xFF}  // 欢快的上升音
};

uchar code matchFailSound[][2] = {
    {20, 2}, {15, 4}, {0xFF, 0xFF}  // 低沉的下降音
};

uchar code pressKeySound[][2] = {
    {23, 1}, {0xFF, 0xFF}  // 简短的按键音
};

// 音效定义
uchar code comboSound[][2] = {
    {30, 2}, {32, 2}, {35, 4}, {0xFF, 0xFF}  // 连击音效
};

// 基础函数
void ys(uchar i) {
    uchar t;
    for(;i>= 1;i--)
        for(t=120;t>1;t--);
}

void dm() {
    P0 = 0xff;
    rs = 0;
    rw = 1;
    en = 1;
    while(P0 & 0x80);
    en = 0;
}

void ddata(uchar x, uchar DATA) {
    dm();
    ys(20);
    P0 = DATA;
    rw = 0;
    rs = x;
    en = 1;
    en = 0;
}

void lcd1602() {
    rs = 1;
    rw = 1;
    en = 1;
    P0 = 0xff;
    ys(15);
    ddata(0, 0x38);
    ys(5);
    ddata(0, 0x38);
    ddata(0, 0x08);
    ddata(0, 0x01);
    ddata(0, 0x06);
    ddata(0, 0x0c);
}

void xianshi(uchar i, uchar j, uchar DDATA) {
    if(i == 1) j += 0x40;
    if(i == 2) j += 20;
    if(i == 3) j += 20 + 0x40;
    j += 0x80;
    ddata(0, j);
    ddata(1, DDATA);
}

void xianshi1(uchar y, uchar x, uchar code *str) {
    while(*str) {
        xianshi(y, x++, *str++);
    }
}

void delay_in_key(uchar z) {
    uchar x, y;
    for(x = z; x > 0; x--)
        for(y = 110; y > 0; y--);
}

uchar keyscan() {
    uchar row, col, i;
    uchar code keycode[] = {
        0xee, 0xde, 0xbe, 0x7e,
        0xed, 0xdd, 0xbd, 0x7d,
        0xeb, 0xdb, 0xbb, 0x7b,
        0xe7, 0xd7, 0xb7, 0x77
    };
    uchar k = 16;
    P3 = 0xf0;
    if((P3 & 0xf0) != 0xf0) {
        delay_in_key(5);
        if((P3 & 0xf0) != 0xf0) {
            row = P3 & 0xf0;
            P3 = row | 0x0f;
            col = P3 & 0x0f;
            for(i = 0; i < 16; i++)
                if((col | row) == keycode[i]) {
                    k = i;
                    break;
                }
            P3 = 0xf0;
            while((P3 & 0xf0) != 0xf0);
        }
    }
    return k;
}

void delay_in_music(uchar p) {
    uchar i, j;
    for(; p > 0; p--)
        for(i = 160; i > 0; i--)
            for(j = 160; j > 0; j--);
}

void T0_int() interrupt 1 {
    beepIO = !beepIO;
    TH0 = T[m][0];
    TL0 = T[m][1];
}

void play(uchar code music[][2]) {
    uchar i = 0;
    TMOD = 0x01;
    EA = 1;
    ET0 = 1;
    while(1) {
        m = music[i][0];
        n = music[i][1];
        if(m == 0x00) {
            TR0 = 0;
            delay_in_music(2);
            i++;
        } else if(m == 0xFF) {
            TR0 = 0;
            delay_in_music(1);
            break;
        } else {
            TR0 = 1;
            delay_in_music(2);
            i++;
        }
    }
}

void shuffle_array() {
    int i, j, temp;
    for(i = 7; i > 0; i--) {
        j = rand() % (i + 1);
        temp = game_map[i];
        game_map[i] = game_map[j];
        game_map[j] = temp;
    }
}

void showStartInterface() {
    uchar code newLines[4][20] = {
        "Memory Pair Game    ",
        "Key11: Start Game   ",
        "Key43-44: Rules    ",
        "Find matching pairs"
    };
    updateDisplay(newLines);
    play(startGameMusic);
}

void showGameBoard() {
    uchar i;
    uchar code newLines[4][20] = {
        "Lv:  Score:        ",
        "                   ",
        "                   ",
        "Combo:            "
    };
    updateDisplay(newLines);
    // 显示关卡
    xianshi(0, 3, level + '0');
    // 显示分数
    xianshi(0, 11, score/100 + '0');
    xianshi(0, 12, (score%100)/10 + '0');
    xianshi(0, 13, score%10 + '0');
    // 显示剩余按键次数
    // xianshi(0, 17, key_left/10 + '0');
    // xianshi(0, 18, key_left%10 + '0');
    // 显示连击数
    xianshi(3, 7, combo/10 + '0');
    xianshi(3, 8, combo%10 + '0');
    
    // 显示已翻开的卡片数字
    for(i = 0; i < 8; i++) {
        if(shown_map[i] == 1) {
            if(i < 4) {
                xianshi(1, i*3 + 1, game_map[i] + '0');
            } else {
                xianshi(2, (i-4)*3 + 1, game_map[i] + '0');
            }
        }
    }
}

void showRule1Interface() {
    uchar code newLines[4][20] = {
        "Game Rules:        ",
        "Match pairs in key ",
        "Combo gives bonus! ",
        "11:Start 43:Back   "
    };
    updateDisplay(newLines);
}

void showEndInterface() {
    uchar code newLines[4][20] = {
        "Level Complete!     ",
        "Score:             ",
        "Max Combo:         ",
        "Key11: Next Level  "
    };
    updateDisplay(newLines);
    xianshi(1, 7, score/100 + '0');
    xianshi(1, 8, (score%100)/10 + '0');
    xianshi(1, 9, score%10 + '0');
    // xianshi(1, 7, score/10 + '0');
    // xianshi(1, 8, score%10 + '0');
    xianshi(2, 11, combo/10 + '0');
    xianshi(2, 12, combo%10 + '0');
    play(endGameMusic);
}

void showGameOverInterface() {
    uchar code newLines[4][20] = {
        "Game Over!         ",
        "Final Score:       ",
        "Level:             ",
        "Key11: Restart     "
    };
    updateDisplay(newLines);
    xianshi(1, 13, score/10 + '0');
    xianshi(1, 14, score%10 + '0');
    xianshi(2, 7, level/10 + '0');
    xianshi(2, 8, level%10 + '0');
    play(endGameMusic);
}

void checkGameComplete() {
    if(pairs_found >= 4) {  // 所有配对都找到了
        is_start = 0;
        level++;  // 增加关卡数
        showEndInterface();
    } else if(key_left <= 0) {  // 按键次数用尽
        is_start = 0;
        is_game_over = 1;  // 标记游戏失败
        showGameOverInterface();  // 显示游戏失败界面
    }
}

void processGameInput(int key) {
    int pos;
    int bonus = 0;
    if(key >= 4 && key <= 7) {
        pos = 7 - key;
    } else if(key >= 8 && key <= 11) {
        pos = 15 - key;
    } else {
        return;
    }
    
    if(shown_map[pos] == 0) {
        if(first_select == 0xFF) {
            first_select = pos;
            shown_map[pos] = 1;
            showGameBoard();
            play(pressKeySound);
        } else if(second_select == 0xFF) {
            second_select = pos;
            shown_map[pos] = 1;
            showGameBoard();
            play(pressKeySound);
            
            if(game_map[first_select] == game_map[second_select]) {
                combo++;  // 增加连击数
                // 计算分数奖励
                bonus = 10 + (combo * level * 2);  // 基础分10分 + 连击奖励
                score += bonus;
                pairs_found++;
                if(combo > 1) {
                    play(comboSound);  // 连击音效
                } else {
                    play(matchSuccessSound);
                }
                checkGameComplete();
            } else {
                shown_map[first_select] = 0;
                shown_map[second_select] = 0;
                combo = 0;  // 重置连击数
                play(matchFailSound);
                delay_in_music(100);
                showGameBoard();
            }
            first_select = 0xFF;
            second_select = 0xFF;
        }
        // key_left--;  // 每次有效按键减少剩余次数
    }
}

void updateDisplay(uchar code newLines[4][20]) {
    uchar i;
    lcd1602();
    for(i = 0; i < 4; i++) {
        xianshi1(i, 0, newLines[i]);
    }
}

main() {
    uchar i;
    level = 1;
    showStartInterface();
    while(1) {
        key = keys[keyscan()];
        switch(key) {
            case 3: // Key11
                if(!is_start) {
                    is_start = 1;
                    if(is_game_over) {  // 如果游戏失败
                        is_game_over = 0;  // 重置游戏失败标志
                        level = 1;  // 重置到第一关
                        score = 0;  // 重置分数
                        pairs_found = 0;
                        key_left = 100;  // 重置步数为初始值
                    } else if(pairs_found >= 4) {
                        // 保留当前分数
                        pairs_found = 0;
                        // key_left = 20 - (level * 2);  // 调整步数减少量
                        // if(key_left < 8) key_left = 8;  // 确保最低有8步
                    }
                    combo = 0;  // 重置连击数
                    for(i = 0; i < 8; i++) {
                        shown_map[i] = 0;
                    }
                    first_select = 0xFF;
                    second_select = 0xFF;
                    shuffle_array();
                    showGameBoard();
                    play(startGameMusic);
                } else {
                    is_start = 0;
                    showEndInterface();
                }
                break;
            case 13: // Key43
                showRule1Interface();
                break;
            case 16:
                break;
            default:
                if(is_start) {
                    processGameInput(key);
                }
                break;
        }
        if(key != 3 && key != 16) {
            play(pressKeySound);
        }
    }
}