# imporC | D + Raylib project
This project uses D's imporC feature to directly interface with Raylib. No bindings are used, just the `raylib.h` header file and Raylib static library.

### Requirements
* [D](https://dlang.org/download) compiler
* [Raylib](https://github.com/raysan5/raylib/releases) library (you can use the precompiled binaries)

Also check out how to set up [D/Raylib project with DUB](https://github.com/rillki/d-raylib-project-template).

### Building the project
#### Project layout
```
project-folder
    |--- main.d
    |--- raylib.c
```

`main.d` contains a simple window example code.

`raylib.c` includes `raylib.h` and contains global constants that 're-define' `#defines`.

#### Building and running
Step 1: run the preproccessor on `raylib.c`
```
gcc -E raylib.c > raylib.i
```

It will output the preprocessed `raylib.i` file.

Note: importC is a C11 compiler embedded into D, but it does not have a preprocessor. So we have to preprocess the C file manually.

Step 2: building the final app
```
dmd main.d raylib.i -L=-lraylib
```

We compile our project using the D source file and the `raylib.i` preprocessed file. Do not forget to link with Raylib as well.

Step 3: running the app
```
./main
```

Alternatively, you may use the `drun.sh` script to do all of the above in one go:
```
sh drun.sh
```

#### Results
<img src="imgs/result.png" align="center"></img>

## LICENSE
The license used is MIT.
