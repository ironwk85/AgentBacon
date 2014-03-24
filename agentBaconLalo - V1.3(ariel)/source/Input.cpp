#include "Input.h"
#include "Iw2D.h"
#include "s3e.h"

CInput g_Input;
CIwResGroup* Level1Group;
CIwResGroup* lifeGroup;
CIwResGroup* maxiCoinGroup;
//static int16*   g_SoundBuffer;
//static int32    g_FileSize;
//static int      g_Channel;

void HandleMultiTouchButtonCB(s3ePointerTouchEvent* event)
{
	// Check to see if the touch already exists
	CTouch* touch = g_Input.findTouch(event->m_TouchID);
    if (touch != NULL)
    {
		// Yes it does, so update the touch information
        touch->active = event->m_Pressed != 0; 
        touch->x = event->m_x;
        touch->y = event->m_y;
    }
}
//
// HandleMultiTouchMotionCB - For multitouch devices the system will call this callback when the user moves their finger on the screen. This callback is called once for each screen touch
// 
void HandleMultiTouchMotionCB(s3ePointerTouchMotionEvent* event)
{
	// Check to see if the touch already exists
	CTouch* touch = g_Input.findTouch(event->m_TouchID);
    if (touch != NULL)
    {
		// Updates the touches positional information
        touch->x = event->m_x;
        touch->y = event->m_y;
    }
}
//
// HandleSingleTouchButtonCB - The system will call this callback when the user touches the screen
// 
void HandleSingleTouchButtonCB(s3ePointerEvent* event)
{
	CTouch* touch = g_Input.getTouch(0);
    touch->active = event->m_Pressed != 0;
    touch->x = event->m_x;
    touch->y = event->m_y;
}
//
// HandleSingleTouchMotionCB - The system will call this callback when the user moves their finger on the screen
// 
void HandleSingleTouchMotionCB(s3ePointerMotionEvent* event)
{
	CTouch* touch = g_Input.getTouch(0);
    touch->x = event->m_x;
    touch->y = event->m_y;
}

//
//
// CInput implementation
//
//
CTouch*	CInput::findTouch(int id)
{
	if (!PointerAvailable)
		return NULL;

    // Attempt to find the touch by its ID and then return it
	// If the touch does not exist then it is recorded in the touches list
	for (int t = 0; t < MAX_TOUCHES; t++)
	{
		if (Touches[t].id == id)
			return &Touches[t];
		if (!Touches[t].active)
		{
            Touches[t].id = id;
			return &Touches[t];
		}
	}

	return NULL;
}

CTouch*	CInput::getTouchByID(int id)
{
	if (!PointerAvailable)
		return NULL;

	// Find touch by its ID and return it
	for (int t = 0; t < MAX_TOUCHES; t++)
	{
		if (Touches[t].active && Touches[t].id == id)
			return &Touches[t];
	}

	return NULL;
}

int CInput::getTouchCount() const
{
	if (!PointerAvailable)
		return 0;

	// Return the total number of active touches
	int count = 0;
	for (int t = 0; t < MAX_TOUCHES; t++)
	{
		if (Touches[t].active)
            count++;
	}

	return count;
}

