; 贪吃蛇游戏主程序
; 作者：AI Assistant
; 日期：2024-03-13

; 定义常量
SNAKE_LENGTH    EQU     4       ; 初始蛇长度
MAX_LENGTH      EQU     64      ; 最大蛇长度
GAME_SPEED      EQU     100     ; 初始游戏速度
SPEED_STEP      EQU     5       ; 每5分加快一次速度
MIN_SPEED       EQU     20      ; 最快速度
LED_DATA        EQU     P2      ; LED数据端口
LED_CTRL        EQU     P3      ; LED控制端口
DIGIT_SEG       EQU     P1      ; 数码管段选端口
DIGIT_BIT       EQU     P0      ; 数码管位选端口

; 定义变量
ORG     30H
SNAKE_X:    DS      MAX_LENGTH  ; 蛇的X坐标数组
SNAKE_Y:    DS      MAX_LENGTH  ; 蛇的Y坐标数组
FOOD_X:     DS      1          ; 食物X坐标
FOOD_Y:     DS      1          ; 食物Y坐标
DIRECTION:  DS      1          ; 移动方向
SCORE:      DS      2          ; 得分
GAME_OVER:  DS      1          ; 游戏结束标志
DISPLAY_BUF: DS     8          ; 显示缓冲区
CURRENT_SPEED: DS   1          ; 当前游戏速度

; 数码管段码表
ORG     100H
SEG_TABLE:
    DB      3FH    ; 0
    DB      06H    ; 1
    DB      5BH    ; 2
    DB      4FH    ; 3
    DB      66H    ; 4
    DB      6DH    ; 5
    DB      7DH    ; 6
    DB      07H    ; 7
    DB      7FH    ; 8
    DB      6FH    ; 9

; 主程序
ORG     0000H
    LJMP    MAIN

; 主程序入口
MAIN:
    ; 初始化
    MOV     R0, #SNAKE_X      ; 初始化蛇的位置
    MOV     R1, #SNAKE_Y
    MOV     R2, #SNAKE_LENGTH
    MOV     R3, #4            ; 初始X坐标
    MOV     R4, #4            ; 初始Y坐标
    
    ; 初始化游戏参数
    MOV     DIRECTION, #0     ; 初始向右移动
    MOV     SCORE, #0
    MOV     SCORE+1, #0
    MOV     GAME_OVER, #0
    MOV     CURRENT_SPEED, #GAME_SPEED
    
    ; 生成第一个食物
    LCALL   GENERATE_FOOD
    
GAME_LOOP:
    ; 检查游戏是否结束
    MOV     A, GAME_OVER
    JNZ     GAME_END
    
    ; 移动蛇
    LCALL   MOVE_SNAKE
    
    ; 检查是否吃到食物
    LCALL   CHECK_FOOD
    
    ; 更新显示
    LCALL   UPDATE_DISPLAY
    LCALL   DISPLAY_SCORE
    
    ; 延时
    MOV     R7, CURRENT_SPEED
    LCALL   DELAY
    
    ; 检查按键
    LCALL   CHECK_KEY
    
    SJMP    GAME_LOOP

GAME_END:
    ; 游戏结束处理
    LCALL   PLAY_GAME_OVER_SOUND
    SJMP    $

; 移动蛇
MOVE_SNAKE:
    PUSH    0
    PUSH    1
    PUSH    2
    
    ; 保存蛇头位置
    MOV     R0, #SNAKE_X
    MOV     R1, #SNAKE_Y
    MOV     A, @R0            ; 获取当前X坐标
    MOV     R2, A
    MOV     A, @R1            ; 获取当前Y坐标
    MOV     R3, A
    
    ; 根据方向移动
    MOV     A, DIRECTION
    JZ      MOVE_RIGHT
    DEC     A
    JZ      MOVE_LEFT
    DEC     A
    JZ      MOVE_UP
    DEC     A
    JZ      MOVE_DOWN
    
MOVE_RIGHT:
    INC     R2
    SJMP    UPDATE_POSITION
    
MOVE_LEFT:
    DEC     R2
    SJMP    UPDATE_POSITION
    
MOVE_UP:
    DEC     R3
    SJMP    UPDATE_POSITION
    
MOVE_DOWN:
    INC     R3
    
UPDATE_POSITION:
    ; 检查是否撞墙
    MOV     A, R2
    JB      ACC.7, SET_GAME_OVER
    CJNE    A, #8, CHECK_Y
    SJMP    SET_GAME_OVER
    
