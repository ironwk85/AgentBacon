#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

CIwTexture* s_Texture;
CIwSVec2 anim_xy[4];
CIwFVec2    cel_UVs[4];
CIwMaterial* s_MaterialCel;

int16 animXLeft =100;
int16 animXRight = 228;
int16 animYTop = 250;
int16 animYBottom = 378;
int16 blend = 0;

//-----------------------------------------------------------------------------
void BaconInit()
{
	IwGxInit();
    //int16 offset = 150;

    //int16 midx = (int16)IwGxGetScreenWidth()/2;
    //int16 midy = (int16)IwGxGetScreenHeight()/2;

    anim_xy[0] = CIwSVec2(animXLeft, animYTop);
    anim_xy[2] = CIwSVec2(animXRight, animYTop);
    anim_xy[3] = CIwSVec2(animXRight, animYBottom);
    anim_xy[1] = CIwSVec2(animXLeft, animYBottom);

    cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0));
	cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
	cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));

    s_MaterialCel = new CIwMaterial;
    s_MaterialCel->SetName("Cel");
    s_Texture = new CIwTexture;	
    s_Texture->LoadFromFile("./textures/kevinBacon.png");
    s_Texture->Upload();
    s_MaterialCel->SetTexture(s_Texture);
    s_MaterialCel->CreateAnim();
    s_MaterialCel->SetAnimCelW(128);
    s_MaterialCel->SetAnimCelH(128);
    s_MaterialCel->SetAnimCelPeriod(2);
}
//-----------------------------------------------------------------------------
void BaconShutDown()
{
    delete s_Texture;
    delete s_MaterialCel;
	IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool BaconUpdate()
{
	float velocidad = g_Input.getAccelerometerVelocity();
	float distanceUp = velocidad/7;
	float distanceDown = velocidad/7;

	if (velocidad > 20)
	{
		if (animYBottom + distanceUp > g_Input.getSurfaceHeight())
		{
			animYTop = g_Input.getSurfaceHeight() - 128;
			animYBottom = g_Input.getSurfaceHeight();
			anim_xy[0] = CIwSVec2(animXLeft, animYTop);
			anim_xy[2] = CIwSVec2(animXRight, animYTop);
			anim_xy[3] = CIwSVec2(animXRight, animYBottom);
			anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
		}
		else
		{ 
			animYTop = animYTop + distanceUp;
			animYBottom = animYBottom + distanceUp;
			anim_xy[0] = CIwSVec2(animXLeft, animYTop);
			anim_xy[2] = CIwSVec2(animXRight, animYTop);
			anim_xy[3] = CIwSVec2(animXRight, animYBottom);
			anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
		}
	}
	else if (velocidad < -20)
	{
		if (animYTop + distanceDown < 0)
		{
			animYTop = 0;
			animYBottom = 128;
			anim_xy[0] = CIwSVec2(animXLeft, animYTop);
			anim_xy[2] = CIwSVec2(animXRight, animYTop);
			anim_xy[3] = CIwSVec2(animXRight, animYBottom);
			anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
		}
		else
		{ 
			animYTop = animYTop + distanceDown;
			animYBottom = animYBottom + distanceDown;
			anim_xy[0] = CIwSVec2(animXLeft, animYTop);
			anim_xy[2] = CIwSVec2(animXRight, animYTop);
			anim_xy[3] = CIwSVec2(animXRight, animYBottom);
			anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
		}
	}

	if (blend>0)
	{
		switch (blend%2)
		{
		case 0:
			s_MaterialCel->SetAlphaMode(CIwMaterial::BLEND);
			blend--;
			break;
		default:
			s_MaterialCel->SetAlphaMode(CIwMaterial::ALPHA_DEFAULT);
			blend--;
			break;
		}
	}

	IwGxTickUpdate();
	return true;
}
//-----------------------------------------------------------------------------
void BaconRender()
{
    //IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
    //IwGxLightingOff();
	IwGxSetMaterial(s_MaterialCel);
	IwGxSetUVStream(cel_UVs);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xy, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
    //IwGxFlush();
    //IwGxSwapBuffers();
}

bool BaconCollide(int16 x1,int16 x2, int16 y1, int16 y2)
{
	int y = y1+30;
	int yy = y2-30;
	if((x2>=animXLeft && x2<=animXRight && y>=animYTop && y<=animYBottom) || (x2>=animXLeft && x2<=animXRight && yy>=animYTop && yy<=animYBottom) ||
		(x1>=animXLeft && x1<=animXRight && y>=animYTop && y<=animYBottom) || (x1>=animXLeft && x1<=animXRight && yy>=animYTop && yy<=animYBottom))
		return true;
	return false;
}

bool BaconCollide2(int16 x1,int16 x2, int16 y1, int16 y2, int8 s)
{
	int y = y1+s;
	int yy = y2-s;
	int x = x1+s;
	/*if(animXRight>=x1 && animXRight<=x2 && animXLeft <=x1 && animYTop<=y && animYBottom>=y && animYBottom<=yy || animXRight>=x1 && animXRight<=x2 && animXLeft <=x1 && animYTop<=yy && animYBottom>=yy && animYTop>=y  || animXRight>=x1 && animXRight<=x2 && animXLeft <=x1 && animYTop>=y && animYTop<=yy && animYBottom<=yy && animYBottom>=y ||
		animXLeft>=x1 && animXLeft<=x2 && animXRight>=x2 && animYTop<=y && animYBottom>=y && animYBottom<=yy || animXLeft>=x1 && animXLeft<=x2 && animXRight>=x2 && animYTop<=yy && animYBottom>=yy && animYTop>=y || animXRight>=x1 && animXRight<=x2 && animXRight>=x2 && animYTop>=y && animYTop<=yy && animYBottom<=yy && animYBottom>=y ||
		animXLeft>=x1 && animXLeft<=x2 && animXRight>=x1 && animXRight<=x2 && animYTop<=y && animYBottom>=y && animYBottom<=yy || animXLeft>=x1 && animXLeft<=x2 && animXRight>=x1 && animXRight<=x2 && animYTop<=yy && animYBottom>=yy && animYTop>=y || animXLeft>=x1 && animXLeft<=x2 && animXRight>=x1 && animXRight<=x2 && animYTop>=y && animYTop<=yy && animYBottom<=yy && animYBottom>=y)*/
	if((animXRight>x && animXRight<x2 && animYTop>y && animYTop<yy) || (animXRight>x && animXRight<x2 && animYBottom>y && animYBottom<yy) ||
		(animXLeft>x && animXLeft<x2 && animYTop>y && animYTop<yy) || (animXLeft>x && animXLeft<x2 && animYBottom>y && animYBottom<yy))
		return true;
	return false;
}

void BaconBlend()
{
	blend = 10;
}
