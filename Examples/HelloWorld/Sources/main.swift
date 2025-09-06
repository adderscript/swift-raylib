import Raylib

Raylib.initWindow(800, 600, "Hello World")
Raylib.setTargetFPS(60)

while !window.shouldClose {
    Raylib.beginDrawing()
    Raylib.clearBackground(Color.black)
    Raylib.drawText("Hello, World", 100.0, 100.0, 20.0, Color.white)
    Raylib.endDrawing()
}

window.close()
