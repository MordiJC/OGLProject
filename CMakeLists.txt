cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

project(OGLProject VERSION "1.0.0" LANGUAGES CXX)

# For installing libraries in correct locations.
include(GNUInstallDirs)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/CMake/modules")

# Find all required libraries
find_package(OpenGL 3.3 REQUIRED)
add_library(OpenGL INTERFACE IMPORTED)
set_property(TARGET OpenGL PROPERTY INTERFACE_INCLUDE_DIRECTORIES "${OpenGL_INCLUDE_DIR}")

find_package(GLFW3 REQUIRED)

# Add include/ directory
include_directories(AFTER "${PROJECT_SOURCE_DIR}/include")

option(TESTING "Enable testing" OFF)

if(TESTING)
    enable_testing()
endif()

# Add subdirectory with subprojects
add_subdirectory(src)

# EXAMPLE MODULES: https://github.com/Kitware/CMake/tree/master/Modules
