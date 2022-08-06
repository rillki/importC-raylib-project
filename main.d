module main;

void main() {
    import raylib;

	InitWindow(640, 480, "importC");
	while(!WindowShouldClose()) {
        BeginDrawing();
        {
            ClearBackground(darkbrown);
            DrawText("hello, importC!", 120, 100, 60, white);
            DrawText("D", 50, 200, 210, red);
            DrawText("+ Raylib", 210, 240, 100, orange);
        }
        EndDrawing();
    }
    CloseWindow();
}
