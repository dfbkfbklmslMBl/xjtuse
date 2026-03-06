#include <reg52.h>
#include <intrins.h>
#include <string.h>

// 定义LCD引脚
sbit LCD_RS = P2^6;    // 数据/命令选择
sbit LCD_RW = P2^5;    // 读/写选择
sbit LCD_EN = P2^7;    // 使能信号
sbit LCD_BF = P0^7;    // 忙标志位

// 定义蜂鸣器引脚
sbit beepIO = P1^3;    // 蜂鸣器连接到P1.3引脚

// 定义按键引脚
sbit KEY1 = P1^0;
sbit KEY2 = P1^1;
sbit KEY3 = P1^2;
sbit KEY4 = P1^3;

// 游戏参数定义
#define SNAKE_MAX_LENGTH 20    // 蛇的最大长度
#define GAME_SPEED 200         // 游戏速度(ms)
#define SCREEN_WIDTH 4         // 屏幕宽度
#define SCREEN_HEIGHT 20       // 屏幕高度

// 游戏状态
typedef struct {
    unsigned char x[SNAKE_MAX_LENGTH];  // 蛇身X坐标
    unsigned char y[SNAKE_MAX_LENGTH];  // 蛇身Y坐标
    unsigned char length;               // 蛇的长度
    unsigned char direction;            // 移动方向(0:上, 1:右, 2:下, 3:左)
    unsigned char food_x;               // 食物X坐标
    unsigned char food_y;               // 食物Y坐标
    unsigned char score;                // 得分
    bit game_over;                      // 游戏结束标志
} GameState;

GameState game;

// LCD显示缓存
unsigned char display_buffer[SCREEN_HEIGHT][SCREEN_WIDTH];

// 音调数据表
unsigned char code T[49][2] = {
    {0, 0},       // 0 - 静音
    {0xF8, 0x8B}, // 1
    {0xF8, 0xF2}, // 2
    {0xF9, 0x5B}, // 3
    {0xF9, 0xB7}, // 4
    {0xFA, 0x14}, // 5
    {0xFA, 0x66}, // 6
    {0xFA, 0xB9}, // 7
    {0xFB, 0x03}, // 8
    {0xFB, 0x4A}, // 9
    {0xFB, 0x8F}, // 10
    {0xFB, 0xCF}, // 11
    {0xFC, 0x0B}, // 12
    {0xFC, 0x43}, // 13
    {0xFC, 0x78}, // 14
    {0xFC, 0xAB}, // 15
    {0xFC, 0xDB}, // 16
    {0xFD, 0x08}, // 17
    {0xFD, 0x33}, // 18
    {0xFD, 0x5B}, // 19
    {0xFD, 0x81}, // 20
    {0xFD, 0xA5}, // 21
    {0xFD, 0xC7}, // 22
    {0xFD, 0xE7}, // 23
    {0xFE, 0x05}, // 24
    {0xFE, 0x22}, // 25
    {0xFE, 0x3D}, // 26
    {0xFE, 0x57}, // 27
    {0xFE, 0x70}, // 28
    {0xFE, 0x88}, // 29
    {0xFE, 0x9F}, // 30
    {0xFE, 0xB5}, // 31
    {0xFE, 0xCA}, // 32
    {0xFE, 0xDE}, // 33
    {0xFE, 0xF1}, // 34
    {0xFF, 0x03}, // 35
    {0xFF, 0x14}, // 36
    {0xFF, 0x24}, // 37
    {0xFF, 0x33}, // 38
    {0xFF, 0x42}, // 39
    {0xFF, 0x50}, // 40
    {0xFF, 0x5D}, // 41
    {0xFF, 0x6A}, // 42
    {0xFF, 0x76}, // 43
    {0xFF, 0x82}, // 44
    {0xFF, 0x8D}, // 45
    {0xFF, 0x98}, // 46
    {0xFF, 0xA2}, // 47
    {0xFF, 0xAC}, // 48
    {0xFF, 0xB5}, // 49
    {0xFF, 0xBE}, // 50
    {0xFF, 0xC7}, // 51
    {0xFF, 0xCF}, // 52
    {0xFF, 0xD7}, // 53
    {0xFF, 0xDE}, // 54
    {0xFF, 0xE5}, // 55
    {0xFF, 0xEC}, // 56
    {0xFF, 0xF2}, // 57
    {0xFF, 0xF8}, // 58
    {0xFF, 0xFE}  // 59
};

