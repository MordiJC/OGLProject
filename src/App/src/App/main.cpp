#include <iostream>
#include <chrono>
#include <cmath>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

int main()
{
    if(!glfwInit()) {
        std::cerr << "Failed to initialize GLFW" << std::endl << "Terminating" << std::endl;
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 0);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_FALSE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    GLFWwindow* window = glfwCreateWindow(800, 600, "Window Titiel", NULL, NULL);

    glfwMakeContextCurrent(window);

    if(!gladLoadGLLoader(reinterpret_cast<GLADloadproc>(glfwGetProcAddress))) {
        std::cerr << "Failed to initialize OpenGL context." << std::endl << "Terminating" << std::endl;
        return -1;
    }

    std::chrono::time_point<std::chrono::system_clock> start;
    start = std::chrono::system_clock::now();

    glClearColor(0.1f, 0.2f, 0.3f, 1.0f);

    while(!glfwWindowShouldClose(window)) {
        double elapsed_seconds = (static_cast<std::chrono::duration<double> >(std::chrono::system_clock::now()-start)).count();
        glClearColor(
                    static_cast<float>(fabs(sin(elapsed_seconds))),
                    static_cast<float>(fabs(sin(elapsed_seconds*0.6+M_PI/2))),
                    static_cast<float>(fabs(sin(elapsed_seconds*.8+M_PI/3))),
                    1.0);
        glClear(GL_COLOR_BUFFER_BIT);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();

    return 0;
}
