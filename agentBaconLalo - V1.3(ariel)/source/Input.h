#if !defined(_CINPUT_H_)
#define _CINPUT_H_

#include "IwGeom.h"
#include "s3ePointer.h"
#include "s3eKeyboard.h"
#include "s3eOSReadString.h"
#include "s3eAccelerometer.h"
#include "IwSound.h"
#include "IwGx.h"

#define MAX_TOUCHES		4
#define TIME            30000
#define SONG            "music.wav"
#define CRASH_SONG      "crash.wav"
#define BACKGROUND_VEL  10000

//
//
// CTouch - Represents a single touch
//
//
struct CTouch
{
public:
    int		x, y;		// Touch position
    bool	active;		// Touch active state
    int		id;			// ID of touch - The system tracks multiple touches by assigning each one a unique ID
};

//
//
// CInput - The CInput class is responsible for detecting single and multiple screen touches
//
//
class CInput
{
	// Properties
private:
	bool		PointerAvailable;				// true if a pointer is present
	bool		KeysAvailable;					// true if a key input is present
	bool		OSKeyboardAvailable;			// true if on screen keyboard is available
	bool		IsMultiTouch;					// true if multitouch is enabled
	CTouch		Touches[MAX_TOUCHES];			// List of potential touches

	bool		AccelerometerAvailable;				// true if a accelerometer is present
	float		initY;
	int64		timer;
	int			totalTime;
	int			backVel;
	int16		screenWidth;
	int16		screenHeight;
	int16		lifes;
	int16		score;
	int16		coins;
	bool		sound;
	bool		game;
	int			surfaceHeight;

public:
	bool		isPointerAvailable() const { return PointerAvailable; }	// Returns availability of the pointer
	bool		isKeysAvailable() const { return KeysAvailable; }		// Returns availability of keys
	bool		isOSKeyboardAvailable() const { return OSKeyboardAvailable; }	// Returns availability of on screen keyboard
	bool		isMultiTouch() const { return IsMultiTouch; }		// Returns multitouch capability
	CTouch*		getTouchByID(int id);								// returns the touch identified by its id
	CTouch*		getTouch(int index) { return &Touches[index]; }		// Gets a specific touch
	CTouch*		findTouch(int id);									// Finds a specific touch by its id
	int			getTouchCount() const;								// Get number of touches this frame
	bool		isKeyDown(s3eKey key) const;
	bool		isKeyUp(s3eKey key) const;
	bool		wasKeyPressed(s3eKey key) const;
	bool		wasKeyReleased(s3eKey key) const;
	const char* showOnScreenKeyboard(const char* prompt, int flags = 0, const char* default_text = NULL);

	bool varCoins;
	bool varCorazones;
	bool varTnt;
	bool varClaws;

	//Textures
	CIwTexture* s_TextureCoins;
	CIwTexture* s_TextureCorazones;
	CIwTexture* s_TextureClaws;
	CIwTexture* s_TextureTnt;
	

	//Accelerometer properties
	float getAccelerometerY();
	void setPosInitY(float y);
	float getPosInitY();
	float getAccelerometerVelocity();

	//Surface height
	int getSurfaceHeight();
	void setSurfaceHeight(int h);

	//Timer
	int64 getTime();
	void initTimer();
	bool advance();

	//background velocity
	int getVelocity();
	void setVelocity(int velocity);

	//screen
	int16 getScreenWidth();
	int16 getScreenHeight();
	void initScreenWidth();
	void initScreenHeight();

	//lifes score and coins
	int16 getLifes();
	int16 getCoins();
	int16 getScore();
	void setLifes(int16 lifes2);
	void setCoins(int16 coins2);
	void setScore(int16 score2);

	//song
	void playSong();
	void stopSong();
	void updateSound();
	void playClash();
	void playLife();
	void playCoin();
	void playMaxiCoin();

	//sound properties
	void soundOn();
	void soundOff();
	bool getSound();

	//begin game
	void gameOn();
	void gameOff();
	bool getGame();

	//total time
	int getTotalTime();
	void setTotalTime();

	////
	int part;
	int velAdvance;
	bool corazonReady;
	bool maxiCoinReady;
	// Properties end

private:
public:
	bool		Init();							// Initialises the input system (returns true if pointer is supported)
	void		Release();						// Releases data used by the input system
	void		Update();						// Updates the input system, called every frame
};

extern CInput g_Input;



#endif	// _CINPUT_H_