cmake_minimum_required(VERSION 3.10)
project(LU-decomposition)

set(CMAKE_CXX_STANDARD 11)

# Find OpenMP
find_package(OpenMP REQUIRED)
if(OpenMP_CXX_FOUND)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
endif()

add_executable(LU-decomposition main.cpp)

# Link OpenMP libraries
target_link_libraries(LU-decomposition OpenMP::OpenMP_CXX)
