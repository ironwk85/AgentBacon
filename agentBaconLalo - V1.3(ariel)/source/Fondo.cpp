#include "s3e.h"
#include "IwGx.h"
#include "IwGxPrint.h"
#include "IwMaterial.h"
#include "IwMenu.h"
#include "IwTexture.h"
#include "Input.h"

// Texture objects
CIwTexture* s_Texturef;

//Vertex data
CIwSVec2 anim_xyf[4];

// UV data
CIwFVec2    scroll_UVs[4];

// Materials
CIwMaterial* s_MaterialScroll;

//-----------------------------------------------------------------------------
void FondoInit()
{
    // Initialise
    //IwGxInit();

    //int16 offset = 32;

    //int16 midx = (int16)IwGxGetScreenWidth()/2;
    //int16 midy = (int16)IwGxGetScreenHeight()/2;

    //cel animation screen coordinates
    int16 animXLeft = 0;
    int16 animXRight = 1280;
    int16 animYTop = 0;
    int16 animYBottom = g_Input.getSurfaceHeight();

    anim_xyf[0] = CIwSVec2(animXLeft, animYTop);
    anim_xyf[2] = CIwSVec2(animXRight, animYTop);
    anim_xyf[3] = CIwSVec2(animXRight, animYBottom);
    anim_xyf[1] = CIwSVec2(animXLeft, animYBottom);

    //Set up the UVs for scroll animation
    scroll_UVs[0] = CIwFVec2(0, 0);
    scroll_UVs[2] = CIwFVec2(0.5f, 0);
    scroll_UVs[3] = CIwFVec2(0.5f, 1);
    scroll_UVs[1] = CIwFVec2(0, 1);

    // Initialise material to use UV animation for "scrolling"
    s_MaterialScroll = new CIwMaterial;
    s_MaterialScroll->SetName("Scroll");
    s_Texturef = new CIwTexture;
    s_Texturef->LoadFromFile("./textures/fondo.jpg");
    s_Texturef->Upload();
    s_MaterialScroll->SetTexture(s_Texturef);
    s_MaterialScroll->CreateAnim();

    // Note that this is equivalent to SetAnimCelW(0x1) - but the concept of a U or V offset makes more
    // sense when defining a scrolling animation
	s_MaterialScroll->SetAnimOfsU(g_Input.getVelocity());
}
//-----------------------------------------------------------------------------
void FondoShutDown()
{
    delete s_Texturef;
    delete s_MaterialScroll;

    // Terminate
    //IwGxTerminate();
}
//-----------------------------------------------------------------------------
bool FondoUpdate()
{
    //IwGxTickUpdate();
	s_MaterialScroll->SetAnimOfsU(g_Input.getVelocity());

	if (g_Input.advance())
		g_Input.setVelocity(g_Input.getVelocity()-500);

    return true;
}
//-----------------------------------------------------------------------------
void FondoRender()
{
    //IwGxClear(IW_GX_COLOUR_BUFFER_F | IW_GX_DEPTH_BUFFER_F);
	//IwGxLightingOff();
    IwGxSetMaterial(s_MaterialScroll);
	IwGxSetUVStream(scroll_UVs);
    IwGxSetColStream(NULL);
	IwGxSetVertStreamScreenSpace(anim_xyf, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
	//IwGxFlush();
	//IwGxSwapBuffers();
}