CHECK_Y:
    MOV     A, R3
    JB      ACC.7, SET_GAME_OVER
    CJNE    A, #8, UPDATE_SNAKE
    SJMP    SET_GAME_OVER
    
UPDATE_SNAKE:
    ; 更新蛇的位置
    MOV     @R0, R2
    MOV     @R1, R3
    
    POP     2
    POP     1
    POP     0
    RET
    
SET_GAME_OVER:
    MOV     GAME_OVER, #1
    POP     2
    POP     1
    POP     0
    RET

; 生成食物
GENERATE_FOOD:
    PUSH    0
    PUSH    1
    
    ; 使用定时器生成随机数
    MOV     A, TL0
    ANL     A, #07H           ; 限制在0-7范围内
    MOV     FOOD_X, A
    
    MOV     A, TH0
    ANL     A, #07H           ; 限制在0-7范围内
    MOV     FOOD_Y, A
    
    POP     1
    POP     0
    RET

; 检查是否吃到食物
CHECK_FOOD:
    PUSH    0
    PUSH    1
    
    MOV     R0, #SNAKE_X
    MOV     A, @R0            ; 获取蛇头X坐标
    CJNE    A, FOOD_X, CHECK_FOOD_END
    
    MOV     R1, #SNAKE_Y
    MOV     A, @R1            ; 获取蛇头Y坐标
    CJNE    A, FOOD_Y, CHECK_FOOD_END
    
    ; 吃到食物
    LCALL   PLAY_EAT_SOUND
    LCALL   INCREASE_SCORE
    LCALL   GENERATE_FOOD
    
CHECK_FOOD_END:
    POP     1
    POP     0
    RET

; 增加分数
INCREASE_SCORE:
    PUSH    0
    PUSH    1
    
    MOV     R0, #SCORE
    MOV     A, @R0
    ADD     A, #1
    MOV     @R0, A
    INC     R0
    MOV     A, @R0
    ADDC    A, #0
    MOV     @R0, A
    
    ; 检查是否需要调整速度
    MOV     A, @R0
    MOV     B, #SPEED_STEP
    DIV     AB
    JZ      INCREASE_SCORE_END
    
    ; 调整速度
    MOV     A, CURRENT_SPEED
    SUBB    A, #SPEED_STEP
    JC      SET_MIN_SPEED
    MOV     CURRENT_SPEED, A
    SJMP    INCREASE_SCORE_END
    
SET_MIN_SPEED:
    MOV     CURRENT_SPEED, #MIN_SPEED
    
INCREASE_SCORE_END:
    POP     1
    POP     0
    RET

; 显示分数
DISPLAY_SCORE:
    PUSH    0
    PUSH    1
    PUSH    2
    
    ; 显示个位数
    MOV     R0, #SCORE
    MOV     A, @R0
    ANL     A, #0FH
    MOV     R1, A
    MOV     A, R1
    MOV     DPTR, #SEG_TABLE
    MOVC    A, @A+DPTR
    MOV     DIGIT_SEG, A
    MOV     DIGIT_BIT, #0FEH
    LCALL   DELAY_1MS
    
    ; 显示十位数
    MOV     A, @R0
    SWAP    A
    ANL     A, #0FH
    MOV     R1, A
    MOV     A, R1
    MOVC    A, @A+DPTR
    MOV     DIGIT_SEG, A
    MOV     DIGIT_BIT, #0FDH
    LCALL   DELAY_1MS
    
    POP     2
    POP     1
    POP     0
    RET

; 检查按键
CHECK_KEY:
    PUSH    0
    
    ; 检查P1口按键
    MOV     A, P1
    CPL     A
    JZ      CHECK_KEY_END
    
    ; 根据按键更新方向
    JB      ACC.0, SET_RIGHT
    JB      ACC.1, SET_LEFT
    JB      ACC.2, SET_UP
    JB      ACC.3, SET_DOWN
    
CHECK_KEY_END:
    POP     0
    RET
    
SET_RIGHT:
    MOV     DIRECTION, #0
    SJMP    CHECK_KEY_END
    
SET_LEFT:
    MOV     DIRECTION, #1
    SJMP    CHECK_KEY_END
    
SET_UP:
    MOV     DIRECTION, #2
    SJMP    CHECK_KEY_END
    
