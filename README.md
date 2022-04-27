# C/C++ Template

C/C++ `cmake` and `premake5` template. The project is structure by default with
main `workspace` and different `subprojects`. For `premake5` it is recommended
to use the project as is, but it can also be collapse into just a one
`premake5.lua` file and a `src` directory in the root. The `CMake` version with
`helloworld` project can be use standalone.

## CMake

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

## Premake

Generate `Makefile` with `premake5`

```
premake5 gmake2
```

