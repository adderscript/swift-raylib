import Raylib

struct Player {
    var position: Vector2
    var speed: Float = 150.0

    init(position: Vector2) {
        self.position = position
    }

    mutating func update(_ dt: Float) {
        if Raylib.isKeyDown(.d) {
            position.x += speed * dt
        } else if Raylib.isKeyDown(.a) {
            position.x -= speed * dt
        }
        if Raylib.isKeyDown(.s) {
            position.y += speed * dt
        } else if Raylib.isKeyDown(.w) {
            position.y -= speed * dt
        }
    }

    func draw() {
        Raylib.drawRectangleV(position, Vector2(20.0, 20.0), Color.white)
    }
}
