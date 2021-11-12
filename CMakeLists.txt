cmake_minimum_required(VERSION 3.12)

#project(main LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#set(CMAKE_CUDA_STANDARD 14)
#set(CMAKE_CUDA_STANDARD_REQUIRED ON)

find_package(OpenCL REQUIRED)

#find_package(Argumentum CONFIG REQUIRED)

#find_path(ARGUMENTUM_INCLUDE argumentum/argparse.h)

#add_executable(main main.cpp common.cpp cuda.cu opencl.cpp test.cpp)
add_executable(main main.cpp common.cpp opencl.cpp test.cpp benchmark.cpp)
configure_file(kernels/ocl_kernel.cl kernels/ocl_kernel.cl)
configure_file(kernels/kernels.cl kernels/kernels.cl)
configure_file(kernels/kernels.csv kernels/kernels.csv)

#target_include_directories(main PRIVATE ${ARGUMENTUM_INCLUDE})

#target_link_libraries(main PRIVATE Argumentum::argumentum)
target_include_directories(main PRIVATE ${PROJECT_SOURCE_DIR})

#et_property(TARGET main PROPERTY CUDA_ARCHITECTURES 60)

target_link_libraries(main PRIVATE OpenCL::OpenCL)