// 音乐数据
unsigned char code gameStartMusic[][2] = {
    {0, 4},     // 休止符
    {23, 2},    // 音符1，节拍2
    {19, 2},    // 音符2，节拍2
    {21, 2},    // 音符3，节拍2
    {23, 2},    // 音符4，节拍2
    {0xFF, 0xFF} // 结束标志
};

unsigned char code gameOverMusic[][2] = {
    {0, 4},     // 休止符
    {23, 2},    // 音符1，节拍2
    {19, 2},    // 音符2，节拍2
    {21, 2},    // 音符3，节拍2
    {23, 2},    // 音符4，节拍2
    {0xFF, 0xFF} // 结束标志
};

unsigned char code eatFoodSound[][2] = {
    {0, 4},     // 休止符
    {23, 2},    // 音符，节拍2
    {0xFF, 0xFF} // 结束标志
};

// 全局变量
unsigned char m, n;  // 用于音乐播放

// 延时函数
void delay_ms(unsigned int ms)
{
    unsigned int i, j;
    for(i = 0; i < ms; i++)
        for(j = 0; j < 110; j++);  // 延时1ms
}

// LCD相关函数
void LCD_WriteCmd(unsigned char cmd)
{
    LCD_RS = 0;
    LCD_RW = 0;
    LCD_EN = 1;
    P0 = cmd;
    delay_ms(1);
    LCD_EN = 0;
}

void LCD_WriteData(unsigned char dat)
{
    LCD_RS = 1;
    LCD_RW = 0;
    LCD_EN = 1;
    P0 = dat;
    delay_ms(1);
    LCD_EN = 0;
}

void LCD_Init()
{
    LCD_WriteCmd(0x38);  // 8位数据接口，2行显示，5x7点阵
    delay_ms(5);
    LCD_WriteCmd(0x0C);  // 显示开，光标关
    delay_ms(5);
    LCD_WriteCmd(0x06);  // 文字不动，地址自动+1
    delay_ms(5);
    LCD_WriteCmd(0x01);  // 清屏
    delay_ms(5);
}

// 蜂鸣器相关函数
void Timer0_Init()
{
    TMOD = 0x01;  // 设置定时器模式为模式1
    EA = 1;       // 开总中断
    ET0 = 1;      // 允许定时器0中断
}

void Timer0_ISR() interrupt 1
{
    beepIO = !beepIO;  // 翻转蜂鸣器IO电平
    TH0 = T[m][0];     // 重新加载定时器高字节
    TL0 = T[m][1];     // 重新加载定时器低字节
}

void delay_in_music(unsigned char p)
{
    unsigned char i, j;
    for(; p > 0; p--)
        for(i = 160; i > 0; i--)
            for(j = 160; j > 0; j--);
}

void pause()
{
    unsigned char i, j;
    for(i = 140; i > 0; i--)
        for(j = 140; j > 0; j--);
}

void play(unsigned char music[][2])
{
    unsigned char i = 0;
    while(1)
    {
        m = music[i][0];
        n = music[i][1];
        
        if(m == 0x00)
        {
            TR0 = 0;
            delay_in_music(2);
            i++;
        }
        else if(m == 0xFF)
        {
            TR0 = 0;
            delay_in_music(1);
            i = 0;
            break;
        }
        else if(m == music[i+1][0])
        {
            TR0 = 1;
            delay_in_music(2);
            TR0 = 0;
            pause();
            i++;
        }
        else
        {
            TR0 = 1;
            delay_in_music(n);
            TR0 = 0;
            pause();
            i++;
        }
    }
}

// 游戏相关函数
void initGame()
{
    // 初始化蛇的位置和方向
    game.length = 3;
    game.direction = 1;  // 初始向右移动
    game.score = 0;
    game.game_over = 0;
    
    // 设置蛇的初始位置
    game.x[0] = 1;
    game.y[0] = 10;
    game.x[1] = 0;
    game.y[1] = 10;
    game.x[2] = 0;
    game.y[2] = 9;
    
    // 生成第一个食物
    game.food_x = 3;
    game.food_y = 10;
}

