#include <Nexus.h>

using namespace Nexus;

int main(int argc, char *argv[]) {
  Window::s_api = Window::API::GLFW;
  auto window = Window::create();
  glClearColor(0.2f, 0.3f, 0.3f, 1.0f);

  window->setVSync(true);
  window->whileOpen([]() {
    glClear(GL_COLOR_BUFFER_BIT);
  });
}
