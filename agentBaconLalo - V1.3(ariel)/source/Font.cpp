#include "Font.h"

CIwGxFont* font;
char lifes[2];
char coins[3];
char finalScore[50];

//-----------------------------------------------------------------------------
void FontInit()
{
	IwGxInit();
	IwResManagerInit();
	IwGxFontInit();
	IwGetResManager()->LoadGroup("IwGxFontBasic.group");
	font = (CIwGxFont*)IwGetResManager()->GetResNamed("font", "CIwGxFont");
	IwGxFontSetFont(font);
	IwGxFontSetCol(0xff000000);
}
//-----------------------------------------------------------------------------
void FontShutDown()
{
	IwGxFontTerminate();
    IwResManagerTerminate();
}
//-----------------------------------------------------------------------------
bool FontUpdate()
{
	return true;
}
//-----------------------------------------------------------------------------
void FontLifeRender()
{
	IwGxFontSetRect(CIwRect(50,5,50,100));
	sprintf(lifes,"%d",g_Input.getLifes());
	IwGxFontDrawText(lifes);
}

void FontCoinsRender()
{
	IwGxFontSetRect(CIwRect(50,55,200,100));
	sprintf(coins,"%d",g_Input.getCoins());
	IwGxFontDrawText(coins);
}

void gameOverRender()
{
	IwGxFontSetRect(CIwRect(330,260,200,100));
	sprintf(finalScore,"SCORE:  %d",(g_Input.getCoins())+(g_Input.getLifes()*1000)+(g_Input.getTotalTime()));
	IwGxFontDrawText(finalScore);
}

void gameFinalRender()
{
	IwGxFontSetRect(CIwRect(300,500,200,100));
	sprintf(finalScore,"SCORE:  %d",(g_Input.getCoins())+(g_Input.getLifes()*1000)+(g_Input.getTotalTime()));
	IwGxFontDrawText(finalScore);
}
