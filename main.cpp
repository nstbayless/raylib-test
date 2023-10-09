#include <raylib.h>

int main() {
    // Initialization
    InitWindow(800, 600, "Raylib Window");

    // Main game loop
    while (!WindowShouldClose()) {
        // Update
        // TODO: Update your variables here

        // Draw
        BeginDrawing();
        ClearBackground(RAYWHITE);
        // TODO: Draw your stuff here
        EndDrawing();
    }

    // De-Initialization
    CloseWindow();

    return 0;
}