void generateFood()
{
    bit valid;
    unsigned char i;
    
    do
    {
        valid = 1;
        game.food_x = rand() % SCREEN_WIDTH;
        game.food_y = rand() % SCREEN_HEIGHT;
        
        // 检查是否与蛇身重叠
        for(i = 0; i < game.length; i++)
        {
            if(game.food_x == game.x[i] && game.food_y == game.y[i])
            {
                valid = 0;
                break;
            }
        }
    } while(!valid);
}

void updateGame()
{
    unsigned char i;
    
    // 移动蛇身
    for(i = game.length - 1; i > 0; i--)
    {
        game.x[i] = game.x[i-1];
        game.y[i] = game.y[i-1];
    }
    
    // 移动蛇头
    switch(game.direction)
    {
        case 0: game.y[0]--; break;  // 上
        case 1: game.x[0]++; break;  // 右
        case 2: game.y[0]++; break;  // 下
        case 3: game.x[0]--; break;  // 左
    }
    
    // 检查是否吃到食物
    if(game.x[0] == game.food_x && game.y[0] == game.food_y)
    {
        game.length++;
        game.score++;
        play(eatFoodSound);
        generateFood();
    }
    
    // 检查碰撞
    if(game.x[0] >= SCREEN_WIDTH || game.y[0] >= SCREEN_HEIGHT)
    {
        game.game_over = 1;
        return;
    }
    
    // 检查是否撞到自己
    for(i = 1; i < game.length; i++)
    {
        if(game.x[0] == game.x[i] && game.y[0] == game.y[i])
        {
            game.game_over = 1;
            return;
        }
    }
}

void updateDisplay()
{
    unsigned char i, j;
    
    // 清空显示缓存
    for(i = 0; i < SCREEN_HEIGHT; i++)
        for(j = 0; j < SCREEN_WIDTH; j++)
            display_buffer[i][j] = 0;
    
    // 绘制蛇
    for(i = 0; i < game.length; i++)
        display_buffer[game.y[i]][game.x[i]] = 1;
    
    // 绘制食物
    display_buffer[game.food_y][game.food_x] = 2;
    
    // 更新LCD显示
    LCD_WriteCmd(0x80);  // 设置显示位置
    for(i = 0; i < SCREEN_HEIGHT; i++)
    {
        for(j = 0; j < SCREEN_WIDTH; j++)
        {
            if(display_buffer[i][j] == 1)
                LCD_WriteData('*');  // 蛇身
            else if(display_buffer[i][j] == 2)
                LCD_WriteData('@');  // 食物
            else
                LCD_WriteData(' ');  // 空白
        }
    }
}

// 按键扫描函数
unsigned char keyscan()
{
    unsigned char key = 16;  // 默认无按键
    
    if(!KEY1) key = 0;
    else if(!KEY2) key = 1;
    else if(!KEY3) key = 2;
    else if(!KEY4) key = 3;
    
    return key;
}

void main()
{
    unsigned char key;
    
    // 初始化
    LCD_Init();
    Timer0_Init();
    initGame();
    play(gameStartMusic);
    
    // 主游戏循环
    while(1)
    {
        if(!game.game_over)
        {
            // 按键处理
            key = keyscan();
            switch(key)
            {
                case 0:  // 上
                    if(game.direction != 2) game.direction = 0;
                    break;
                case 1:  // 右
                    if(game.direction != 3) game.direction = 1;
                    break;
                case 2:  // 下
                    if(game.direction != 0) game.direction = 2;
                    break;
                case 3:  // 左
                    if(game.direction != 1) game.direction = 3;
                    break;
            }
            
            // 更新游戏状态
            updateGame();
            updateDisplay();
            delay_ms(GAME_SPEED);
        }
        else
        {
            // 游戏结束处理
            play(gameOverMusic);
            LCD_WriteCmd(0x80);
            LCD_WriteData('G');
            LCD_WriteData('A');
            LCD_WriteData('M');
            LCD_WriteData('E');
            LCD_WriteData(' ');
            LCD_WriteData('O');
            LCD_WriteData('V');
            LCD_WriteData('E');
            LCD_WriteData('R');
            delay_ms(2000);
            
            // 重新开始游戏
            initGame();
            play(gameStartMusic);
        }
    }
} 