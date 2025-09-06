import Foundation
import Raylib

Raylib.initWindow(1280, 720, "Flappy Bird")
Raylib.setTargetFPS(60)

var player = Player(Vector2(150.0, 160.0))
var pipeManager = PipeManager()

while !Raylib.windowShouldClose() {
    let dt: Float = Raylib.getFrameTime()
    update(dt)

    Raylib.beginDrawing()
    Raylib.clearBackground(Color.black)
    draw()
    Raylib.endDrawing()
}

func update(_ dt: Float) {
    player.update(dt)
    pipeManager.update(dt)
}

func draw() {
    player.draw()
    pipeManager.draw()
}
