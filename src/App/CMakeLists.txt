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

FILE(GLOB_RECURSE HeaderFiles "${PROJECT_SOURCE_DIR}/include/*.hpp")
add_custom_target(Headers
    SOURCES "${HeaderFiles}"
)

FILE(GLOB_RECURSE ImplHeaderFiles "${PROJECT_SOURCE_DIR}/src/App/Impl/*.hpp")
add_custom_target(Impl-Headers
    SOURCES "${ImplHeaderFiles}"
)

target_link_libraries(App
    OGLProject::GLAD
    ${GLFW3_LIBRARIES}
    )
#    OGLProject::Core
#    OGLPRoject::Render
#    OGLProject::Window)
