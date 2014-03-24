#include "s3e.h"
#include "IwDebug.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwTexture.h"
#include "IwMaterial.h"
#include "main.h"
#include "Input.h"
#include "Font.h"
#include "time.h"
#include "sprites.h"
#include "corazones.h"
#include "claws.h"
#include "Coin.h"
#include "MiniCoin.h"
#include "Tnt.h"
#include "Tank.h"
#include "Chuletas.h"
#include "s3eOSExec.h"

// Globlal for buttons link list
ExButtons*      g_ButtonsHead = NULL;
ExButtons*      g_ButtonsTail = NULL;
CursorKeyCodes  g_Cursorkey = EXCURSOR_NONE;
static CIwMaterial* g_CursorMaterial = NULL;


spritesManager* spriteManager = new spritesManager();
int probObs;
int num;
int size = 0;
int part = 1;
corazones* corazon;
claws* garras[10];
Tnt* tnts[10];
Coin* maxiCoin;
MiniCoin* miniCoins[20];
Tank* tank;
int tankStep = 2;
Chuletas* chuletas;
int chuletasStep = 2;
bool menuB = true;
bool initMenu = true;

// Externs for functions which examples must implement
void MenuInit();
void MenuShutDown();
void MenuRender();
void MusicInit(char*);
void MusicShutDown();
void MusicRender();
void FondoInit();
void BaconInit();
void FondoShutDown();
void BaconShutDown();
void FondoRender();
void BaconRender();
bool FondoUpdate();
bool BaconUpdate();
bool BaconCollide(int16 x1, int16 x2, int16 y1, int16 y2);
bool BaconCollide2(int16 x1, int16 x2, int16 y1, int16 y2, int8 s);
void BaconBlend();
void LifeStatusInit();
void LifeStatusShutDown();
void LifeStatusRender();
void SplashInit();
bool SplashUpdate(char* t);
void SplashRender();
void SplashShutDown();
void gameOver();
void gameFinalRender();
void endOfGame();
void menu();
void ciclo();

// Attempt to lock to 25 frames per second
#define MS_PER_FRAME (1000 / 25)

// Helper function to display message for Debug-Only Examples
void DisplayMessage(const char* strmessage)
{
}

CIwSVec2* AllocClientScreenRectangle()
{
    CIwSVec2* pCoords = IW_GX_ALLOC(CIwSVec2, 4);
    pCoords[0].x = 0; pCoords[0].y = 0;
    pCoords[1].x = 0; pCoords[1].y = (int16)IwGxGetScreenHeight();
    pCoords[2].x = (int16)IwGxGetScreenWidth(); pCoords[2].y = 0;
    pCoords[3].x = (int16)IwGxGetScreenWidth(); pCoords[3].y = (int16)IwGxGetScreenHeight();

    return pCoords;
}

int obstaclesTimer = 0;	
int	ProbRuleta = 10;

void generaHearth()
{
	if (g_Input.corazonReady && corazon->animXRight<=0)
	{
		spriteManager->removeSprite(corazon);
		corazon->setY(rand()%(g_Input.getSurfaceHeight()-64));
		corazon->setX(g_Input.getScreenWidth() + 200);
		spriteManager->addSprite(corazon);
		g_Input.corazonReady = false;
	}
}

void generaClaws(int prob)
{
	int x = rand()%prob;
	switch(x)
	{
	case 5:
		for (int i=0; i<10; i++)
		{
			if (garras[i]->animXRight<=0)
			{
				spriteManager->removeSprite(garras[i]);
				garras[i]->setY(rand()%(g_Input.getSurfaceHeight()-128));
				garras[i]->setX(g_Input.getScreenWidth() + 500);
				spriteManager->addSprite(garras[i]);
				break;
			}
		}
		break;
	default:
		break;
	}
}

void generaMiniCoins(int prob)
{
	int x = rand()%prob;
	switch(x)
	{
	case 5:
		for (int i=0; i<20; i++)
		{
			if (miniCoins[i]->animXRight<=0)
			{
				spriteManager->removeSprite(miniCoins[i]);
				miniCoins[i]->setY(rand()%(g_Input.getSurfaceHeight()-64));
				miniCoins[i]->setX(g_Input.getScreenWidth() + 500);
				spriteManager->addSprite(miniCoins[i]);
				break;
			}
		}
		break;
	default:
		break;
	}
}

