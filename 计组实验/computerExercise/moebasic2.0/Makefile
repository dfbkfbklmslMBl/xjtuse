# 编译器设置
CC = sdcc
CFLAGS = -c -I./src
LDFLAGS = -o

# 目标文件
TARGET = snake
SRCS = src/snake.c
OBJS = $(SRCS:.c=.o)

# 默认目标
all: $(TARGET).hex

# 编译规则
%.o: %.c
	$(CC) $(CFLAGS) $< -o $@

$(TARGET).hex: $(OBJS)
	$(CC) $(LDFLAGS) $(TARGET) $(OBJS)
	packihx $(TARGET).ihx > $(TARGET).hex

# 清理
clean:
	rm -f $(OBJS) $(TARGET).ihx $(TARGET).hex $(TARGET).lk $(TARGET).map $(TARGET).mem $(TARGET).rst

.PHONY: all clean 