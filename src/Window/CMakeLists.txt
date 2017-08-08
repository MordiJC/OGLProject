project(Window VERSION 1.0 LANGUAGES CXX)

set(SOURCES
    "Window.cpp"
    )

set(IMPL_SOURCES
    )

PREPEND(SOURCES_WITH_PATH "src/${PROJECT_NAME}" "${SOURCES}")
PREPEND(IMPL_SOURCES_WITH_PATH "src/${PROJECT_NAME}/Impl" "${IMPL_SOURCES}")

add_library(${PROJECT_NAME}
    "${SOURCES_WITH_PATH}"
    "${IMPL_SOURCES_WITH_PATH}")

add_library(OGLProject::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

target_include_directories(${PROJECT_NAME}
    PUBLIC "${PROJECT_SOURCE_DIR}/include"
    PRIVATE "${PROJECT_SOURCE_DIR}/src/${PROJECT_NAME}/Impl"
    )
