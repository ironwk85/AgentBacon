#include "sprites.h"

void sprites::init()
{
		//animXLeft =0;
		animXRight = animXLeft + spritesWidth;
		//animYTop = 0;
		animYBottom = animYTop + spritesHeight;

		anim_xy[0] = CIwSVec2(animXLeft, animYTop);
		anim_xy[2] = CIwSVec2(animXRight, animYTop);
		anim_xy[3] = CIwSVec2(animXRight, animYBottom);
		anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
		
		cel_UVs[0] = CIwSVec2(IW_FIXED(0), IW_FIXED(0));
		cel_UVs[2] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0));
		cel_UVs[3] = CIwSVec2(IW_FIXED(0.25), IW_FIXED(0.25));
		cel_UVs[1] = CIwSVec2(IW_FIXED(0), IW_FIXED(0.25));

		s_MaterialCel = new CIwMaterial;
		s_MaterialCel->SetName("Cel");
		if (strcmp(textureFile,"coins") == 0)
		{
		//	g_Input.s_TextureCoins->Upload();
			s_MaterialCel->SetTexture(g_Input.s_TextureCoins);
			g_Input.varCoins = false;
			s_MaterialCel->CreateAnim();
		s_MaterialCel->SetAnimCelW(spritesWidth);
		s_MaterialCel->SetAnimCelH(spritesHeight);
		s_MaterialCel->SetAnimCelPeriod(animCel);
		if (pause)
			s_MaterialCel->PauseAnim();
		}
		else if (strcmp(textureFile,"corazones") == 0)
		{
			//g_Input.s_TextureCorazones->Upload();
			s_MaterialCel->SetTexture(g_Input.s_TextureCorazones);
			g_Input.varCorazones = false;
			s_MaterialCel->CreateAnim();
		s_MaterialCel->SetAnimCelW(spritesWidth);
		s_MaterialCel->SetAnimCelH(spritesHeight);
		s_MaterialCel->SetAnimCelPeriod(animCel);
		if (pause)
			s_MaterialCel->PauseAnim();
		}
		else if (strcmp(textureFile,"claws") == 0)
		{
			//g_Input.s_TextureClaws->Upload();
			s_MaterialCel->SetTexture(g_Input.s_TextureClaws);
			g_Input.varClaws = false;
			s_MaterialCel->CreateAnim();
		s_MaterialCel->SetAnimCelW(spritesWidth);
		s_MaterialCel->SetAnimCelH(spritesHeight);
		s_MaterialCel->SetAnimCelPeriod(animCel);
		if (pause)
			s_MaterialCel->PauseAnim();
		}
		else if (strcmp(textureFile,"tnts") == 0)
		{
			//g_Input.s_TextureTnt->Upload();
			s_MaterialCel->SetTexture(g_Input.s_TextureTnt);
			s_MaterialCel->CreateAnim();
		s_MaterialCel->SetAnimCelW(spritesWidth);
		s_MaterialCel->SetAnimCelH(spritesHeight);
		s_MaterialCel->SetAnimCelPeriod(animCel);
		if (pause)
			s_MaterialCel->PauseAnim();
			g_Input.varTnt = false;
		}
		else
		{
			s_Texture = new CIwTexture;	
			s_Texture->LoadFromFile(textureFile);
			s_Texture->Upload();
			s_MaterialCel->SetTexture(s_Texture);
			s_MaterialCel->CreateAnim();
		s_MaterialCel->SetAnimCelW(spritesWidth);
		s_MaterialCel->SetAnimCelH(spritesHeight);
		s_MaterialCel->SetAnimCelPeriod(animCel);
		if (pause)
			s_MaterialCel->PauseAnim();
		}
		
}

bool sprites::getPause()
{
	return pause;
}

void sprites::setPause(bool p)
{
	pause = p;
	if (pause)
			s_MaterialCel->PauseAnim();
	else
		s_MaterialCel->RestartAnim();
}

void sprites::setY(int16 y)
{
	animYTop = y;
	animYBottom = animYTop + spritesHeight;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

void sprites::setX(int16 x)
{
	animXLeft = x;
	animXRight = animXLeft + spritesWidth;
	anim_xy[0] = CIwSVec2(animXLeft, animYTop);
	anim_xy[2] = CIwSVec2(animXRight, animYTop);
	anim_xy[3] = CIwSVec2(animXRight, animYBottom);
	anim_xy[1] = CIwSVec2(animXLeft, animYBottom);
}

bool sprites::update()
{
	return true;
}

bool sprites::update(bool b)
{
	if (s_MaterialCel->GetAnimCelID() == 15)
	{
		setPause(true);
		s_MaterialCel->SetAnimCelID(0);
		return true;
	}
	return false;
}

void sprites::render()
{	
	IwGxSetMaterial(s_MaterialCel);
	IwGxSetUVStream(cel_UVs);
    IwGxSetColStream(NULL);
    IwGxSetVertStreamScreenSpace(anim_xy, 4);
    IwGxDrawPrims(IW_GX_QUAD_STRIP, NULL, 4);
}

spritesManager::Iterator spritesManager::begin()
{
	return Sprites.begin();
}

spritesManager::Iterator spritesManager::end()
{
	return Sprites.end();
}

void spritesManager::addSprite(sprites* sprite)
{	
	Sprites.push_back(sprite);	
	sprite->setMyParent(this);
}

void spritesManager::removeSprite(sprites* sprite)
{
	for (Iterator it = Sprites.begin(); it != Sprites.end(); ++it)
	{
		if (*it == sprite)
		{
			//delete *it;
			Sprites.erase(it);
			break;
		}
	}
}

void spritesManager::update()
{
	CIwList<sprites*> Removals;
	
	for (Iterator it = Sprites.begin(); it != Sprites.end(); ++it)
	{
		if((*it)->animXRight>=0)
		{
			if (!(*it)->update())
				Removals.push_back(*it);
		}
	}
	
	for (Iterator it = Removals.begin(); it != Removals.end(); ++it)
	{
		for (Iterator it2 = Sprites.begin(); it2 != Sprites.end(); ++it2)
		{
			if (*it2 == *it)
			{
				delete *it2;
				Sprites.erase(it2);
				break;
			}
		}
	}

	Removals.clear();
}

void spritesManager::render()
{
	for(Iterator it = Sprites.begin(); it != Sprites.end(); ++it)
	{
		if((*it)->animXRight>=0)
			(*it)->render();
	}
}

