cmake_minimum_required(VERSION 3.15)

project(Kinect CXX)



add_executable(Kinect "${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp")
add_subdirectory(lib/Nexus)
target_include_directories(Kinect PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(Kinect PRIVATE Nexus)