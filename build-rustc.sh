#!/usr/bin/env bash

# X86_64 Linux GNU (native)
export CC_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/clang"
export CXX_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/clang++"
export AR_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_x86_64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_x86_64_unknown_linux_gnu="-fuse-ld=lld -std=gnu23 -O3 -DNDEBUG -fPIC"
export CXXFLAGS_x86_64_unknown_linux_gnu="-fuse-ld=lld -std=c++17 -O3 -DNDEBUG -fPIC -nostdinc++ -nostdlib++ -isystem /home/mccakit/dev/libcxx/native/include/c++/v1"
export LDFLAGS_x86_64_unknown_linux_gnu="-fuse-ld=lld -nostdlib++ -rtlib=compiler-rt /home/mccakit/dev/libcxx/native/lib/libunwind.a /home/mccakit/dev/libcxx/native/lib/libc++abi.a /home/mccakit/dev/libcxx/native/lib/libc++.a"

# AArch64 Linux GNU (cross-compile)
export CC_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/clang"
export CXX_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/clang++"
export AR_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_unknown_linux_gnu="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_aarch64_unknown_linux_gnu="-fuse-ld=lld -std=gnu23 --target=aarch64-unknown-linux-gnu --sysroot=/home/mccakit/dev/sysroots/debian-arm64 -O3 -DNDEBUG -fPIC"
export CXXFLAGS_aarch64_unknown_linux_gnu="-fuse-ld=lld -std=c++17 --target=aarch64-unknown-linux-gnu --sysroot=/home/mccakit/dev/sysroots/debian-arm64 -O3 -DNDEBUG -fPIC -nostdinc++ -nostdlib++ -isystem /home/mccakit/dev/libcxx/debian-arm64/include/c++/v1"
export LDFLAGS_aarch64_unknown_linux_gnu="--target=aarch64-unknown-linux-gnu --sysroot=/home/mccakit/dev/sysroots/debian-arm64 -rtlib=compiler-rt -fuse-ld=lld -L/home/mccakit/dev/libcxx/debian-arm64/lib /home/mccakit/dev/libcxx/debian-arm64/lib/libc++.a /home/mccakit/dev/libcxx/debian-arm64/lib/libc++abi.a /home/mccakit/dev/libcxx/debian-arm64/lib/libunwind.a"

# X86_64 Linux MUSL (native)
MUSL_X64=/home/mccakit/dev/musl/x64
LIBCXX_MUSL_X64=/home/mccakit/dev/libcxx/x86_64-unknown-linux-musl
export CC_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/clang"
export CXX_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/clang++"
export AR_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_x86_64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_x86_64_unknown_linux_musl="--target=x86_64-unknown-linux-musl -std=c23 -fPIC -O3 -DNDEBUG -nostdinc -isystem $MUSL_X64/include"
export CXXFLAGS_x86_64_unknown_linux_musl="--target=x86_64-unknown-linux-musl -std=c++17 -fPIC -O3 -DNDEBUG -nostdinc -nostdinc++ -isystem $LIBCXX_MUSL_X64/include/c++/v1 -isystem $MUSL_X64/include"
export LDFLAGS_x86_64_unknown_linux_musl="-static -fuse-ld=lld $MUSL_X64/lib/crt1.o $MUSL_X64/lib/crti.o -nostdlib -L$MUSL_X64/lib -lc -rtlib=compiler-rt -L/home/mccakit/dev/compiler-rt/x86_64-unknown-linux-musl/lib/linux -lclang_rt.builtins-x86_64 -nostdlib++ -L$LIBCXX_MUSL_X64/lib -lunwind -lc++abi -lc++ $MUSL_X64/lib/crtn.o"