SET_DOWN:
    MOV     DIRECTION, #3
    SJMP    CHECK_KEY_END

; 延时子程序
DELAY:
    PUSH    7
DELAY_LOOP:
    DJNZ    R7, DELAY_LOOP
    POP     7
    RET

; 播放音效
PLAY_EAT_SOUND:
    PUSH    0
    PUSH    1
    
    ; 设置音调
    MOV     R0, #0C4H         ; 高音C
    MOV     R1, #50H          ; 持续时间
    LCALL   PLAY_NOTE
    
    POP     1
    POP     0
    RET

PLAY_GAME_OVER_SOUND:
    PUSH    0
    PUSH    1
    
    ; 播放游戏结束音效序列
    MOV     R0, #0B4H         ; 中音B
    MOV     R1, #30H          ; 持续时间
    LCALL   PLAY_NOTE
    
    MOV     R0, #0A4H         ; 中音A
    MOV     R1, #30H
    LCALL   PLAY_NOTE
    
    MOV     R0, #94H          ; 中音G
    MOV     R1, #50H
    LCALL   PLAY_NOTE
    
    POP     1
    POP     0
    RET

; 播放音符
PLAY_NOTE:
    PUSH    0
    PUSH    1
    PUSH    2
    
    ; 设置MusicBlock模块
    MOV     A, R0
    MOV     P0, A            ; 输出音调到P0口
    
    ; 延时
    MOV     R2, R1
NOTE_DELAY:
    LCALL   DELAY_1MS
    DJNZ    R2, NOTE_DELAY
    
    POP     2
    POP     1
    POP     0
    RET

; 更新显示
UPDATE_DISPLAY:
    PUSH    0
    PUSH    1
    PUSH    2
    PUSH    3
    
    ; 清空显示缓冲区
    MOV     R0, #DISPLAY_BUF
    MOV     R1, #8
    MOV     A, #0
CLEAR_BUF:
    MOV     @R0, A
    INC     R0
    DJNZ    R1, CLEAR_BUF
    
    ; 绘制蛇
    MOV     R0, #SNAKE_X
    MOV     R1, #SNAKE_Y
    MOV     R2, #SNAKE_LENGTH
DRAW_SNAKE:
    MOV     A, @R0            ; 获取X坐标
    MOV     R3, A
    MOV     A, @R1            ; 获取Y坐标
    PUSH    0
    PUSH    1
    PUSH    2
    
    ; 计算LED位置
    MOV     R0, #DISPLAY_BUF
    ADD     A, R0             ; 获取对应行的地址
    MOV     R0, A
    MOV     A, #1
    MOV     B, R3
    LCALL   SHIFT_LEFT        ; 左移X位
    MOV     A, @R0
    ORL     A, B              ; 合并到显示缓冲区
    MOV     @R0, A
    
    POP     2
    POP     1
    POP     0
    INC     R0
    INC     R1
    DJNZ    R2, DRAW_SNAKE
    
    ; 绘制食物
    MOV     A, FOOD_Y
    MOV     R0, #DISPLAY_BUF
    ADD     A, R0
    MOV     R0, A
    MOV     A, #1
    MOV     B, FOOD_X
    LCALL   SHIFT_LEFT
    MOV     A, @R0
    ORL     A, B
    MOV     @R0, A
    
    ; 更新LED显示
    MOV     R0, #DISPLAY_BUF
    MOV     R1, #8
    MOV     R2, #0            ; 行计数器
UPDATE_LED:
    MOV     A, R2
    MOV     LED_CTRL, A       ; 选择行
    MOV     A, @R0
    MOV     LED_DATA, A       ; 输出数据
    LCALL   DELAY_1MS         ; 延时1ms
    
    INC     R0
    INC     R2
    DJNZ    R1, UPDATE_LED
    
    POP     3
    POP     2
    POP     1
    POP     0
    RET

; 左移子程序
SHIFT_LEFT:
    PUSH    0
    MOV     R0, B
    JZ      SHIFT_LEFT_END
SHIFT_LEFT_LOOP:
    RL      A
    DJNZ    R0, SHIFT_LEFT_LOOP
SHIFT_LEFT_END:
    POP     0
    RET

; 1ms延时子程序
DELAY_1MS:
    PUSH    7
    MOV     R7, #1
DELAY_1MS_LOOP:
    DJNZ    R7, DELAY_1MS_LOOP
    POP     7
    RET

END 