void generaTnts(int prob)
{
	int x = rand()%prob;
	switch(x)
	{
	case 5:
		for (int i=0; i<10; i++)
		{
			if (tnts[i]->animXRight<=0)
			{
				spriteManager->removeSprite(tnts[i]);
				tnts[i]->setY(rand()%(g_Input.getSurfaceHeight()-128));
				tnts[i]->setX(g_Input.getScreenWidth() + 500);
				spriteManager->addSprite(tnts[i]);
				break;
			}
		}
		break;
	default:
		break;
	}
}

void generaTank(int prob)
{
	int x = rand()%prob;
	switch(x)
	{
	case 5:
		if (tank->animXRightT<=0)
		{
			//spriteManager->removeSprite(tank);
			tank->setY(g_Input.getScreenHeight()-280);
			tank->setX(g_Input.getScreenWidth() + 1000);
			//spriteManager->addSprite(tank);
			break;
		}
		break;
	default:
		break;
	}
}

void generaMaxiCoin()
{
	if (g_Input.maxiCoinReady && maxiCoin->animXRight<=0)
	{
		spriteManager->removeSprite(maxiCoin);
		maxiCoin->setY(rand()%(g_Input.getSurfaceHeight()-64));
		maxiCoin->setX(g_Input.getScreenWidth() + 200);
		spriteManager->addSprite(maxiCoin);
		g_Input.maxiCoinReady = false;
	}
}

void generaChuletas(int prob)
{
	int x = rand()%prob;
	switch(x)
	{
	case 5:
		if (chuletas->animXRight<=0)
		{
			//spriteManager->removeSprite(chuletas);
			chuletas->setY(rand()%(g_Input.getSurfaceHeight()-600));
			chuletas->setX(g_Input.getScreenWidth() + 1400);
			//spriteManager->addSprite(chuletas);
			break;
		}
		break;
	default:
		break;
	}
}

