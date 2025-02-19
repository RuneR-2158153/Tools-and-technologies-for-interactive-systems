#include "Game.h"

Game::~Game() {
	m_brushPaddel->Release();
	m_brushBall->Release();
}

void Game::setRenderTarget(ID2D1HwndRenderTarget* renderTarget) {
	m_renderTarget = renderTarget;
	m_renderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::White, 1.0f), &m_brushPaddel);
	m_renderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::Green, 1.0f), &m_brushBall);
}

void Game::toggleDraw() {
	m_draw = !m_draw;
}

void Game::nextColor() {
	m_currentCollor = (m_currentCollor + 1) % m_colorCount;
}


void Game::draw() {
	drawPoints();
	drawBrush(m_pos);
}

void Game::drawBrush(glm::vec2 p1) {
	// draw actual cursor
	auto rect = D2D1::Rect(
		p1.x - m_brushWidth / 2.0f,
		p1.y - m_brushSize / 2.0f,
		p1.x + m_brushWidth / 2.0f,
		p1.y + m_brushSize / 2.0f
	);

	m_renderTarget->CreateSolidColorBrush(m_colors[m_currentCollor], &m_brushBall);
	m_renderTarget->FillRectangle(rect, m_brushBall);

	m_renderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::White, 1.0f), &m_brushBall);
	m_renderTarget->DrawRectangle(rect, m_brushBall);
}

void Game::drawPoints() {
	for (size_t i = 0; i < m_points.size(); ++i) {
		auto circle = D2D1::Ellipse(
			D2D1::Point2F(m_points[i].x, m_points[i].y),
			m_brushSize,
			m_brushSize
		);
		m_renderTarget->CreateSolidColorBrush(m_pointColors[i], &m_brushBall);
		m_renderTarget->FillEllipse(circle, m_brushBall);
	}
}

void Game::spawnPoint() {
	m_points.push_back(m_pos);
	m_pointColors.push_back(m_colors[m_currentCollor]);
}

void Game::update(glm::vec2 pos, ID2D1HwndRenderTarget* renderTarget) {
	m_pos = pos;

	setRenderTarget(renderTarget);
	m_renderTarget->BeginDraw();
	m_renderTarget->Clear();

	if (m_draw)
		spawnPoint();

	draw();


	HRESULT hr = m_renderTarget->EndDraw();
}
