cmake_minimum_required(VERSION 3.10)
project(fpga_udp_receiver)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -march=native -Wall -Wextra")

add_executable(udp_receiver src/main.cpp)

# Configuración para Linux de alto rendimiento
target_compile_options(udp_receiver PRIVATE -pthread)
target_link_libraries(udp_receiver PRIVATE pthread)

# Opcional: Configuración para testing
enable_testing()
add_subdirectory(test)