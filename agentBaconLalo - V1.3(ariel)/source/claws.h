#include "sprites.h"
#include "Input.h"

class claws: public sprites
{
protected:
	void checkColisiones();


public:
	claws(char* file, int16 width, int16 height, int16 x, int16 y, int16 aC, bool p): sprites(file, width, height, x, y,aC,p){ init(); }	
	virtual ~claws() { }
	void setY(int16 y);
	void setX(int16 x);

	void init();
	bool update();
};
