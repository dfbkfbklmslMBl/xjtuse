#ifndef __SNAKE_H__
#define __SNAKE_H__

#include <reg51.h>

// 游戏配置
#define SNAKE_LENGTH    4       // 初始蛇长度
#define MAX_LENGTH      64      // 最大蛇长度
#define GAME_SPEED      100     // 初始游戏速度
#define SPEED_STEP      5       // 每5分加快一次速度
#define MIN_SPEED       20      // 最快速度

// 端口定义
#define LED_DATA        P2      // LED数据端口
#define LED_CTRL        P3      // LED控制端口
#define DIGIT_SEG       P1      // 数码管段选端口
#define DIGIT_BIT       P0      // 数码管位选端口

// 方向定义
#define DIR_RIGHT       0
#define DIR_LEFT        1
#define DIR_UP          2
#define DIR_DOWN        3

// 函数声明
void delay_ms(unsigned char ms);
void generate_food(void);
void play_eat_sound(void);
void play_game_over_sound(void);
void display_score(void);
void update_display(void);
void check_key(void);
void move_snake(void);
void check_food(void);

#endif 