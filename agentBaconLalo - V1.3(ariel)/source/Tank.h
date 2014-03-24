#include "IwGx.h"
#include "Input.h"

class Tank
{
protected:
	void checkColisiones();


public:
//	void Chuletas() {}
	virtual ~Tank() { }
	void Init(char* file, int16 width, int16 height, int16 x, int16 y, int16 aC, bool p);
	void setY(int16 y);
	void setX(int16 x);
	void render();

	void init();
	bool update(int8 step);

	CIwTexture* s_Texture;
	CIwSVec2 anim_xy[4];
	CIwFVec2 cel_UVs[4];
	CIwMaterial* s_MaterialCel;	
	int16 animXRightT;
	int16 animYBottomT;		
	int16 spritesWidth;
	int16 spritesHeight;
	int16 animXLeftT;
	int16 animYTopT;
	int16 animCel;
	bool pause;
	float x1,x2,x3,x4,y1,y2,y3,y4;
};
