import Raylib

Raylib.initWindow(1280, 720, "Flappy Bird")
Raylib.setTargetFPS(60)

var pipeManager = PipeManager()
let playerStartPos = Vector2(150.0, 360.0)
var player = Player(playerStartPos)

while !Raylib.windowShouldClose() {
    let dt: Float = Raylib.getFrameTime()
    update(dt)

    Raylib.beginDrawing()
    Raylib.clearBackground(Color.black)
    draw()
    Raylib.endDrawing()
}

func update(_ dt: Float) {
    pipeManager.update(dt)
    player.update(dt, pipeManager)

    if player.dead {
        resetGame()
    }
}

func draw() {
    pipeManager.draw()
    player.draw()
}

func resetGame() {
    player.position = playerStartPos
    player.yVelocity = 0.0
    player.dead = false

    pipeManager.pipes.removeAll()
}
