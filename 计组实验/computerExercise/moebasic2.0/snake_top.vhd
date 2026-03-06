library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity snake_top is
    Port ( 
        clk : in STD_LOGIC;                     -- 50MHz时钟输入
        rst : in STD_LOGIC;                     -- 复位信号
        btn : in STD_LOGIC_VECTOR(3 downto 0);  -- 方向按键
        led_row : out STD_LOGIC_VECTOR(7 downto 0);  -- LED矩阵行控制
        led_col : out STD_LOGIC_VECTOR(7 downto 0);  -- LED矩阵列控制
        seg_data : out STD_LOGIC_VECTOR(7 downto 0); -- 数码管段选
        seg_sel : out STD_LOGIC_VECTOR(1 downto 0);  -- 数码管位选
        buzzer : out STD_LOGIC                    -- 蜂鸣器输出
    );
end snake_top;

architecture Behavioral of snake_top is
    -- 时钟分频信号
    signal clk_div : STD_LOGIC_VECTOR(24 downto 0);
    signal game_clk : STD_LOGIC;
    
    -- 游戏状态
    type game_state is (IDLE, PLAYING, GAME_OVER);
    signal current_state : game_state;
    
    -- 蛇的位置
    type snake_array is array (0 to 63) of STD_LOGIC_VECTOR(3 downto 0);
    signal snake_x : snake_array;
    signal snake_y : snake_array;
    signal snake_length : STD_LOGIC_VECTOR(5 downto 0);
    
    -- 食物位置
    signal food_x : STD_LOGIC_VECTOR(2 downto 0);
    signal food_y : STD_LOGIC_VECTOR(2 downto 0);
    
    -- 移动方向
    signal direction : STD_LOGIC_VECTOR(1 downto 0);
    
    -- 分数
    signal score : STD_LOGIC_VECTOR(7 downto 0);
    
    -- 显示控制
    signal display_counter : STD_LOGIC_VECTOR(2 downto 0);
    signal led_matrix : STD_LOGIC_VECTOR(63 downto 0);
    
    -- 音效控制
    signal sound_counter : STD_LOGIC_VECTOR(19 downto 0);
    signal sound_enable : STD_LOGIC;
    
    -- 按键消抖
    signal btn_debounce : STD_LOGIC_VECTOR(3 downto 0);
    signal btn_prev : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    -- 时钟分频
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                clk_div <= (others => '0');
                game_clk <= '0';
            else
                clk_div <= clk_div + 1;
                if clk_div = 24999999 then  -- 50MHz分频到1Hz
                    clk_div <= (others => '0');
                    game_clk <= not game_clk;
                end if;
            end if;
        end if;
    end process;
    
    -- 按键消抖
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                btn_debounce <= (others => '0');
                btn_prev <= (others => '0');
            else
                btn_prev <= btn;
                if btn = btn_prev then
                    btn_debounce <= btn;
                end if;
            end if;
        end if;
    end process;
    
    -- 游戏主状态机
    process(game_clk)
    begin
        if rising_edge(game_clk) then
            if rst = '1' then
                current_state <= IDLE;
                snake_length <= "000100";  -- 初始长度为4
                score <= (others => '0');
                direction <= "00";  -- 初始向右
                sound_enable <= '0';
            else
                case current_state is
                    when IDLE =>
                        if btn_debounce(0) = '1' then
                            current_state <= PLAYING;
                        end if;
                        
                    when PLAYING =>
                        -- 移动蛇
                        for i in 63 downto 1 loop
                            snake_x(i) <= snake_x(i-1);
                            snake_y(i) <= snake_y(i-1);
                        end loop;
                        
                        -- 根据方向移动蛇头
                        case direction is
                            when "00" => snake_x(0) <= snake_x(0) + 1;  -- 右
                            when "01" => snake_x(0) <= snake_x(0) - 1;  -- 左
                            when "10" => snake_y(0) <= snake_y(0) - 1;  -- 上
                            when "11" => snake_y(0) <= snake_y(0) + 1;  -- 下
                        end case;
                        
                        -- 检查是否吃到食物
                        if snake_x(0) = food_x and snake_y(0) = food_y then
                            snake_length <= snake_length + 1;
                            score <= score + 1;
                            sound_enable <= '1';
                            -- 生成新食物
                            food_x <= food_x + 1;
                            food_y <= food_y + 1;
                        end if;
                        
                        -- 检查是否撞墙
                        if snake_x(0) = "111" or snake_y(0) = "111" then
                            current_state <= GAME_OVER;
                        end if;
                        
                        -- 更新方向
                        if btn_debounce(0) = '1' then direction <= "00"; end if;
                        if btn_debounce(1) = '1' then direction <= "01"; end if;
                        if btn_debounce(2) = '1' then direction <= "10"; end if;
                        if btn_debounce(3) = '1' then direction <= "11"; end if;
                        
                    when GAME_OVER =>
                        if btn_debounce(0) = '1' then
                            current_state <= IDLE;
                            snake_length <= "000100";
                            score <= (others => '0');
                            direction <= "00";
                        end if;
                end case;
            end if;
        end if;
    end process;
    
    -- LED矩阵显示控制
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                display_counter <= (others => '0');
                led_row <= (others => '0');
                led_col <= (others => '0');
            else
                display_counter <= display_counter + 1;
                -- 行扫描
                case display_counter is
                    when "000" => led_row <= "11111110";
                    when "001" => led_row <= "11111101";
                    when "010" => led_row <= "11111011";
                    when "011" => led_row <= "11110111";
                    when "100" => led_row <= "11101111";
                    when "101" => led_row <= "11011111";
                    when "110" => led_row <= "10111111";
                    when "111" => led_row <= "01111111";
                end case;
                -- 列数据
                led_col <= led_matrix(conv_integer(display_counter) * 8 + 7 downto 
                                    conv_integer(display_counter) * 8);
            end if;
        end if;
    end process;
    
    -- 数码管显示
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                seg_sel <= "00";
                seg_data <= (others => '0');
            else
                seg_sel <= seg_sel + 1;
                case seg_sel is
                    when "00" => seg_data <= "11000000";  -- 0
                    when "01" => seg_data <= "11111001";  -- 1
                    when "10" => seg_data <= "10100100";  -- 2
                    when "11" => seg_data <= "10110000";  -- 3
                end case;
            end if;
        end if;
    end process;
    
    -- 音效控制
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                sound_counter <= (others => '0');
                buzzer <= '0';
            else
                if sound_enable = '1' then
                    sound_counter <= sound_counter + 1;
                    if sound_counter = 999999 then
                        sound_counter <= (others => '0');
                        sound_enable <= '0';
                        buzzer <= '0';
                    else
                        buzzer <= not buzzer;
                    end if;
                else
                    buzzer <= '0';
                end if;
            end if;
        end if;
    end process;
    
end Behavioral; 