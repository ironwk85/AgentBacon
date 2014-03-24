#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

CIwTexture* s_TextureMusic;
CIwSVec2 anim_xyMusic[4];
CIwMaterial* s_MaterialMusic;
CIwFVec2    cel_UVsMusic[4];

int16 animXLeftMusic =496;
int16 animXRightMusic = 754;
int16 animYTopMusic = 212;
int16 animYBottomMusic = 422;

//-----------------------------------------------------------------------------
void MusicInit(char* music)
{
	IwGxInit();
    anim_xyMusic[0] = CIwSVec2(animXLeftMusic, animYTopMusic);
    anim_xyMusic[2] = CIwSVec2(animXRightMusic, animYTopMusic);
    anim_xyMusic[3] = CIwSVec2(animXRightMusic, animYBottomMusic);
    anim_xyMusic[1] = CIwSVec2(animXLeftMusic, animYBottomMusic);

	cel_UVsMusic[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
	cel_UVsMusic[2] = CIwSVec2(IW_FIXED(1), IW_FIXED(0));
	cel_UVsMusic[3] = CIwSVec2(IW_FIXED(1), IW_FIXED(1));
	cel_UVsMusic[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(1));

    s_MaterialMusic = new CIwMaterial;
    s_MaterialMusic->SetName("MusicMaterial");
    s_TextureMusic = new CIwTexture;	
    s_TextureMusic->LoadFromFile(music);
    s_TextureMusic->Upload();
    s_MaterialMusic->SetTexture(s_TextureMusic);
}
//-----------------------------------------------------------------------------
void MusicShutDown()
{
    delete s_TextureMusic;
    delete s_MaterialMusic;
	IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool MusicUpdate()
{
	return true;
}
//-----------------------------------------------------------------------------
void MusicRender()
{
    //IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
    //IwGxLightingOff();
	IwGxSetMaterial(s_MaterialMusic);
	IwGxSetUVStream(cel_UVsMusic);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xyMusic, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
    IwGxFlush();
    IwGxSwapBuffers();
}
