gcc -E raylib.c > raylib.i
dmd main.d raylib.i -L=-lraylib
./main

