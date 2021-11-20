include (FetchContent)

FetchContent_Declare(llvm
    URL https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.1/llvm-12.0.1.src.tar.xz
)
if(NOT llvm_POPULATED)
    FetchContent_Populate(llvm)
    add_subdirectory(${llvm_SOURCE_DIR} ${LLVM_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()
