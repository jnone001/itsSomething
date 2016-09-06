cmake_minimum_required(VERSION 3.5)
project(itsSomething)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/bin)

set(SDL2_PATH ${SDL2_PATH} "${PROJECT_SOURCE_DIR}/dependencies/SDL2")
set(SDL2_INCLUDE_PATH ${SDL2_INCLUDE_PATH} "${SDL2_PATH}/include")

include_directories("${SDL2_INCLUDE_PATH}")

find_library(SDL2 sdl2)

set(SOURCE_FILES src/main.cpp)
add_executable(itsSomething ${SOURCE_FILES})

target_link_libraries(itsSomething ${SDL2})