cmake_minimum_required(VERSION 3.12)
project(helloworld VERSION 0.0.0)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)  # Group CMake targets inside a folder
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)         # Generate compile_commands.json for language servers

# source files and includes
set(TARGET helloworld)
set(TARGET_SOURCE_FILES
    "${PROJECT_SOURCE_DIR}/src/main.cpp"
)
add_executable(${PROJECT_NAME} ${TARGET_SOURCE_FILES})
target_include_directories(${PROJECT_NAME} PRIVATE
    "${PROJECT_SOURCE_DIR}/src"
)
target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
if (NOT MSVC)
    target_compile_options(${PROJECT_NAME} PRIVATE
        "-Wall"
        "-Wextra"
        "-Wconversion"
        "-Wpedantic"
        "-Wshadow"
        "-Werror"
    )
else()
    target_compile_options(${PROJECT_NAME} PRIVATE
        "/W4"
        "/WX"
    )
endif()

source_group(TREE "${CMAKE_CURRENT_LIST_DIR}" FILES ${TARGET_SOURCE_FILES})
