/*
 * This file is part of the Marmalade SDK Code Samples.
 *
 * (C) 2001-2012 Marmalade. All Rights Reserved.
 *
 * This source code is intended only as a supplement to the Marmalade SDK.
 *
 * THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
 * KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
 * PARTICULAR PURPOSE.
 */
#ifndef EXAMPLES_MAIN_H
#define EXAMPLES_MAIN_H

#include "IwGeom.h"
#include "s3ePointer.h"
#include "s3eKeyboard.h"

typedef enum CursorKeyCodes
{
    EXCURSOR_NONE = 0,
    EXCURSOR_UP,
    EXCURSOR_DOWN,
    EXCURSOR_LEFT,
    EXCURSOR_RIGHT
} CursorKeyCodes;

typedef void (*exbutton_handler)();

typedef struct ExButtons
{
    char             name[64];
    int              x;
    int              y;
    int              w;
    int              h;
    s3eKey           key;
    int32            key_state;
    exbutton_handler handler;
    ExButtons*       next;
    ExButtons()
    {
        name[0] = '\0';
        x = 0;
        y = 0;
        w = 0;
        h = 0;
        key = s3eKeyFirst;
        key_state = 0;
        handler = NULL;
        next = NULL;
    }
} ExButtons;

S3E_BEGIN_C_DECL


// Allocate (and configure) a vertex stream for rendering a 'fullscreen' backdrop that
// does not obscure the Ideaworks logo & softkeys
CIwSVec2* AllocClientScreenRectangle();

S3E_END_C_DECL

#endif /* !EXAMPLES_MAIN_H */