# AArch64 Linux MUSL (cross-compile)
MUSL_ARM64=/home/mccakit/dev/musl/arm64
LIBCXX_MUSL_ARM64=/home/mccakit/dev/libcxx/aarch64-unknown-linux-musl
export CC_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/clang"
export CXX_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/clang++"
export AR_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_unknown_linux_musl="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_aarch64_unknown_linux_musl="--target=aarch64-unknown-linux-musl -std=c23 -fPIC -O3 -DNDEBUG --sysroot=/home/mccakit/dev/sysroots/debian-arm64 -nostdinc -isystem $MUSL_ARM64/include"
export CXXFLAGS_aarch64_unknown_linux_musl="--target=aarch64-unknown-linux-musl -std=c++17 -fPIC -O3 -DNDEBUG --sysroot=/home/mccakit/dev/sysroots/debian-arm64 -nostdinc -nostdinc++ -isystem $LIBCXX_MUSL_ARM64/include/c++/v1 -isystem $MUSL_ARM64/include"
export LDFLAGS_aarch64_unknown_linux_musl="-static -fuse-ld=lld --sysroot=/home/mccakit/dev/sysroots/debian-arm64 $MUSL_ARM64/lib/crt1.o $MUSL_ARM64/lib/crti.o -nostdlib -L$MUSL_ARM64/lib -lc -rtlib=compiler-rt -L/home/mccakit/dev/compiler-rt/aarch64-unknown-linux-musl/lib/linux -lclang_rt.builtins-aarch64 -nostdlib++ -L$LIBCXX_MUSL_ARM64/lib -lunwind -lc++abi -lc++ $MUSL_ARM64/lib/crtn.o"


# x86_64 Mingw
export CC_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/clang"
export CXX_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/clang++"
export AR_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export RC_x86_64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-windres --preprocessor-arg=-I/home/mccakit/dev/sysroots/llvm-mingw-x64/x86_64-w64-mingw32/include"
export CFLAGS_x86_64_pc_windows_gnullvm="-fuse-ld=lld -std=gnu23 --target=x86_64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/x86_64-w64-mingw32 -O3 -DNDEBUG -fPIC"
export CXXFLAGS_x86_64_pc_windows_gnullvm="-fuse-ld=lld -std=c++17 --target=x86_64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/x86_64-w64-mingw32 -O3 -DNDEBUG -fPIC -nostdinc++ -nostdlib++ -isystem /home/mccakit/dev/libcxx/mingw-x64/include/c++/v1"
export LDFLAGS_x86_64_pc_windows_gnullvm="--target=x86_64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/x86_64-w64-mingw32 -rtlib=compiler-rt -fuse-ld=lld -L/home/mccakit/dev/sysroots/llvm-mingw-x64/x86_64-w64-mingw32/lib /home/mccakit/dev/libcxx/mingw-x64/lib/libc++.a /home/mccakit/dev/libcxx/mingw-x64/lib/libc++abi.a /home/mccakit/dev/libcxx/mingw-x64/lib/libunwind.a"

# AArch64 Mingw
export CC_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/clang"
export CXX_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/clang++"
export AR_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export RC_aarch64_pc_windows_gnullvm="/home/mccakit/dev/llvm/bin/llvm-windres --preprocessor-arg=-I/home/mccakit/dev/sysroots/llvm-mingw-x64/aarch64-w64-mingw32/include"
export CFLAGS_aarch64_pc_windows_gnullvm="-fuse-ld=lld -std=gnu23 --target=aarch64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/aarch64-w64-mingw32 -O3 -DNDEBUG -fPIC"
export CXXFLAGS_aarch64_pc_windows_gnullvm="-fuse-ld=lld -std=c++17 --target=aarch64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/aarch64-w64-mingw32 -O3 -DNDEBUG -fPIC -nostdinc++ -nostdlib++ -isystem /home/mccakit/dev/libcxx/mingw-arm64/include/c++/v1"
export LDFLAGS_aarch64_pc_windows_gnullvm="--target=aarch64-w64-mingw32 --sysroot=/home/mccakit/dev/sysroots/llvm-mingw-x64/aarch64-w64-mingw32 -rtlib=compiler-rt -fuse-ld=lld -L/home/mccakit/dev/sysroots/llvm-mingw-x64/aarch64-w64-mingw32/lib /home/mccakit/dev/libcxx/mingw-arm64/lib/libc++.a /home/mccakit/dev/libcxx/mingw-arm64/lib/libc++abi.a /home/mccakit/dev/libcxx/mingw-arm64/lib/libunwind.a"

