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
		checkCollisions();;
	}
}

void Game::checkCollisions() {
	for (int i = 0; i < m_balls.size(); i++) {
		// Win state
		if (m_balls[i].x - m_ballSize < 0) {
			m_scoreP2++;
			m_balls.erase(m_balls.begin() + i);
			m_ballDirs.erase(m_ballDirs.begin() + i);
		}
		if (m_balls[i].x + m_ballSize > m_windowWidth) {
			m_scoreP1++;
			m_balls.erase(m_balls.begin() + i);
			m_ballDirs.erase(m_ballDirs.begin() + i);
		}

		// Collision with paddles
		if (m_balls[i].x - m_ballSize < m_paddelWidth / 2.0f) {
			if (m_balls[i].y > m_p1Pos.y - m_p1Size / 2.0f && m_balls[i].y < m_p1Pos.y + m_p1Size / 2.0f) {
				m_ballDirs[i].x *= -1;
			}
			if (m_balls[i].y > m_p2Pos.y - m_p2Size / 2.0f && m_balls[i].y < m_p2Pos.y + m_p2Size / 2.0f) {
				m_ballDirs[i].x *= -1;
			}
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

void Game::draw() {
	drawPeddelP1(m_p1Pos);
	drawPeddelP2(m_p2Pos);
	drawBalls();
}

void Game::drawPeddelP1(glm::vec2 p1) {
	auto rect = D2D1::Rect(
		p1.x - m_paddelWidth / 2.0f,
		p1.y - m_p1Size / 2.0f,
		p1.x + m_paddelWidth / 2.0f,
		p1.y + m_p1Size / 2.0f
	);

	m_renderTarget->FillRectangle(rect, m_brushPaddel);
}

void Game::drawPeddelP2(glm::vec2 p2) {
	auto rect = D2D1::Rect(
		p2.x - m_paddelWidth / 2.0f,
		p2.y - m_p2Size / 2.0f,
		p2.x + m_paddelWidth / 2.0f,
		p2.y + m_p2Size / 2.0f
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
	m_balls.push_back(m_p1Pos + glm::vec2(m_paddelWidth / 2 + m_ballSize + 3.0f, 0.0f));
	m_ballDirs.push_back(glm::vec2(rand() / RAND_MAX, rand() / RAND_MAX));
}

void Game::spawnBallP2() {
	m_balls.push_back(m_p2Pos + glm::vec2(m_paddelWidth / 2 + m_ballSize + 3.0f, 0.0f));
	m_ballDirs.push_back(glm::vec2(-(rand() / RAND_MAX), rand() / RAND_MAX));
}

void Game::update(glm::vec2 p1, glm::vec2 p2, ID2D1HwndRenderTarget* renderTarget) {
	m_p1Pos = p1;
	m_p2Pos = p2;

	setRenderTarget(renderTarget);
	m_renderTarget->BeginDraw();
	m_renderTarget->Clear();

	updateBallPositions();

	draw();


	HRESULT hr = m_renderTarget->EndDraw();
}
