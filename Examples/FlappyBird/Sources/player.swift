import Raylib

public struct Player {
    // transform
    var position: Vector2
    let scale: Float = 8.0
    var rotation: Float = 0.0

    // movement
    let jumpVelocity: Float = -400.0
    var yVelocity: Float = 0.0

    // health
    var dead: Bool = false

    // physics
    var collider: Rectangle
    let colliderScale: Float = 0.75
    let gravity: Float = 15.0

    // sprite
    let sprite = Raylib.loadTexture("assets/player.png")
    let origin = Vector2(0.5, 0.5)

    init(_ position: Vector2) {
        self.position = position
        self.collider = Rectangle(position.x, position.y, scale, scale)
    }

    mutating func update(_ dt: Float, _ pipeManager: PipeManager) {
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

        // check if colliding with pipe
        for pipe in pipeManager.pipes {
            if Raylib.checkCollisionRecs(collider, pipe.collider1) || Raylib.checkCollisionRecs(collider, pipe.collider2) {
                dead = true
            }
        }

        // check if out of bounds
        if position.y > 1280.0 || position.y < 0 {
            dead = true
        }

        // update collider
        collider = Rectangle(position.x - Float(sprite.width) * scale / 2, position.y - Float(sprite.height) * scale / 2, Float(sprite.width) * scale, Float(sprite.height) * scale)
    }

    func draw() {
        Raylib.drawTextureBetter(sprite, position, rotation, scale, origin, Color.white)
    }
}