void insertaObstaculos()
{

	// Update the games sprite objects		
	spriteManager->update();
	chuletasStep++;
	if (chuletasStep >16)
		chuletasStep = 1;
	chuletas->update(chuletasStep);
	tankStep++;
	if (tankStep >16)
		tankStep = 1;
	tank->update(tankStep);

	switch(g_Input.part)
	{
	case 1:
		generaHearth();
		generaMaxiCoin();
		generaClaws(50);
		generaMiniCoins(30);
		//generaTank(40);
		break;
	case 2:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(30);
		//generaChuletas(40);
		break;
	case 3:
		generaHearth();
		generaMaxiCoin();
		generaClaws(50);
		generaMiniCoins(30);
		generaTnts(50);
		break;
	case 4:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(20);
		generaTnts(40);
		generaTank(50);
		break;
	case 5:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(20);
		generaTnts(40);
		generaTank(40);
		break;
	case 6:
		generaHearth();
		generaMaxiCoin();
		generaClaws(50);
		generaMiniCoins(20);
		generaTnts(50);
		generaTank(30);
		break;
	case 7:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(10);
		generaTnts(40);
		generaTank(30);
		break;
	case 8:
		generaHearth();
		generaMaxiCoin();
		generaClaws(50);
		generaMiniCoins(10);
		generaTnts(50);
		generaChuletas(70);
		g_Input.corazonReady = true;
		break;
	case 9:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(10);
		generaTnts(40);
		generaChuletas(30);
		g_Input.corazonReady = true;
		break;
	case 10:
		generaHearth();
		generaMaxiCoin();
		generaClaws(40);
		generaMiniCoins(10);
		generaTnts(40);
		generaChuletas(20);
		g_Input.corazonReady = true;
		break;
	default:
		endOfGame();
		break;
	}

	//check for collitions
	//claw collition
	for (int j=0; j<10; j++)
	{
		if (garras[j]!= NULL && garras[j]->animXLeft > 0)
		{
			if(BaconCollide(garras[j]->animXLeft+20, garras[j]->animXRight, garras[j]->animYTop, garras[j]->animYBottom))
			{
				g_Input.setLifes(g_Input.getLifes()-1);
				BaconBlend();
				if (g_Input.getSound())
					g_Input.playClash();
				garras[j]->animXLeft = garras[j]->animXLeft - 400;
				garras[j]->animXRight = garras[j]->animXRight - 400;
				
			}
		}
	}
	//miniCoins collition
	for (int j=0; j<20; j++)
	{
		if (miniCoins[j]!= NULL && miniCoins[j]->animXLeft > 0)
		{
			if(BaconCollide(miniCoins[j]->animXLeft, miniCoins[j]->animXRight, miniCoins[j]->animYTop, miniCoins[j]->animYBottom))
			{
				if (g_Input.getSound() && miniCoins[j]->s_MaterialCel->GetAnimCelID()==0)
					g_Input.playCoin();
				miniCoins[j]->setPause(false);
			}
		}
	}
	//heart collition
	if (corazon->animXLeft > 0)
	{
		if (BaconCollide(corazon->animXLeft, corazon->animXRight, corazon->animYTop, corazon->animYBottom))
		{
			g_Input.setLifes(g_Input.getLifes()+1);
			if (g_Input.getSound())
				g_Input.playLife();
			corazon->animXLeft = corazon->animXLeft - 400;
			corazon->animXRight = corazon->animXRight - 400;
		}
	}
	//tnt collition
	for (int j=0; j<10; j++)
	{
		if (tnts[j]!= NULL && tnts[j]->animXLeft > 0)
		{
			if(BaconCollide(tnts[j]->animXLeft, tnts[j]->animXRight, tnts[j]->animYTop, tnts[j]->animYBottom))
			{
				g_Input.setLifes(g_Input.getLifes()-1);
				BaconBlend();
				//s3eAudioPlay(CRASH_SONG);
				if (g_Input.getSound())
					g_Input.playClash();
				tnts[j]->animXLeft = tnts[j]->animXLeft - 400;
				tnts[j]->animXRight = tnts[j]->animXRight - 400;
			}
		}
	}
	//coin 200 collition
	if (maxiCoin->animXLeft > 0)
	{
		if(BaconCollide(maxiCoin->animXLeft, maxiCoin->animXRight, maxiCoin->animYTop, maxiCoin->animYBottom))
		{
			//g_Input.setLifes(g_Input.getLifes()-1);
			//BaconBlend();
			if (g_Input.getSound())
				g_Input.playMaxiCoin();
			g_Input.setCoins(g_Input.getCoins()+200);
			maxiCoin->animXLeft = maxiCoin->animXLeft - 400;
			maxiCoin->animXRight = maxiCoin->animXRight - 400;
		}
	}
	//tank collition
	if (tank->animXLeftT > 0)
	{
		if (BaconCollide2(tank->animXLeftT, tank->animXRightT, tank->animYTopT, tank->animYBottomT, 20))
		{
			g_Input.setLifes(g_Input.getLifes()-1);
			BaconBlend();
			if (g_Input.getSound())
				g_Input.playClash();
			tank->animXLeftT = tank->animXLeftT - 600;
			tank->animXRightT = tank->animXRightT - 600;
		}
	}
	//chuletas collition
	if (chuletas->animXLeft > 0)
	{
		if (BaconCollide2(chuletas->animXLeft, chuletas->animXRight, chuletas->animYTop, chuletas->animYBottom, 90))
		{
			g_Input.setLifes(g_Input.getLifes()-1);
			BaconBlend();
			if (g_Input.getSound())
				g_Input.playClash();
			chuletas->animXLeft = chuletas->animXLeft - 800;
			chuletas->animXRight = chuletas->animXRight - 800;
		}
	}
}

