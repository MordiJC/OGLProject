# Locate the GLFW library (version 3.0)
# This module defines the following variables:
# GLFW_LIBRARIES, the name of the library;
# GLFW_INCLUDE_DIRS, where to find GLFW include files.
# GLFW_FOUND, true if library path was resolved
#
# Usage example to compile an "executable" target to the glfw library:
#
# FIND_PACKAGE (GLFW3 REQUIRED)
# INCLUDE_DIRECTORIES (${GLFW3_INCLUDE_DIR})
# ADD_EXECUTABLE (executable ${YOUR_EXECUTABLE_SRCS})
# TARGET_LINK_LIBRARIES (executable ${GLFW3_LIBRARIES})
#
# TODO:
# Allow the user to select to link to a shared library or to a static library.
#
# 

FIND_PATH( GLFW3_INCLUDE_DIR GLFW/glfw3.h
    "$ENV{GLFWDIR}/include"
    "/usr/local/include"
    "/usr/local/X11R6/include"
    "/usr/X11R6/include"
    "/usr/X11/include"
    "/usr/include/X11"
    "/usr/include"
    "/opt/X11/include"
    "/opt/include"
	"$ENV{PROGRAMFILES}/GLFW/include"
	"$ENV{PROGRAMFILES\(x86\)}/GLFW/include"
	)

FIND_LIBRARY( GLFW3_LIBRARIES NAMES glfw3 PATHS
    "$ENV{GLFWDIR}/lib"
    "$ENV{GLFWDIR}/support/msvc80/Debug"
    "$ENV{GLFWDIR}/support/msvc80/Release"
    "/usr/local/lib"
    "/usr/local/X11R6/lib"
    "/usr/X11R6/lib"
    "/usr/X11/lib"
    "/usr/lib/X11"
    "/usr/lib"
    "/opt/X11/lib"
    "/opt/lib"
	"$ENV{PROGRAMFILES}/GLFW/lib"
	"$ENV{PROGRAMFILES\(x86\)}/GLFW/lib"
	)

SET(GLFW3_FOUND "NO")
IF(GLFW3_LIBRARIES AND GLFW3_INCLUDE_DIR)
    SET(GLFW3_FOUND "YES")
ENDIF(GLFW3_LIBRARIES AND GLFW3_INCLUDE_DIR)
