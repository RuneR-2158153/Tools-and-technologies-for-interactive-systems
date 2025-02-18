#include "Game.h"

void Game::enlargePeddelP1() {
	if (m_p1Size != m_windowHeight) {
		m_p1Size += 1;
	}
}

void Game::enlargePeddelP2() {
	if (m_p2Size != m_windowHeight) {
		m_p2Size += 1;
	}
}

void Game::shrinkPeddelP1() {
	if (m_p1Size != 0) {
		m_p1Size -= 1;
	}
}

void Game::shrinkPeddelP2() {
	if (m_p2Size != 0) {
		m_p2Size -= 1;
	}
}

void Game::drawPeddelP1(glm::vec2 p1) {

}

void Game::drawPeddelP2(glm::vec2 p2) {

}

void Game::drawBalls() {

}

void Game::update(glm::vec2 p1, glm::vec2 p2, ID2D1HwndRenderTarget* renderTarget) {
	// create render brush
	ID2D1SolidColorBrush* brush;
	renderTarget->CreateSolidColorBrush(D2D1::ColorF(D2D1::ColorF::White, 1.0f), &brush);

	renderTarget->BeginDraw();
	renderTarget->Clear();

	D2D1_ELLIPSE ellipse = D2D1::Ellipse(
		D2D1::Point2F(100.0f, 200.0f),
		m_ballSize,
		m_ballSize
	);

	renderTarget->DrawEllipse(ellipse, brush);

	HRESULT hr = renderTarget->EndDraw();
	brush->Release();
}