bool CInput::Init()
{
	varCoins = true;
	varClaws = true;
	varTnt = true;
	varCorazones = true;
	//Textures
	s_TextureCoins = new CIwTexture;	
	s_TextureCoins->LoadFromFile("./textures/monedas.png");
	g_Input.s_TextureCoins->Upload();
	s_TextureCorazones = new CIwTexture;	
	s_TextureCorazones->LoadFromFile("./textures/corazones.png");
	g_Input.s_TextureCorazones->Upload();
	s_TextureClaws = new CIwTexture;	
	s_TextureClaws->LoadFromFile("./textures/claw.png");
	g_Input.s_TextureClaws->Upload();
	s_TextureTnt = new CIwTexture;	
	s_TextureTnt->LoadFromFile("./textures/tnt.png");
g_Input.s_TextureTnt->Upload();
	//sound and game off
	/*s3eFile *fileHandle = s3eFileOpen("music.raw", "rb");

    g_FileSize = s3eFileGetSize(fileHandle);
    g_SoundBuffer = (int16*)s3eMallocBase(g_FileSize);
    memset(g_SoundBuffer, 0, g_FileSize);
    s3eFileRead(g_SoundBuffer, g_FileSize, 1, fileHandle);
    s3eFileClose(fileHandle);

    // Finds a free channel that we can use to play our raw file on.
    g_Channel = s3eSoundGetFreeChannel();
	
    // Setting default frequency at which all channels will play at, in Hz.
    s3eSoundSetInt(S3E_SOUND_DEFAULT_FREQ, 96000);
	*////////////////////////////////////////////////////////
	velAdvance = 10;
	part = 1;
	#ifdef IW_BUILD_RESOURCES
		IwGetResManager()->AddHandler(new CIwResHandlerWAV);
	#endif
	IwSoundInit();
	IwGetResManager()->LoadGroup("Level1.group");
	Level1Group = IwGetResManager()->GetGroupNamed("Level1");
	IwGetResManager()->SetCurrentGroup(Level1Group);

	/*IwGetResManager()->LoadGroup("life.group");
	lifeGroup = IwGetResManager()->GetGroupNamed("LevelLife");
	IwGetResManager()->SetCurrentGroup(lifeGroup);

	IwGetResManager()->LoadGroup("maxiCoin.group");
	maxiCoinGroup = IwGetResManager()->GetGroupNamed("LevelMaxiCoin");
	IwGetResManager()->SetCurrentGroup(maxiCoinGroup);*/
	////////////////////////////////////////////////////////
	setSurfaceHeight(Iw2DGetSurfaceHeight());
	soundOn();
	gameOff();
	//obtain height and width of image
	Iw2DInit();
	initScreenWidth();
	initScreenHeight();
	Iw2DTerminate();
	//initialize lifes, coins & score
	setCoins(0);
	setLifes(5);
	setScore(0);
	//allow hearts
	corazonReady = true;
	maxiCoinReady = true;
	//obtain x initial position
	setPosInitY(getAccelerometerY());
	//start timer
	//initTimer();
	//set initial velocity
	backVel = BACKGROUND_VEL;
	// Check to see if the device that we are running on supports the pointer
    PointerAvailable = s3ePointerGetInt(S3E_POINTER_AVAILABLE) ? true : false;
	AccelerometerAvailable = s3eAccelerometerStart() == S3E_RESULT_SUCCESS  ? true : false;
	if (!PointerAvailable || !AccelerometerAvailable)
		return false;	// No pointer support
	if (PointerAvailable)
	{
		// Clear out the touches array
		for (int t = 0; t < MAX_TOUCHES; t++)
		{
			Touches[t].active = false;
			Touches[t].id = 0;
		}
		// Determine if the device supports multi-touch
		IsMultiTouch = s3ePointerGetInt(S3E_POINTER_MULTI_TOUCH_AVAILABLE) ? true : false;
		// For multi-touch devices we handle touch and motion events using different callbacks
		if (IsMultiTouch)
		{
			s3ePointerRegister(S3E_POINTER_TOUCH_EVENT, (s3eCallback)HandleMultiTouchButtonCB, NULL);
			s3ePointerRegister(S3E_POINTER_TOUCH_MOTION_EVENT, (s3eCallback)HandleMultiTouchMotionCB, NULL);
		}
		else
		{
			s3ePointerRegister(S3E_POINTER_BUTTON_EVENT, (s3eCallback)HandleSingleTouchButtonCB, NULL);
			s3ePointerRegister(S3E_POINTER_MOTION_EVENT, (s3eCallback)HandleSingleTouchMotionCB, NULL);
		}
	}
	// Check to see if the device that we are running on supports the keyboard
    KeysAvailable = (s3eKeyboardGetInt(S3E_KEYBOARD_HAS_KEYPAD) || s3eKeyboardGetInt(S3E_KEYBOARD_HAS_ALPHA));
	// Check to see if the device that we are running on supports the on screen keyboard
	OSKeyboardAvailable = s3eOSReadStringAvailable() == S3E_TRUE; 
	return true; // Pointer support
}

void CInput::Release()
{
	if (PointerAvailable)
	{
		// Unregister the pointer system callbacks
		if (IsMultiTouch)
		{
			s3ePointerUnRegister(S3E_POINTER_TOUCH_EVENT, (s3eCallback)HandleMultiTouchButtonCB);
			s3ePointerUnRegister(S3E_POINTER_TOUCH_MOTION_EVENT, (s3eCallback)HandleMultiTouchMotionCB);
		}
		else
		{
			s3ePointerUnRegister(S3E_POINTER_BUTTON_EVENT, (s3eCallback)HandleSingleTouchButtonCB);
			s3ePointerUnRegister(S3E_POINTER_MOTION_EVENT, (s3eCallback)HandleSingleTouchMotionCB);
		}
	}
	s3eAudioStop();
}

void CInput::setSurfaceHeight(int h)
{
	surfaceHeight = h;
}

int CInput::getSurfaceHeight()
{
	return surfaceHeight;
}

void CInput::Update()
{
	// Update the pointer if it is available
	if (PointerAvailable)
		s3ePointerUpdate();

	// Update key system if it is available
	if (KeysAvailable)
		s3eKeyboardUpdate();
}

bool CInput::isKeyDown(s3eKey key) const
{
	if (!KeysAvailable)
		return false;

	// Return down state of queried key
	return (s3eKeyboardGetState(key) & S3E_KEY_STATE_DOWN) == S3E_KEY_STATE_DOWN;
}

