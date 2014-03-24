#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

CIwTexture* s_TextureM;
CIwSVec2 anim_xym[4];
CIwMaterial* s_MaterialM;
CIwFVec2    cel_UVsM[4];

int16 animXLeftM =0;
int16 animXRightM = 1280;
int16 animYTopM = 0;
int16 animYBottomM = 768;

//-----------------------------------------------------------------------------
void MenuInit()
{
	IwGxInit();
    anim_xym[0] = CIwSVec2(animXLeftM, animYTopM);
    anim_xym[2] = CIwSVec2(animXRightM, animYTopM);
    anim_xym[3] = CIwSVec2(animXRightM, animYBottomM);
    anim_xym[1] = CIwSVec2(animXLeftM, animYBottomM);

	cel_UVsM[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVsM[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
	cel_UVsM[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(1));
	cel_UVsM[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(1));

    s_MaterialM = new CIwMaterial;
    s_MaterialM->SetName("Material");
    s_TextureM = new CIwTexture;	
    s_TextureM->LoadFromFile("./textures/menu.jpg");
    s_TextureM->Upload();
    s_MaterialM->SetTexture(s_TextureM);
}
//-----------------------------------------------------------------------------
void MenuShutDown()
{
    delete s_TextureM;
    delete s_MaterialM;
	IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool MenuUpdate()
{
	return true;
}
//-----------------------------------------------------------------------------
void MenuRender()
{
    IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
    IwGxLightingOff();
	IwGxSetMaterial(s_MaterialM);
	IwGxSetUVStream(cel_UVsM);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xym, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
    IwGxFlush();
    IwGxSwapBuffers();
}
