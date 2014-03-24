#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

CIwTexture* s_TextureLF;
CIwSVec2 anim_xyLF[4];
CIwMaterial* s_MaterialLF;
CIwFVec2    cel_UVsLF[4];

int16 animXLeftLF =5;
int16 animXRightLF = 45;
int16 animYTopLF = 5;
int16 animYBottomLF = 93;

//-----------------------------------------------------------------------------
void LifeStatusInit()
{
	IwGxInit();
    anim_xyLF[0] = CIwSVec2(animXLeftLF, animYTopLF);
    anim_xyLF[2] = CIwSVec2(animXRightLF, animYTopLF);
    anim_xyLF[3] = CIwSVec2(animXRightLF, animYBottomLF);
    anim_xyLF[1] = CIwSVec2(animXLeftLF, animYBottomLF);

	cel_UVsLF[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVsLF[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
	cel_UVsLF[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(1));
	cel_UVsLF[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(1));

    s_MaterialLF = new CIwMaterial;
    s_MaterialLF->SetName("lifeStatus");
    s_TextureLF = new CIwTexture;	
    s_TextureLF->LoadFromFile("./textures/lifeStatus.png");
    s_TextureLF->Upload();
    s_MaterialLF->SetTexture(s_TextureLF);
}
//-----------------------------------------------------------------------------
void LifeStatusShutDown()
{
    delete s_TextureLF;
    delete s_MaterialLF;
	IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool LifeStatusUpdate()
{
	return true;
}
//-----------------------------------------------------------------------------
void LifeStatusRender()
{
    //IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
    //IwGxLightingOff();
	IwGxSetMaterial(s_MaterialLF);
	IwGxSetUVStream(cel_UVsLF);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xyLF, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
    //IwGxFlush();
    //IwGxSwapBuffers();
}
