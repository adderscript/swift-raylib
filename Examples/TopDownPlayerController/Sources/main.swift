import Raylib

Raylib.initWindow(800, 600, "Top Down Player Controller")
Raylib.setTargetFPS(60)

var player = Player(position: Vector2(400, 300))

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
}

func draw() {
    player.draw()
}

Raylib.closeWindow()
