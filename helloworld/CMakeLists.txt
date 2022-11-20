cmake_minimum_required(VERSION 3.12)
project(helloworld VERSION 0.0.0)
set_property(GLOBAL PROPERTY USE_FOLDERS ON)  # Group CMake targets inside a folder
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)         # Generate compile_commands.json for language servers

if (NOT MSVC)
    set(TARGET_OPTIONS
        "-Wall"
        "-Wextra"
        "-Wconversion"
        "-Wpedantic"
        "-Wshadow"
        "-Werror"
    )
else()
    string(JOIN " " TARGET_DEFINTIONS
        ${TARGET_DEFINTIONS}
        "_WIN32_WINNT=0x0A00"
    )
    set(TARGET_OPTIONS
        "/W4"
        "/WX"
    )
endif()

# source files and includes
set(TARGET_NAME hellworld)
set(TARGET_SOURCE_FILES
    "${PROJECT_SOURCE_DIR}/src/main.cpp"
)
add_executable(${TARGET_NAME} ${TARGET_SOURCE_FILES})
target_include_directories(${TARGET_NAME} PRIVATE "${PROJECT_SOURCE_DIR}/src")
# target_compile_definitions(${TARGET_NAME} PRIVATE ${TARGET_DEFINTIONS})
target_compile_features(${TARGET_NAME} PRIVATE cxx_std_20)
# target_link_libraries(${TARGET_NAME} PUBLIC Threads::Threads)  # find_package(Threads)
source_group(TREE "${CMAKE_CURRENT_LIST_DIR}" FILES ${TARGET_SOURCE_FILES})
