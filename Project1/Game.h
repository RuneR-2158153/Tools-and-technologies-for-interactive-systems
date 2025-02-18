#pragma once

#include <vector>
#include <glm/glm.hpp>
#include "resource.h"
#include <d2d1.h>

class Game {
private:
	short m_numPlayers = 2;

	const int m_windowHeight = 1080;
	const int m_windowWidth = 1920;

	const int m_paddelWidth = 40;
	
	int m_p1Size = 40;
	int m_p2Size = 40;
	
	short m_scoreP1 = 0;
	short m_scoreP2 = 0;
	
	std::vector<glm::vec2> m_balls;
	std::vector<glm::vec2> m_ballDirs;
	const int m_ballSize = 80;

	ID2D1HwndRenderTarget* m_renderTarget;
	ID2D1SolidColorBrush* m_brushPaddel;
	ID2D1SolidColorBrush* m_brushBall;

	// update ball position
	void updateBallPositions();
	
	// render targets
	void drawPeddel(glm::vec2 p1);
	void drawBalls();

public:
	Game() = default;
	~Game();

	void setRenderTarget(ID2D1HwndRenderTarget* renderTarget);

	// update the render 
	// p1 and p2 are screen positions of player one and player two
	void update(glm::vec2 p1, glm::vec2 p2, ID2D1HwndRenderTarget* renderTarget);

	// spawn balls
	void spawnBallP1();
	void spawnBallP2();

	// peddel controls
	void enlargePeddelP1();
	void enlargePeddelP2();
	void shrinkPeddelP1();
	void shrinkPeddelP2();
};