void menu()
{
	MenuInit();
	//MusicInit("./textures/musicOn.jpg");
	g_Input.gameOff();
	MenuRender();
	MusicRender();

	while(!g_Input.getGame())
	{
		int64 start = s3eTimerGetMs();
		while ((s3eTimerGetMs() - start) < MS_PER_FRAME)
        {
			
            int32 yield = (int32) (MS_PER_FRAME - (s3eTimerGetMs() - start));
            if (yield<0)
                break;
            s3eDeviceYield(yield);
        }
		if (g_Input.getTouchCount() != 0)
		{
			int x = g_Input.getTouch(0)->x;
			int y = g_Input.getTouch(0)->y;

			if (x <= 750 && x >= 500 && y <= 400 && y >= 200)
			{
				if (g_Input.getSound())
				{
					MusicShutDown();
					MusicInit("./textures/musicOf.jpg");
					MusicRender();
					g_Input.soundOff();
				}
				else
				{
					MusicShutDown();
					MusicInit("./textures/musicOn.jpg");
					MusicRender();
					g_Input.soundOn();
				}
			}

			if (x <= 1270 && x >= 500 && y <= 190 && y >= 10)
				g_Input.gameOn();
		}
	}
	//MusicShutDown();
	//MenuShutDown();
    IwGxSetColClear(0xff, 0xff, 0xff, 0xff);
    IwGxPrintSetColour(128, 128, 128);
	g_Input.initTimer();	
	g_Input.setTotalTime();
	g_Input.setPosInitY(g_Input.getAccelerometerY());
	
	SplashInit();
	SplashUpdate("loading");
	SplashRender();
	MenuShutDown();
	if (initMenu)
	{
		//Creating objects
		corazon = new corazones("corazones", 64, 64, -100, 1,2,false);
		for (int i=0; i<10; i++)
		{
			garras[i] = new claws("claws", 128, 128, -150,1,2,false);
		}
		maxiCoin = new Coin("./textures/monedas200pts.png", 128, 128, -150,1,2,false);
		for (int j=0; j<20; j++)
		{
			miniCoins[j] = new MiniCoin("coins", 64, 64, -100,1,2,true);
		}
		for (int i=0; i<10; i++)
		{
			tnts[i] = new Tnt("tnts", 128, 128, -150,1,2,false);
		}
		tank = new Tank();
		tank->Init("./textures/tank.png", 256, 256, -300,1,2,false);
		chuletas = new Chuletas();
		chuletas->Init("./textures/chuletas.png", 512, 512, -600,1,2,false);
	}
	SplashShutDown();
	//SplashInit();
	//SplashUpdate("go");
	ciclo();
}

void ciclo()
{
	if (g_Input.getSound())
		g_Input.playSong();
	
    while (!s3eDeviceCheckQuitRequest())
    {
		if (g_Input.getLifes()<1)
		{
			gameOver();
		}
		if (menuB)
			break;
		s3eDeviceBacklightOn();
		g_Input.updateSound();
        s3eDeviceYield(0);

        int64 start = s3eTimerGetMs();

        bool result = BaconUpdate();
		bool result2 = FondoUpdate();

		IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
		IwGxLightingOff();
		
		FondoRender();
		LifeStatusRender();
		BaconRender();		
		
		insertaObstaculos();
		spriteManager->render();
		chuletas->render();
		tank->render();

		IwGxLightingOn();
		FontLifeRender();
		FontCoinsRender();

		IwGxFlush();
		IwGxSwapBuffers();
		//g_Input.setScore(g_Input.getScore()+1);
        // Attempt frame rate
        /*while ((s3eTimerGetMs() - start) < MS_PER_FRAME)
        {
			
            int32 yield = (int32) (MS_PER_FRAME - (s3eTimerGetMs() - start));
            if (yield<0)
                break;
            s3eDeviceYield(yield);
        }*/
		
    }
}

void endOfGame()
{
	SplashInit();
	SplashUpdate("continue");
	SplashRender();
	IwGxLightingOn();
	gameFinalRender();
	IwGxFlush();
	IwGxSwapBuffers();

	while(!s3eDeviceCheckQuitRequest())
	{
		int64 start = s3eTimerGetMs();
		while ((s3eTimerGetMs() - start) < MS_PER_FRAME)
        {
			
            int32 yield = (int32) (MS_PER_FRAME - (s3eTimerGetMs() - start));
            if (yield<0)
                break;
            s3eDeviceYield(yield);
        }
		if (g_Input.getTouchCount() != 0)
		{
			s3eResult g_result = s3eOSExecExecute("http://www.facebook.com/Baconbb10", true);
		}
	}
}

