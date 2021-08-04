cmake_minimum_required(VERSION 3.15)

project (llvm-tutorial)
set (CMAKE_CXX_STANDARD 17)

set (CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/module)

find_package (LLVM)

add_executable (toy src/toy.cpp)
target_include_directories (toy PRIVATE 
    ${LLVM_SOURCE_DIR}/include 
    ${LLVM_BINARY_DIR}/include
)
target_link_libraries (toy 
    LLVMCore
    LLVMRemarks
    LLVMBitstreamReader
    LLVMBinaryFormat
    LLVMSupport
    LLVMDemangle
    pthread
    dl
    m
    z
)
target_compile_options (toy PRIVATE "-fno-exceptions" -fno-rtti)
target_link_options (toy PRIVATE
    "-static-libstdc++"
    "-static-libgcc"    
)

