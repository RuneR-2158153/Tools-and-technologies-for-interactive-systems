//------------------------------------------------------------------------------
// <copyright file="SkeletonBasics.h" company="Microsoft">
//     Copyright (c) Microsoft Corporation.  All rights reserved.
// </copyright>
//------------------------------------------------------------------------------

#pragma once

#include "resource.h"
#include "NuiApi.h"
#include "PartialCalibration.h"
#include "Game.h"

class Application
{
    static const int        cScreenWidth  = 1920;
    static const int        cScreenHeight = 1080;

public:
    
    Application();
    ~Application();
    static LRESULT CALLBACK MessageRouter(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam);
    LRESULT CALLBACK        DlgProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam);
    int                     Run(HINSTANCE hInstance, int nCmdShow);

private:
    bool m_calibrated = false;
    short m_calibratingPoints = 0;
    Game game = Game();
    PartialCalibration     m_calibration;

    HWND                    m_hWnd;

    // Current Kinect
    INuiSensor*             m_pNuiSensor;

    // Skeletal drawing
    ID2D1HwndRenderTarget*   m_pRenderTarget;
    ID2D1SolidColorBrush*    m_pBrushJointTracked;
    ID2D1SolidColorBrush*    m_pBrushJointInferred;
    ID2D1SolidColorBrush*    m_pBrushBoneTracked;
    ID2D1SolidColorBrush*    m_pBrushBoneInferred;
    D2D1_POINT_2F            m_Points[NUI_SKELETON_POSITION_COUNT];

    // Direct2D
    ID2D1Factory*           m_pD2DFactory;
    
    HANDLE                  m_pSkeletonStreamHandle;
    HANDLE                  m_hNextSkeletonEvent;

    // Temporary
    glm::vec2               m_p1Pos;
	glm::vec2 		        m_p2Pos;
    
    
    HRESULT                 CreateFirstConnected();
    HRESULT                 EnsureDirect2DResources();

    void                    Update();
    void                    ProcessSkeleton(NUI_SKELETON_FRAME skeletonFrame);
    void                    DiscardDirect2DResources();
    void                    DrawBone(const NUI_SKELETON_DATA& skel, NUI_SKELETON_POSITION_INDEX bone0, NUI_SKELETON_POSITION_INDEX bone1);
    void                    DrawSkeleton(const NUI_SKELETON_DATA& skel, int windowWidth, int windowHeight);


    D2D1_POINT_2F           SkeletonToScreen(Vector4 skeletonPoint, int width, int height);
};
