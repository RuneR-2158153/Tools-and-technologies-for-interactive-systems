#include "stdafx.h"
#include <strsafe.h>

#include "resource.h"
#include "Application.h"

#include <iostream>

int APIENTRY wWinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPWSTR lpCmdLine, int nCmdShow)
{
    AllocConsole();
    FILE* fp;
    freopen_s(&fp, "CONOUT$", "w", stdout);
    freopen_s(&fp, "CONOUT$", "w", stderr);
    freopen_s(&fp, "CONIN$", "r", stdin);
    
    Application application;
    application.Run(hInstance, nCmdShow);
    
    FreeConsole();

    return 0;
}