import Raylib

public struct Player {
    // transform
    var position: Vector2
    let scale: Float = 8.0
    var rotation: Float = 0.0

    // movement
    let jumpVelocity: Float = -400.0
    var yVelocity: Float = 0.0

    // physics
    let gravity: Float = 15.0

    // sprite
    let sprite = Raylib.loadTexture("assets/player.png")
    let origin = Vector2(0.5, 0.5)

    init(_ position: Vector2) {
        self.position = position
    }

    mutating func update(_ dt: Float) {
        // apply gravity or jump
        if Raylib.isKeyPressed(.space) {
            yVelocity = jumpVelocity
        } else {
            yVelocity += gravity
        }

        // apply velocity
        position.y += yVelocity * dt

        // rotate towards velocity
        rotation = yVelocity / 50.0
    }

    func draw() {
        Raylib.drawTextureBetter(sprite, position, rotation, scale, origin, Color.white)
    }
}
