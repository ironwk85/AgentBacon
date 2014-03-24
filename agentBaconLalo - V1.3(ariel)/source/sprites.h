#if !defined(_C_SPRITES_H_)
#define _C_SPRITES_H_

#include "IwGx.h"
#include "Input.h"

class spritesManager;

class sprites
{
public:
	int16 animXLeft;
	int16 animXRight;
	int16 animYTop;
	int16 animYBottom;		
	int16 animCel;
	bool pause;
	void setMyParent(spritesManager* parent){ Parent = parent; }

public:
	~sprites(){}
	sprites(char* file, int16 width, int16 height, int16 x, int16 y, int16 aC, bool p): textureFile(file), spritesWidth(width), spritesHeight(height), animXLeft(x), animYTop(y), animCel(aC), pause(p)
	{
		init();
	}
	//void setYTop(int16 y);
	virtual void init();
	virtual bool update();
	virtual bool update(bool b);
	virtual void render();	
	void setY(int16 y);
	void setX(int16 x);
	void setPause(bool p);
	bool getPause();
	CIwMaterial* s_MaterialCel;	


protected:
	CIwTexture* s_Texture;
	CIwSVec2 anim_xy[4];
	CIwFVec2 cel_UVs[4];
		
	char* textureFile;
	int16 spritesWidth;
	int16 spritesHeight;
	int Type;		
	spritesManager* Parent;
};


class spritesManager
{
public:		
	typedef CIwList<sprites*>::iterator	Iterator;
	Iterator		begin();
	Iterator		end();

	
protected:
	CIwList<sprites*>	Sprites;			// List of sprites
public:
	void			addSprite(sprites* sprite);
	void			removeSprite(sprites* sprite);

protected:

public:
	spritesManager()	{}
	~spritesManager();		

	void update();
	void render();
};

#endif // _C_SPRITE_H_

