#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

CIwTexture* s_TextureM2;
CIwSVec2 anim_xym2[4];
CIwMaterial* s_MaterialM2;
CIwFVec2    cel_UVsM2[4];

int16 animXLeftM2 =0;
int16 animXRightM2 = 1280;
int16 animYTopM2 = 0;
int16 animYBottomM2 = 768;

//-----------------------------------------------------------------------------
void SplashInit()
{
	//IwGxInit();
    anim_xym2[0] = CIwSVec2(animXLeftM2, animYTopM2);
    anim_xym2[2] = CIwSVec2(animXRightM2, animYTopM2);
    anim_xym2[3] = CIwSVec2(animXRightM2, animYBottomM2);
    anim_xym2[1] = CIwSVec2(animXLeftM2, animYBottomM2);
	
	cel_UVsM2[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVsM2[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
	cel_UVsM2[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(1));
	cel_UVsM2[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(1));

    s_MaterialM2 = new CIwMaterial;
    s_MaterialM2->SetName("Material2");
    s_TextureM2 = new CIwTexture;	
    s_TextureM2->LoadFromFile("./textures/splashscreen.png");
    s_TextureM2->Upload();
    s_MaterialM2->SetTexture(s_TextureM2);
}
//-----------------------------------------------------------------------------
void SplashShutDown()
{
    delete s_TextureM2;
    delete s_MaterialM2;
	//IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool SplashUpdate()
{
	return true;
}
//-----------------------------------------------------------------------------
void SplashRender()
{
    IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
    IwGxLightingOff();
	IwGxSetMaterial(s_MaterialM2);
	IwGxSetUVStream(cel_UVsM2);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xym2, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
    IwGxFlush();
    IwGxSwapBuffers();
}
