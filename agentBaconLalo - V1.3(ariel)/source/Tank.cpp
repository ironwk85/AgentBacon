#include "Tank.h"

void Tank::checkColisiones()
{

}

//void Chuletas::Chuletas()
//{
//	//
//}


void Tank::Init(char* textureFile, int16 sw, int16 sh, int16 axl, int16 ayt, int16 ac, bool p)
{
	spritesWidth = sw;
	spritesHeight = sh;
	animXLeftT =axl;
	animYTopT = ayt;
	animCel = ac;
	pause = p;
	animXRightT = animXLeftT + spritesWidth;

	animYBottomT = animYTopT + spritesHeight;
	anim_xy[0] = CIwSVec2(animXLeftT, animYTopT);
	anim_xy[2] = CIwSVec2(animXRightT, animYTopT);
	anim_xy[3] = CIwSVec2(animXRightT, animYBottomT);
	anim_xy[1] = CIwSVec2(animXLeftT, animYBottomT);
		
	cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0));
	cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
	cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));

	s_MaterialCel = new CIwMaterial;
	s_MaterialCel->SetName("Cel");
	s_Texture = new CIwTexture;	
	s_Texture->LoadFromFile(textureFile);
	s_Texture->Upload();
	s_MaterialCel->SetTexture(s_Texture);
	s_MaterialCel->CreateAnim();
	s_MaterialCel->SetAnimCelNum(16);
	s_MaterialCel->SetAnimCelNumU(4);
	s_MaterialCel->SetAnimCelPeriod(animCel);
	if (pause)
		s_MaterialCel->PauseAnim();
}

bool Tank::update(int8 step)
{
	//sprites::update();
	switch (step){
	case 1:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));
		break;
	case 2:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		break;
	case 3:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.25));
		break;
	case 4:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.25));
		break;
	case 5:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.50));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.50));
		break;
	case 6:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.25));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.50));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.50));
		break;
	case 7:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.25));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.25));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.50));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.50));
		break;
	case 8:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.50));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.50));
		break;
	case 9:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.50));
		cel_UVs[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0.50));
		cel_UVs[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(0.75));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.75));
		break;
	case 10:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.50));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.50));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.75));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.75));
		break;
	case 11:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.50));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.50));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.75));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.75));
		break;
	case 12:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.50));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.50));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.75));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.75));
		break;
	case 13:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.75));
		cel_UVs[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0.75));
		cel_UVs[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(1));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(1));
		break;
	case 14:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.75));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.75));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(1));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(1));
		break;
	case 15:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.75));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.75));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(1));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(1));
		break;
	case 16:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(0.75));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.75));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(1));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.50), IW_FIXED(1));
		break;
	default:
		cel_UVs[0] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0.75), IW_FIXED(0.25));
		break;
	}

	animXLeftT = animXLeftT - g_Input.velAdvance;
	animXRightT = animXRightT - g_Input.velAdvance;
	animYTopT = animYTopT;
	animYBottomT = animYBottomT;
	anim_xy[0] = CIwSVec2(animXLeftT, animYTopT);
	anim_xy[2] = CIwSVec2(animXRightT, animYTopT);
	anim_xy[3] = CIwSVec2(animXRightT, animYBottomT);
	anim_xy[1] = CIwSVec2(animXLeftT, animYBottomT);
	
	return true;
}

void Tank::render()
{
	IwGxSetMaterial(s_MaterialCel);
	IwGxSetUVStream(cel_UVs);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xy, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
}

void Tank::setY(int16 y)
{
	//sprites::setY(y);
	animYTopT = y;
	animYBottomT = animYTopT + spritesHeight;
	anim_xy[0] = CIwSVec2(animXLeftT, animYTopT);
	anim_xy[2] = CIwSVec2(animXRightT, animYTopT);
	anim_xy[3] = CIwSVec2(animXRightT, animYBottomT);
	anim_xy[1] = CIwSVec2(animXLeftT, animYBottomT);
}

void Tank::setX(int16 x)
{
	//sprites::setX(x);
	animXLeftT = x;
	animXRightT = animXLeftT + spritesWidth;
	anim_xy[0] = CIwSVec2(animXLeftT, animYTopT);
	anim_xy[2] = CIwSVec2(animXRightT, animYTopT);
	anim_xy[3] = CIwSVec2(animXRightT, animYBottomT);
	anim_xy[1] = CIwSVec2(animXLeftT, animYBottomT);
}