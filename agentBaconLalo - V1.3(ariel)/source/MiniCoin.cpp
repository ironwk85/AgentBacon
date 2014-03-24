#include "MiniCoin.h"

void MiniCoin::checkColisiones()
{
	/*for(spritesManager::Iterator it = Parent->begin(); it != Parent->end(); ++it)
	{
		sprites* objeto_colision = *it;
	}*/

	//if (animXRight)
}

void MiniCoin::init()
{
	Type = 0;
}

void MiniCoin::setY(int16 y)
{
	animYTop = y;
	animYBottom = animYTop + spritesHeight;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

void MiniCoin::setX(int16 x)
{
	animXLeft = x;
	animXRight = animXLeft + spritesWidth;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

bool MiniCoin::update()
{
	//Iw2DInit();
	
	if (sprites::update(true))
	{
		animXLeft = animXLeft - 400;
		animXRight = animXRight - 400;
		g_Input.setCoins(g_Input.getCoins()+50);
	}

	animXLeft = animXLeft -  g_Input.velAdvance;
	animXRight = animXRight -  g_Input.velAdvance;
	animYTop = animYTop;
	animYBottom = animYBottom;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);

	//if (animXLeft > Iw2DGetSurfaceWidth())
		//return false;

	//checkColisiones();

	return true;
}