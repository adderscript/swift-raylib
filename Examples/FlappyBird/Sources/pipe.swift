import Raylib

public struct Pipe {
    var shouldRemove: Bool = false

    // transform
    var position: Vector2
    var scale: Float = 8.0

    // movement
    let speed: Float = 250.0
    let offset: Float = -50.0

    // collision
    var collider1: Rectangle
    var collider2: Rectangle
    let gap: Float = 250.0

    // sprite
    let sprite = Raylib.loadTexture("assets/pipe.png")
    let origin = Vector2(0.5, 0.5)

    init(_ position: Vector2) {
        self.position = position
        self.collider1 = Rectangle(0, 0, 0, 0)
        self.collider2 = Rectangle(0, 0, 0, 0)
    }

    mutating func update(_ dt: Float) {
        // constantly move left
        position.x -= speed * dt

        // if out of bounds delete
        if position.x < offset {
            shouldRemove = true
        }

        // update collider
        let pipeWidth = Float(sprite.width) * scale
        let pipeHeight = Float(sprite.height) * scale
        let halfPipeWidth = pipeWidth / 2

        collider1 = Rectangle(position.x - halfPipeWidth, position.y - gap / 2 - pipeHeight, pipeWidth, pipeHeight)
        collider2 = Rectangle(position.x - halfPipeWidth, position.y + gap / 2, pipeWidth, pipeHeight)
    }

    func draw() {
        Raylib.drawTextureBetter(sprite, position, 0.0, scale, origin, Color.white)
    }
}
