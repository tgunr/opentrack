set(opentrack_install-debug-info TRUE CACHE INTERNAL "" FORCE)

add_compile_options(
    -ferror-limit=1
    -Weverything -Werror=implicit-function-declaration
    -Werror
    -Wno-c++11-compat -Wno-c++14-compat -Wno-c++98-compat-pedantic
    -Wno-shadow -Wno-old-style-cast
    -Wno-return-std-move-in-c++11 -Wno-exit-time-destructors -Wno-switch-enum
    -Wno-global-constructors -Wno-missing-prototypes
    -Wno-covered-switch-default -Wno-zero-length-array
    -Wno-weak-vtables -Wno-weak-template-vtables
    -Wno-padded -Wno-shadow-field -Wno-shorten-64-to-32
    -Wno-sign-conversion
    -Wno-extra-semi-stmt # for qt moc
)

set(base-flags "-Wall -Wextra -Wpedantic")
set(CMAKE_C_FLAGS "-std=c11 ${base-flags} -ggdb ${CMAKE_C_FLAGS}")
set(CMAKE_CXX_FLAGS "-std=c++17 ${base-flags} -ggdb ${CMAKE_CXX_FLAGS}")

set(opt-flags "-O3 -ffast-math -march=native -flto=thin")

set(CMAKE_CXX_FLAGS_RELEASE "${opt-flags} ${CMAKE_CXX_FLAGS_RELEASE}")
set(CMAKE_C_FLAGS_RELEASE "${opt-flags} ${CMAKE_C_FLAGS_RELEASE}")

set(CMAKE_CXX_FLAGS_DEBUG "-ggdb ${CMAKE_CXX_FLAGS_DEBUG}")
set(CMAKE_C_FLAGS_DEBUG "-ggdb ${CMAKE_C_FLAGS_DEBUG}")

set(CMAKE_LINKER "ld.lld")

