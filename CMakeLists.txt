cmake_minimum_required(VERSION 3.12)
project(cpp-template)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)  # Group CMake targets inside a folder
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)         # Generate compile_commands.json for language servers
set(WORKSPACE_LOCATION "${PROJECT_SOURCE_DIR}")

add_subdirectory(helloworld)