bool CInput::isKeyUp(s3eKey key) const
{
	if (!KeysAvailable)
		return false;

	// Return up state of queried key
	return (s3eKeyboardGetState(key) & S3E_KEY_STATE_UP) == S3E_KEY_STATE_UP;
}

bool CInput::wasKeyPressed(s3eKey key) const
{
	if (!KeysAvailable)
		return false;

	// Return pressed state of queried key
	return (s3eKeyboardGetState(key) & S3E_KEY_STATE_PRESSED) == S3E_KEY_STATE_PRESSED;
}

bool CInput::wasKeyReleased(s3eKey key) const
{
	if (!KeysAvailable)
		return false;

	// Return released state of queried key
	return (s3eKeyboardGetState(key) & S3E_KEY_STATE_RELEASED) == S3E_KEY_STATE_RELEASED;
}

const char* CInput::showOnScreenKeyboard(const char* prompt, int flags, const char* default_text)
{
	if (!OSKeyboardAvailable)
		return NULL;

	// Show on screen keyboard and return the input string
	if (default_text != NULL)
		return s3eOSReadStringUTF8WithDefault(prompt, default_text, flags);
	else
		return s3eOSReadStringUTF8(prompt, flags);
}

float CInput::getAccelerometerY() 
{
	return s3eAccelerometerGetZ();
}

float CInput::getPosInitY() 
{
	return initY;
}

void CInput::setPosInitY(float y) 
{
	initY = -700;//y;
}

float CInput::getAccelerometerVelocity() 
{
	float y = getPosInitY();

	return (getAccelerometerY() - y);
}

void CInput::initTimer()
{
	timer = s3eTimerGetUST();
}

int64 CInput::getTime()
{
	return s3eTimerGetUST() - timer;
}

bool CInput::advance()
{
	if (TIME <= getTime())
	{
		initTimer();
		part++;
		velAdvance+=2;
		corazonReady = true;
		maxiCoinReady = true;
		return true;
	}
	return false;
}

int CInput::getVelocity()
{
	return backVel;
}

void CInput::setVelocity(int velocity)
{
	if (velocity >=1000)
		backVel = velocity;
}

int16 CInput::getScreenWidth()
{
	return screenWidth;
}

int16 CInput::getScreenHeight()
{
	return screenHeight;
}

void CInput::initScreenWidth()
{
	screenWidth = Iw2DGetSurfaceWidth();
}

void CInput::initScreenHeight()
{
	screenHeight = Iw2DGetSurfaceHeight();
}

int16 CInput::getLifes()
{
	return lifes;
}

int16 CInput::getCoins()
{
	return coins;
}

int16 CInput::getScore()
{
	return score;
}

void CInput::setLifes(int16 lifes2)
{
	lifes = lifes2;
}

void CInput::setCoins(int16 coins2)
{
	coins = coins2;
}

void CInput::setScore(int16 score2)
{
	score = score2;
}

void CInput::playSong()
{
	//play game song
	s3eAudioPlay(SONG,0);
	//s3eSoundChannelPlay(g_Channel, g_SoundBuffer, g_FileSize, 0, 0);
}

void CInput::stopSong()
{
	//play game song
	s3eAudioStop();
	//s3eSoundChannelPlay(g_Channel, g_SoundBuffer, g_FileSize, 0, 0);
}

void CInput::playClash()
{
	CIwSoundSpec* SoundSpec = (CIwSoundSpec*)Level1Group->GetResNamed("explosion", IW_SOUND_RESTYPE_SPEC);
	CIwSoundInst* SoundInstance = SoundSpec->Play();
}

void CInput::playLife()
{
	CIwSoundSpec* SoundSpec = (CIwSoundSpec*)Level1Group->GetResNamed("life", IW_SOUND_RESTYPE_SPEC);
	CIwSoundInst* SoundInstance = SoundSpec->Play();
}

void CInput::playCoin()
{
	CIwSoundSpec* SoundSpec = (CIwSoundSpec*)Level1Group->GetResNamed("coin", IW_SOUND_RESTYPE_SPEC);
	CIwSoundInst* SoundInstance = SoundSpec->Play();
}

void CInput::playMaxiCoin()
{
	CIwSoundSpec* SoundSpec = (CIwSoundSpec*)Level1Group->GetResNamed("maxiCoin", IW_SOUND_RESTYPE_SPEC);
	CIwSoundInst* SoundInstance = SoundSpec->Play();
}

void CInput::updateSound()
{
	IwGetSoundManager()->Update();
}

void CInput::soundOn()
{
	sound = true;
}

void CInput::soundOff()
{
	sound = false;
}

bool CInput::getSound()
{
	return sound;
}

void CInput::gameOn()
{
	game = true;
}

void CInput::gameOff()
{
	game = false;
}

bool CInput::getGame()
{
	return game;
}

int CInput::getTotalTime()
{
	return s3eTimerGetUST() - totalTime;
}

void CInput::setTotalTime()
{
	totalTime = s3eTimerGetUST();;
}

