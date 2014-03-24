#include "claws.h"

void claws::checkColisiones()
{

}

void claws::init()
{
	Type = 1;
}

bool claws::update()
{
	//sprites::update();

	animXLeft = animXLeft - g_Input.velAdvance;
	animXRight = animXRight - g_Input.velAdvance;
	animYTop = animYTop;
	animYBottom = animYBottom;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
	
	return true;
}

void claws::setY(int16 y)
{
	sprites::setY(y);
}

void claws::setX(int16 x)
{
	sprites::setX(x);
}