#include <reg51.h>
#include <intrins.h>

// 定义常量
#define SNAKE_LENGTH    4       // 初始蛇长度
#define MAX_LENGTH      64      // 最大蛇长度
#define GAME_SPEED      100     // 初始游戏速度
#define SPEED_STEP      5       // 每5分加快一次速度
#define MIN_SPEED       20      // 最快速度

// 定义端口
#define LED_DATA        P2      // LED数据端口
#define LED_CTRL        P3      // LED控制端口
#define DIGIT_SEG       P1      // 数码管段选端口
#define DIGIT_BIT       P0      // 数码管位选端口

// 定义变量
unsigned char snake_x[MAX_LENGTH];  // 蛇的X坐标数组
unsigned char snake_y[MAX_LENGTH];  // 蛇的Y坐标数组
unsigned char food_x;               // 食物X坐标
unsigned char food_y;               // 食物Y坐标
unsigned char direction;            // 移动方向
unsigned int score;                 // 得分
unsigned char game_over;            // 游戏结束标志
unsigned char display_buf[8];       // 显示缓冲区
unsigned char current_speed;        // 当前游戏速度

// 数码管段码表
const unsigned char seg_table[] = {
    0x3F,   // 0
    0x06,   // 1
    0x5B,   // 2
    0x4F,   // 3
    0x66,   // 4
    0x6D,   // 5
    0x7D,   // 6
    0x07,   // 7
    0x7F,   // 8
    0x6F    // 9
};

// 延时函数
void delay_ms(unsigned char ms) {
    unsigned char i, j;
    for (i = 0; i < ms; i++)
        for (j = 0; j < 110; j++);  // 延时约1ms
}

// 左移函数
unsigned char shift_left(unsigned char value, unsigned char shift) {
    return value << shift;
}

// 生成食物
void generate_food(void) {
    // 使用定时器生成随机数
    food_x = TL0 & 0x07;  // 限制在0-7范围内
    food_y = TH0 & 0x07;  // 限制在0-7范围内
}

// 播放音符
void play_note(unsigned char note, unsigned char duration) {
    DIGIT_BIT = note;  // 输出音调到P0口
    delay_ms(duration);
}

// 播放吃食物音效
void play_eat_sound(void) {
    play_note(0xC4, 0x50);  // 高音C
}

// 播放游戏结束音效
void play_game_over_sound(void) {
    play_note(0xB4, 0x30);  // 中音B
    play_note(0xA4, 0x30);  // 中音A
    play_note(0x94, 0x50);  // 中音G
}

// 显示分数
void display_score(void) {
    // 显示个位数
    DIGIT_SEG = seg_table[score % 10];
    DIGIT_BIT = 0xFE;
    delay_ms(1);
    
    // 显示十位数
    DIGIT_SEG = seg_table[score / 10];
    DIGIT_BIT = 0xFD;
    delay_ms(1);
}

// 更新显示
void update_display(void) {
    unsigned char i;
    
    // 清空显示缓冲区
    for (i = 0; i < 8; i++)
        display_buf[i] = 0;
    
    // 绘制蛇
    for (i = 0; i < SNAKE_LENGTH; i++) {
        display_buf[snake_y[i]] |= shift_left(1, snake_x[i]);
    }
    
    // 绘制食物
    display_buf[food_y] |= shift_left(1, food_x);
    
    // 更新LED显示
    for (i = 0; i < 8; i++) {
        LED_CTRL = i;
        LED_DATA = display_buf[i];
        delay_ms(1);
    }
}

// 检查按键
void check_key(void) {
    unsigned char key = ~P1;  // 读取按键状态
    
    if (key & 0x01) direction = 0;  // 右
    if (key & 0x02) direction = 1;  // 左
    if (key & 0x04) direction = 2;  // 上
    if (key & 0x08) direction = 3;  // 下
}

// 移动蛇
void move_snake(void) {
    unsigned char i;
    unsigned char new_x = snake_x[0];
    unsigned char new_y = snake_y[0];
    
    // 根据方向移动蛇头
    switch (direction) {
        case 0: new_x++; break;  // 右
        case 1: new_x--; break;  // 左
        case 2: new_y--; break;  // 上
        case 3: new_y++; break;  // 下
    }
    
    // 检查是否撞墙
    if (new_x >= 8 || new_y >= 8) {
        game_over = 1;
        return;
    }
    
    // 移动蛇身
    for (i = SNAKE_LENGTH - 1; i > 0; i--) {
        snake_x[i] = snake_x[i-1];
        snake_y[i] = snake_y[i-1];
    }
    
    // 更新蛇头位置
    snake_x[0] = new_x;
    snake_y[0] = new_y;
}

// 检查是否吃到食物
void check_food(void) {
    if (snake_x[0] == food_x && snake_y[0] == food_y) {
        play_eat_sound();
        score++;
        
        // 检查是否需要调整速度
        if (score % SPEED_STEP == 0) {
            if (current_speed > MIN_SPEED)
                current_speed -= SPEED_STEP;
            else
                current_speed = MIN_SPEED;
        }
        
        generate_food();
    }
}

// 主函数
void main(void) {
    unsigned char i;
    
    // 初始化蛇的位置
    for (i = 0; i < SNAKE_LENGTH; i++) {
        snake_x[i] = 4;  // 初始X坐标
        snake_y[i] = 4;  // 初始Y坐标
    }
    
    // 初始化游戏参数
    direction = 0;      // 初始向右移动
    score = 0;
    game_over = 0;
    current_speed = GAME_SPEED;
    
    // 生成第一个食物
    generate_food();
    
    // 游戏主循环
    while (!game_over) {
        move_snake();
        check_food();
        update_display();
        display_score();
        delay_ms(current_speed);
        check_key();
    }
    
    // 游戏结束处理
    play_game_over_sound();
    while (1);  // 游戏结束，停止运行
} 