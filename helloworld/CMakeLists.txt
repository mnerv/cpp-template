cmake_minimum_required(VERSION 3.10)
project(helloworld)

# output location
if (NOT DEFINED WORKSPACE_LOCATION)
    set(WORKSPACE_LOCATION ".")
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/bin/${PROJECT_NAME}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/lib/${PROJECT_NAME}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/lib/${PROJECT_NAME}")

# compilation flags
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_STANDARD 17)

if (NOT MSVC)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic -Wconversion -Werror")
else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4 /WX")
endif()

# source files and includes
file(GLOB SRC_FILES "${PROJECT_SOURCE_DIR}/src/*.cpp")
add_executable(${PROJECT_NAME} ${SRC_FILES})
include_directories(${PROJECT_NAME} "${PROJECT_SOURCE_DIR}/src")

