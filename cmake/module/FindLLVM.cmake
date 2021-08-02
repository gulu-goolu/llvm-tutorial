include (FetchContent)

FetchContent_Declare(llvm
    URL https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.1/llvm-12.0.1.src.tar.xz
)
FetchContent_MakeAvailable(llvm)
