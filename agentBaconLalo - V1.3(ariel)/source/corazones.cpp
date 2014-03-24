#include "corazones.h"

void corazones::checkColisiones()
{
	/*for(spritesManager::Iterator it = Parent->begin(); it != Parent->end(); ++it)
	{
		sprites* objeto_colision = *it;
	}*/

	//if (animXRight)
}

void corazones::init()
{
	Type = 0;
}

void corazones::setY(int16 y)
{
	animYTop = y;
	animYBottom = animYTop + spritesHeight;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

void corazones::setX(int16 x)
{
	animXLeft = x;
	animXRight = animXLeft + spritesWidth;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

bool corazones::update()
{
	//Iw2DInit();
	sprites::update();

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