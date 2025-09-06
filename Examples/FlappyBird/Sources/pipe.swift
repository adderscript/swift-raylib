import Raylib

public struct Pipe {
    // transform
    var position: Vector2
    var scale: Float = 8.0

    // movement
    let speed: Float = 250.0

    // sprite
    let sprite = Raylib.loadTexture("assets/pipe.png")
    let origin = Vector2(0.5, 0.5)

    init(_ position: Vector2) {
        self.position = position
    }

    mutating func update(_ dt: Float) {
        // constantly move left
        position.x -= speed * dt
    }

    func draw() {
        Raylib.drawTextureBetter(sprite, position, 0.0, scale, origin, Color.white)
    }
}
