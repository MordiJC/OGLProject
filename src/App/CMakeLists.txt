project(App LANGUAGES CXX)

add_executable(${PROJECT_NAME}
    "${PROJECT_SOURCE_DIR}/src/App/main.cpp"
)

target_include_directories(${PROJECT_NAME}
    PRIVATE
    "${PROJECT_SOURCE_DIR}/include/"
    "${PROJECT_SOURCE_DIR}/src/App/Impl"
    "${GLFW3_INCLUDE_DIR}"
)

target_link_libraries(App
    OGLProject::GLAD
    ${GLFW3_LIBRARIES}
    )
#    OGLProject::Core
#    OGLPRoject::Render
#    OGLProject::Window)
