cmake_minimum_required(VERSION 3.12)
project(helloworld VERSION 0.0.0)

# output location
if (NOT WORKSPACE_LOCATION)
    set(WORKSPACE_LOCATION ".")
endif()
# default build type
if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE "debug")
endif()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${WORKSPACE_LOCATION}/bin/${CMAKE_BUILD_TYPE}/${PROJECT_NAME}")

# compilation flags
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_STANDARD 17)

# warnings and errors
if (NOT MSVC)
    string(JOIN " " CMAKE_CXX_FLAGS
        ${CMAKE_CXX_FLAGS}
        "-Wall"
        "-Wextra"
        "-Wconversion"
        "-Wpedantic"
        "-Werror"
    )
else()
    string(JOIN " " CMAKE_CXX_FLAGS
        ${CMAKE_CXX_FLAGS}
        "/W4"
        "/WX"
    )
endif()

# source files and includes
file(GLOB_RECURSE TARGET_SOURCE_FILES
    "${PROJECT_SOURCE_DIR}/src/*.h"
    "${PROJECT_SOURCE_DIR}/src/*.hpp"
    "${PROJECT_SOURCE_DIR}/src/*.cpp"
)
add_executable(${PROJECT_NAME} ${TARGET_SOURCE_FILES})
include_directories(${PROJECT_NAME} "${PROJECT_SOURCE_DIR}/src")
source_group(TREE "${CMAKE_CURRENT_LIST_DIR}" FILES ${TARGET_SOURCE_FILES})

