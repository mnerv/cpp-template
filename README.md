# C/C++ Template

C/C++ **cmake**, **meson** and  **premake5** template. The project is structure
by default with main *workspace* and different *subprojects*.

For **premake5** it is recommended to use the project as is, but it can also be
collapse into just a one `premake5.lua` file and a `src` directory in the root.

The **CMake** version with `helloworld` project can be use standalone. For use
with IDE like Visual Studio and Xcode.

**Meson** version is recommended to use as is. It does not have the same feature
as *cmake*'s subdirectory but can be use like premake5's `include` with `subdir`
but with limited use. Don't use meson for building Xcode and Visual Studio build
system as it is not supported as great as *cmake*.

## CMake

Checkout [fractal](https://github.com/mnerv/fractals) repository for usage with libraries.

**cmake**

```
cmake -S . -Bbuild
```

```
cmake --build build -j4
```

**ninja**

```
cmake -S . -Bbuild -GNinja
```

```
ninja -C build
```

## meson

```
meson setup build
```

Use `ninja` the same as cmake.

## Premake

Generate `Makefile` with `premake5`

```
premake5 gmake2
```

