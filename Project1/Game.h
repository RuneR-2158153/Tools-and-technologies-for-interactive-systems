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

	const int m_brushWidth = 40;
	
	int m_brushSize = 40;

	bool m_draw = false;

	static const size_t m_colorCount = 5;

	const D2D1::ColorF m_colors[m_colorCount] = { D2D1::ColorF::White, D2D1::ColorF::Green, D2D1::ColorF::Red, D2D1::ColorF::Blue, D2D1::ColorF::Yellow };

	size_t m_currentCollor = 0;

	glm::vec2 m_pos = { m_windowHeight / 2, m_windowWidth / 100};
	
	std::vector<glm::vec2> m_points;
	std::vector<D2D1::ColorF> m_pointColors;
	std::vector<ID2D1SolidColorBrush*> m_brushes;
	std::vector<D2D1_ELLIPSE> m_ellipses;

	ID2D1HwndRenderTarget* m_renderTarget;
	ID2D1SolidColorBrush* m_brushBall;
	
	void spawnPoint();
	// render targets
	void draw();
	void drawBrush(glm::vec2 pos);
	void drawPoints();

public:
	Game() = default;
	~Game();

	void setRenderTarget(ID2D1HwndRenderTarget* renderTarget);

	// update the render 
	// p1 and p2 are screen positions of player one and player two
	void update(glm::vec2 pos, ID2D1HwndRenderTarget* renderTarget);

	// spawn balls

	// peddel controls
	void toggleDraw();
	void nextColor();
};