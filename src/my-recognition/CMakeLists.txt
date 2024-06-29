# **********************************************************
#      2024 : Arthur JEULIN
#      Copyright (c) Arthur JEULIN
#      Created by Arthur JEULIN on 06/28/2024.
# **********************************************************
cmake_minimum_required(VERSION 3.27.5)


# import jetson-inference and jetson-utils packages.
# note that if you didn't do "sudo make install"
# while building jetson-inference, this will error.
find_package(jetson-utils REQUIRED)
find_package(jetson-inference REQUIRED)

# CUDA is required
set(CUDA_DIR "/usr/local/cuda")
# find_package(CUDA REQUIRED)
find_package(vpi 2.3 REQUIRED)
find_package(CUDA)
# compile the my-recognition program
add_executable(my-recognition my-recognition.cpp)
target_include_directories(my-recognition PUBLIC
    "/usr/local/cuda/include")

# add directory for libnvbuf-utils to program
link_directories("/usr/lib/aarch64-linux-gnu/tegra")
link_directories("/usr/local/cuda/lib64")
link_directories("/opt/nvidia/vpi2/lib/aarch64-linux-gnu")

# link my-recognition to jetson-inference library
target_link_libraries(my-recognition jetson-inference vpi
"/opt/nvidia/vpi2/lib/aarch64-linux-gnu/libnvvpi.so.2.3.9")