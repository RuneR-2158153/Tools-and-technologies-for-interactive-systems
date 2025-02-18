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


void Game::updateBallPositions() {
	for (int i = 0; i < m_balls.size(); i++) {
		m_balls[i].x += m_ballDirs[i].x;
		m_balls[i].y += m_ballDirs[i].y;
		if (m_balls[i].x < 0 || m_balls[i].x > m_windowWidth) {
			m_ballDirs[i].x *= -1;
		}
		if (m_balls[i].y < 0 || m_balls[i].y > m_windowHeight) {
			m_ballDirs[i].y *= -1;
		}
	}
}

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
	auto rect = D2D1::Rect(
		p1.x - m_paddelWidth / 2,
		p1.y - m_p1Size / 2,
		p1.x + m_paddelWidth / 2,
		p1.y + m_p1Size / 2
	);

	m_renderTarget->FillRectangle(rect, m_brushPaddel);
}

void Game::drawPeddelP2(glm::vec2 p2) {
	auto rect = D2D1::Rect(
		p2.x - m_paddelWidth / 2,
		p2.y - m_p2Size / 2,
		p2.x + m_paddelWidth / 2,
		p2.y + m_p2Size / 2
	);

	m_renderTarget->FillRectangle(rect, m_brushPaddel);
}

void Game::drawBalls() {

	for (auto& ball : m_balls) {
		auto circle = D2D1::Ellipse(
			D2D1::Point2F(ball.x, ball.y),
			m_ballSize,
			m_ballSize
		);
		m_renderTarget->FillEllipse(circle, m_brushBall);
	}

}

void Game::spawnBallP1() {

}

void Game::spawnBallP2() {

}

void Game::update(glm::vec2 p1, glm::vec2 p2, ID2D1HwndRenderTarget* renderTarget) {
	setRenderTarget(renderTarget);
	m_renderTarget->BeginDraw();
	m_renderTarget->Clear();

	updateBallPositions();

	drawPeddelP1(p1);
	drawPeddelP2(p2);
	drawBalls();


	HRESULT hr = m_renderTarget->EndDraw();
}
