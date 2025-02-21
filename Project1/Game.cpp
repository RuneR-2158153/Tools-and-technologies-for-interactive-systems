#include "Game.h"

Game::~Game() {
	m_brushBall->Release();
}

void Game::setRenderTarget(ID2D1HwndRenderTarget* renderTarget) {
	m_renderTarget = renderTarget;
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
	for (size_t i = 0; i < m_ellipses.size(); ++i) {
		m_renderTarget->FillEllipse(m_ellipses[i], m_brushes[i]);
	}
}

void Game::spawnPoint() {
	auto circle = D2D1::Ellipse(
		D2D1::Point2F(m_pos.x, m_pos.y),
		m_brushSize,
		m_brushSize
	);
	m_ellipses.push_back(circle);
	ID2D1SolidColorBrush* brush;
	m_renderTarget->CreateSolidColorBrush(m_colors[m_currentCollor], &brush);
	m_brushes.push_back(brush);
}

void Game::update(glm::vec2 pos, ID2D1HwndRenderTarget* renderTarget) {
	m_pos = pos;

	setRenderTarget(renderTarget);
	m_renderTarget->BeginDraw();
	m_renderTarget->Clear();

	ID2D1SolidColorBrush* brush;
	m_renderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::LightBlue, 1.0f), &brush);
	auto rc = D2D1::Rect(0,0, m_windowWidth, m_windowHeight);

	m_renderTarget->FillRectangle(rc, brush); // Paint background manually

	if (m_draw)
		spawnPoint();

	draw();


	HRESULT hr = m_renderTarget->EndDraw();
}