# X64 MSVC
export CC_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/clang-cl"
export CXX_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/clang-cl"
export AR_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_x86_64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_x86_64_pc_windows_msvc="-fuse-ld=lld-link /std:c23 --target=x86_64-pc-windows-msvc /winsysroot /home/mccakit/dev/sysroots/msvc-wine /MD /O2 /DNDEBUG"
export CXXFLAGS_x86_64_pc_windows_msvc="-fuse-ld=lld-link /std:c++17 --target=x86_64-pc-windows-msvc /winsysroot /home/mccakit/dev/sysroots/msvc-wine /MD /O2 /DNDEBUG /I/home/mccakit/dev/libcxx/windows-x64/include/c++/v1"
export LDFLAGS_x86_64_pc_windows_msvc="/machine:x64 /winsysroot:/home/mccakit/dev/sysroots/msvc-wine /home/mccakit/dev/libcxx/windows-x64/lib/libc++.lib"

# ARM64 MSVC
export CC_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/clang-cl"
export CXX_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/clang-cl"
export AR_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_pc_windows_msvc="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_aarch64_pc_windows_msvc="-fuse-ld=lld-link /std:c23 --target=aarch64-pc-windows-msvc /winsysroot /home/mccakit/dev/sysroots/msvc-wine /MD /O2 /DNDEBUG"
export CXXFLAGS_aarch64_pc_windows_msvc="-fuse-ld=lld-link /std:c++17 --target=aarch64-pc-windows-msvc /winsysroot /home/mccakit/dev/sysroots/msvc-wine /MD /O2 /DNDEBUG /I/home/mccakit/dev/libcxx/windows-arm64/include/c++/v1"
export LDFLAGS_aarch64_pc_windows_msvc="/machine:arm64 /winsysroot:/home/mccakit/dev/sysroots/msvc-wine /home/mccakit/dev/libcxx/windows-arm64/lib/libc++.lib"

# X64 macOS
export CC_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/clang"
export CXX_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/clang++"
export AR_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_x86_64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_x86_64_apple_darwin="-std=c23 -fPIC --target=x86_64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 -O2 -DNDEBUG"
export CXXFLAGS_x86_64_apple_darwin="-std=c++17 -fPIC --target=x86_64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 -nostdinc++ -isystem /home/mccakit/dev/libcxx/macos-x64/include/c++/v1 -O2 -DNDEBUG"
export LDFLAGS_x86_64_apple_darwin="-fuse-ld=lld --target=x86_64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 /home/mccakit/dev/libcxx/macos-x64/lib/libc++.a /home/mccakit/dev/libcxx/macos-x64/lib/libc++abi.a /home/mccakit/dev/libcxx/macos-x64/lib/libunwind.a /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/17/lib/darwin/libclang_rt.osx.a"

# ARM64 macOS
export CC_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/clang"
export CXX_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/clang++"
export AR_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_apple_darwin="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_aarch64_apple_darwin="-std=c23 -fPIC --target=aarch64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 -O3 -DNDEBUG"
export CXXFLAGS_aarch64_apple_darwin="-std=c++17 -fPIC --target=aarch64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 -nostdinc++ -isystem /home/mccakit/dev/libcxx/macos-arm64/include/c++/v1 -O3 -DNDEBUG"
export LDFLAGS_aarch64_apple_darwin="-fuse-ld=lld --target=aarch64-apple-darwin -isysroot /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -mmacosx-version-min=14.0 /home/mccakit/dev/libcxx/macos-arm64/lib/libc++.a /home/mccakit/dev/libcxx/macos-arm64/lib/libc++abi.a /home/mccakit/dev/libcxx/macos-arm64/lib/libunwind.a /home/mccakit/dev/sysroots/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/17/lib/darwin/libclang_rt.osx.a"