void gameOver()
{
	initMenu = false;
	if (g_Input.getSound())
		g_Input.stopSong();
	SplashInit();
	SplashUpdate("go");
	SplashRender();
	IwGxLightingOn();
	gameOverRender();
	IwGxFlush();
	IwGxSwapBuffers();

	while(!s3eDeviceCheckQuitRequest())
	{
		int64 start = s3eTimerGetMs();
		while ((s3eTimerGetMs() - start) < MS_PER_FRAME)
        {
			
            int32 yield = (int32) (MS_PER_FRAME - (s3eTimerGetMs() - start));
            if (yield<0)
                break;
            s3eDeviceYield(yield);
        }
		if (g_Input.getTouchCount() != 0)
		{
			int x = g_Input.getTouch(0)->x;
			int y = g_Input.getTouch(0)->y;

			if (x <= 380 && x >= 70 && y <= 730 && y >= 650)
			{
				g_Input.setCoins(0);
				g_Input.setLifes(5);
				corazon->setX(-400);
				for (int i=0; i<10; i++)
				{
					garras[i]->setX(-400);
				}
				maxiCoin->setX(-400);
				for (int j=0; j<20; j++)
				{
					miniCoins[j]->setX(-400);
				}
				for (int i=0; i<10; i++)
				{
					tnts[i]->setX(-400);
				}
				tank->setX(-600);
				chuletas->setX(-800);
				g_Input.part =1;
				g_Input.velAdvance = 10;
				chuletasStep = 2;
				tankStep = 2;
				g_Input.initTimer();
				g_Input.setTotalTime();
				g_Input.part = 1;
				g_Input.setVelocity(10000);
				//SplashShutDown();
				//SplashInit();
				if (g_Input.getSound())
				g_Input.playSong();
				SplashShutDown();
				break;
			}
			else if (x <= 1215 && x >= 650 && y <= 730 && y >= 650)
			{
				g_Input.setCoins(0);
				g_Input.setLifes(5);
				corazon->setX(-400);
				for (int i=0; i<10; i++)
				{
					garras[i]->setX(-400);
				}
				maxiCoin->setX(-400);
				for (int j=0; j<20; j++)
				{
					miniCoins[j]->setX(-400);
				}
				for (int i=0; i<10; i++)
				{
					tnts[i]->setX(-400);
				}
				tank->setX(-600);
				chuletas->setX(-800);
				g_Input.part =1;
				g_Input.velAdvance = 10;
				chuletasStep = 2;
				tankStep = 2;
				g_Input.initTimer();
				g_Input.setTotalTime();
				g_Input.part = 1;
				g_Input.setVelocity(10000);
				//------------------------------------------
				//------------------------------------------
				/*spriteManager->removeSprite(corazon);
				delete corazon;
				for (int i=0; i<15; i++)
				{
					spriteManager->removeSprite(garras[i]);
					delete garras[i];
					spriteManager->removeSprite(tnts[i]);
					delete tnts[i];
				}
				for (int i=0; i<25; i++)
				{
					spriteManager->removeSprite(miniCoins[i]);
					delete miniCoins[i];
				}
				delete tank;
				spriteManager->removeSprite(maxiCoin);
				delete maxiCoin;
				delete chuletas;*/
				menuB = true;
				SplashShutDown();
				break;
			}
		}
	}
}


//-----------------------------------------------------------------------------
// Main global function
//-----------------------------------------------------------------------------
int main()
{
    IwGxInit();
	Iw2DInit();
	//SplashInit();
	//SplashRender();
	srand(time(NULL));
	g_Input.Init();
	LifeStatusInit();
	FontInit();
	//MenuInit();
	FondoInit();
    BaconInit();
	MusicInit("./textures/musicOn.jpg");
	while (menuB)
	{
		menuB = false;
		menu();
	}
	spriteManager->removeSprite(corazon);
	delete corazon;
	for (int i=0; i<10; i++)
	{
		spriteManager->removeSprite(garras[i]);
		delete garras[i];
		spriteManager->removeSprite(tnts[i]);
		delete tnts[i];
	}
	for (int i=0; i<20; i++)
	{
		spriteManager->removeSprite(miniCoins[i]);
		delete miniCoins[i];
	}
	delete tank;
	spriteManager->removeSprite(maxiCoin);
	delete maxiCoin;
	delete chuletas;

	g_Input.Release();
	FondoShutDown();
    BaconShutDown();
	FontShutDown();
	SplashShutDown();
	LifeStatusShutDown();
	IwGxFontTerminate();
    IwGxTerminate();
	Iw2DTerminate();
	s3eDeviceExit();
    return 0;
}
