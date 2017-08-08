project(GLAD VERSION 1.0 LANGUAGES C)

add_library(${PROJECT_NAME} STATIC "${PROJECT_SOURCE_DIR}/src/GLAD/glad.c")

add_library(OGLProject::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME}
    PUBLIC "${PROJECT_SOURCE_DIR}/include"
)
