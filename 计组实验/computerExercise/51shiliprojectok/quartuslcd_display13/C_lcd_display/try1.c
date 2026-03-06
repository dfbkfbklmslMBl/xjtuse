#include <reg51.h> 
#include <string.h> 
#include <stdio.h> 
#include <stdlib.h>
#define uchar unsigned char
#define unit unsigned int 

/********************/
sbit sound=P1^3;
sbit rs = P1 ^ 0; //,rs  1 , 0 
sbit rw = P1 ^ 1; // LCD §ջ 1  LCD, 0 §ՠLCD
sbit en = P1 ^ 2;
void ys(int i)
{
	int t;
	for(;i>= 1;i--)
	{
		for(t=120;t>1;t--)
		{
			;
		}
	}
}


void dm()
{
	P0 = 0xff;
	rs =0;
	rw= 1;
	en = 1;
	while(P0 & 0x80)
		;
	en = 0;
}

void ddata(int x,uchar DATA)
{
	dm();
	ys(20);
	P0 = DATA;
	rw=0;
	rs = x;
	en = 1;
	en = 0;
}

void lcd1602() 
{ 
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

/************************************ *******************************/
void delay_in_key(uchar z) 
{ 
	uchar x, y; 
	for (x = z; x > 0; x--) 
		for (y = 110; y > 0; y--) 
			; 
}

uchar keyscan() 
{ 
	uchar row, 
	col, i; 
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
/************************************ *******************************/
sbit beepIO = P1 ^ 3; 
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
					{0xFF, 0x81}
}; 

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
			delay_in_music(2); 
			i++; 
		} 
		else if (m == 0xFF) 
		{ 
			TR0 = 0; 
			delay_in_music(1); 
			i = 0; break; 
		} 
		else if (m == music[i + 1][0]) 
		{ 
			TR0 = 1; 
			delay_in_music(2); 
			TR0 = 0; pause();
			i++; 	
		} 
		else 
		{ 
			TR0 = 1; 
			delay_in_music(2); 
			i++; 
		} 
	} 
}
/************************************ *******************************/
int is_start = 0; //0¦ı
int level = 0; //
int x=0; //¦ˠ
int y=0; 
int good = 0; 
int score = 0; 
int keys[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}; // 1-143-021-247-431-3411-841-4415-1216 ¦Ġ
int key = 16; 
int map[3][4] = { {7, 6, 5, 4}, {11, 10, 9, 8}, {15, 14, 13, 12}}; 
uchar code startGameMusic[][2] = {{0, 4}, {23, 2}, {19, 2}, {21, 2}, {23, 2}, {0xFF, 0xFF}}; 
uchar code endGameMusic[][2] = {{0, 4}, {23, 2}, {19, 2}, {21, 2}, {23, 2}, {0xFF, 0xFF}}; 
uchar code pressKeySound[][2] = {{0, 4},{23, 2}, {0xFF, 0xFF}}; //§¹ 
int code leftInputPos = 7; //¦ˍ
int currentInputPos = 7; //¦ˍ
int code rightInputPos = 20; //¦ˍ
int can_input = 0; //
void showStartInterface(); // 
void showLevelOrEndInterface(); //
void showEndInterface(); // 
void showLevelInterface(); // 
void showLevel1Interface(); //1 
void showLevel2Interface(); //2 
void showToBeContinued(); //¦č
void showAnswer(); //
void deleteCurrentChar(); // 
void inputChar(int key); // 
void showRule1Interface(); //1  
void showRule2Interface(); //2 
void updateDisplay(uchar newLines[4][20]); //newLines  

main() 
{ 
	showStartInterface(); // 
	while (1) 
	{ 
		key = keys[keyscan()]; // 
		switch (key) 
		{  
			case 3: // 
				showLevelOrEndInterface(); 
				break;
			case 2: //
				showLevelInterface(); 
				break; 
			case 1: // 
				showAnswer(); 
				break; 
			case 0: // 
				deleteCurrentChar(); 
				break; 
			case 12: //1 
				showRule2Interface(); 
				break; 
			case 13: //2 
				showRule1Interface(); 
				break; 
			case 16: //16¦Ġ
				break; 
			default: // 
				inputChar(key); 
				break;
		} 
		if (key != 3 && key != 16) // 
		{
			 play(pressKeySound); 
		} 
	} 
}

void showStartInterface() // 
{ 
	uchar code newLines[4][20] = {"Pcker Counting Game", "Welcome!", "Key43-44: key rules", "Key11: start"}; 
	updateDisplay(newLines); 
	play(startGameMusic); 
}	

void showLevelOrEndInterface() // 
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

void showEndInterface() // 
{ 
	uchar code newLines[4][20] = {"See you!", "", "", "Key11: start"}; 
	updateDisplay(newLines); 
	play(endGameMusic); 
}		

void showLevelInterface() // 
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

void showLevel1Interface() //1 
{ 
	uchar code newLines[4][20] = {"Level 1", "Numbers: 1 1 1 8", "Input: ", "Key13: answer"}; 	updateDisplay(newLines); 
} 
void showLevel2Interface() //2 
{ 
	uchar code newLines[4][20] = {"Level 2", "Numbers: 5 6 7 8", "Input: ", "Key13: answer"}; 	updateDisplay(newLines); 
}

void showToBeContinued() // 
{ 
	uchar code newLines[4][20] = {"To be continued.", "", "", "Key11: end"}; 	updateDisplay(newLines); 
}
 
void showAnswer() // 
{ 
	can_input = 0; 
	xianshi1(0, 9, "Key12: next"); 
	switch (level) 
	{ 
		case 1: 
			xianshi1(3, 0, "Reference: (1+1+1)x8"); 
			break; 
		case 2: 
			xianshi1(3, 0, "Reference: 6x8/(7-5)"); 
			break; 
	} 
}

void deleteCurrentChar() // 
{ 
	if (currentInputPos - 1 >= leftInputPos && can_input == 1) 
	{ 
		xianshi(2, currentInputPos - 1, ' '); 
		currentInputPos -= 1; 
	} 
}

void inputChar(int key) // 
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
					xianshi(2, currentInputPos, '1'); 
				else 
					xianshi(2, currentInputPos, '6'); 
				break; 
			case 5: 
				if (level == 1) 
					xianshi(2, currentInputPos, '1'); 
				else 
					xianshi(2, currentInputPos, '7'); 
				break; 
				case 4: 
					if (level == 1) 
						xianshi(2, currentInputPos, '8'); 
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

void showRule1Interface() // 
{ 
	uchar code newLines[4][20] = {"Key11: start/end", "Key12: next level", "Key13: get answer", "Key14: delete char"}; 
	updateDisplay(newLines); 
}

void showRule2Interface() //2 
{ 
	uchar code newLines[4][20] = {"Key21-24: num1-4", "Key31-42: +-x/()", "Key43-44: key rules", "Have a good time!"}; 
	updateDisplay(newLines); 
}
void updateDisplay(uchar newLines[4][20]) // 
{ 
	int i; 
	ys(15); 
	lcd1602(); 
	for (i = 0; i < 4; i++) 
	{ 
		xianshi1(i, 0, newLines[i]); 
	} 
}