#include "sprites.h"
//#include "spritesManager.h"
#include "Iw2D.h"
#include "Input.h"

class MiniCoin: public sprites
{
protected:
	void checkColisiones();

public:
	MiniCoin(char* file, int16 width, int16 height, int16 x, int16 y, int16 aC, bool p): sprites(file, width, height, x, y,aC,p){ init(); }	
	virtual ~MiniCoin() { }
	void setY(int16 y);
	void setX(int16 x);

	void init();
	bool update();
};
