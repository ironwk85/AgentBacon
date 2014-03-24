#include "Tnt.h"

void Tnt::checkColisiones()
{

}

void Tnt::init()
{
	Type = 1;
}

bool Tnt::update()
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

void Tnt::setY(int16 y)
{
	sprites::setY(y);
}

void Tnt::setX(int16 x)
{
	sprites::setX(x);
}