# C-Plus-Plus Scripting Project

![](https://img.shields.io/badge/build-passing-green.svg) ![](https://img.shields.io/badge/Premake-5-green.svg) ![](https://img.shields.io/badge/C++-17-orange.svg) ![](https://img.shields.io/badge/LUA-5.3-blue.svg)

 - A simple c-plus-plus project using Chaiscript made on top of the [C-Plus-Plus Starter Project](https://github.com/thiago-rezende/c-plus-plus-starter-project).
 
 - Project structure
 ```
    .
    ├── bin                    # Binaries will be here.
    ├── obj                    # Object files will be here.
    ├── cpp-proj               # The main project.
    │   └── src                # Source folder.
    │       ├── main.cpp       # Your code goes here.
    |       └── cpp-proj.make  # Project makefile
    ├── vendor                 # Third Party goes here.
    ├── premake5.lua           # Build script `run premake in the same dir as this file`.
    └── Makefile               # Main Makefile.
```
 ### How to Use
 - first download premake5 [here](https://premake.github.io/download.html#v5) and read the Wiki tutorial [here](https://github.com/premake/premake-core/wiki/Using-Premake)
 - execute the following commands
 
     ```
     git clone https://github.com/thiago-rezende/c-plus-plus-scripting.git
     cd c-plus-plus-scripting
     'run premake5 here'
     ``` 
 
 - Compatibility
 
 | Toolset  |    Windows    |     Linux     |     MacOS     |
 |:--------:|:-------------:|:-------------:|:-------------:|
 | GCC      |    Passing    |      WIP      |   Not Tested  |
 | LLVM     |      WIP      |      WIP      |   Not Tested  |
 | MSVC     |      WIP      |    -------    |   ----------  |