# ARM64 Android
export CC_aarch64_linux_android="/home/mccakit/dev/llvm/bin/clang"
export CXX_aarch64_linux_android="/home/mccakit/dev/llvm/bin/clang++"
export AR_aarch64_linux_android="/home/mccakit/dev/llvm/bin/llvm-ar"
export RANLIB_aarch64_linux_android="/home/mccakit/dev/llvm/bin/llvm-ranlib"
export STRIP_aarch64_linux_android="/home/mccakit/dev/llvm/bin/llvm-strip"
export DLLTOOL_aarch64_linux_android="/home/mccakit/dev/llvm/bin/llvm-dlltool"
export CFLAGS_aarch64_linux_android="-std=gnu23 --target=aarch64-none-linux-android30 --sysroot=/home/mccakit/dev/android-clt/ndk/29.0.13599879/toolchains/llvm/prebuilt/linux-x86_64/sysroot -O3 -DNDEBUG -fPIC"
export CXXFLAGS_aarch64_linux_android="-std=c++17 --target=aarch64-none-linux-android30 --sysroot=/home/mccakit/dev/android-clt/ndk/29.0.13599879/toolchains/llvm/prebuilt/linux-x86_64/sysroot -O3 -DNDEBUG -fPIC -nostdinc++ -nostdlib++ -isystem /home/mccakit/dev/libcxx/android-arm64/include/c++/v1"
export LDFLAGS_aarch64_linux_android="-fuse-ld=lld --target=aarch64-none-linux-android30 --sysroot=/home/mccakit/dev/android-clt/ndk/29.0.13599879/toolchains/llvm/prebuilt/linux-x86_64/sysroot /home/mccakit/dev/libcxx/android-arm64/lib/libc++abi.a /home/mccakit/dev/libcxx/android-arm64/lib/libc++_static.a -L/home/mccakit/dev/android-clt/ndk/29.0.13599879/toolchains/llvm/prebuilt/linux-x86_64/lib/clang/20/lib/linux/aarch64"

# WASM32 Emscripten
export CC_wasm32_unknown_emscripten="/home/mccakit/dev/emscripten/emcc"
export CXX_wasm32_unknown_emscripten="/home/mccakit/dev/emscripten/em++"
export AR_wasm32_unknown_emscripten="/home/mccakit/dev/emscripten/emar"
export RANLIB_wasm32_unknown_emscripten="/home/mccakit/dev/emscripten/emranlib"
export STRIP_wasm32_unknown_emscripten="/home/mccakit/dev/emscripten/emstrip"
export CFLAGS_wasm32_unknown_emscripten="-std=gnu23 -sUSE_PTHREADS=1 -O3 -DNDEBUG -fPIC -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"
export CXXFLAGS_wasm32_unknown_emscripten="-std=c++17 -sUSE_PTHREADS=1 -O3 -DNDEBUG -fPIC -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"
export LDFLAGS_wasm32_unknown_emscripten="-sUSE_PTHREADS=1 -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"

# WASM64 Emscripten
export CC_wasm64_unknown_emscripten="/home/mccakit/dev/emscripten/emcc"
export CXX_wasm64_unknown_emscripten="/home/mccakit/dev/emscripten/em++"
export AR_wasm64_unknown_emscripten="/home/mccakit/dev/emscripten/emar"
export RANLIB_wasm64_unknown_emscripten="/home/mccakit/dev/emscripten/emranlib"
export STRIP_wasm64_unknown_emscripten="/home/mccakit/dev/emscripten/emstrip"
export CFLAGS_wasm64_unknown_emscripten="-std=gnu23 -sMEMORY64=1 -sUSE_PTHREADS=1 -O3 -DNDEBUG -fPIC -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"
export CXXFLAGS_wasm64_unknown_emscripten="-std=c++17 -sMEMORY64=1 -sUSE_PTHREADS=1 -O3 -DNDEBUG -fPIC -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"
export LDFLAGS_wasm64_unknown_emscripten="-sMEMORY64=1 -sUSE_PTHREADS=1 -sALLOW_MEMORY_GROWTH -sINITIAL_MEMORY=256MB"
