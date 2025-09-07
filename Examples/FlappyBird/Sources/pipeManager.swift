import Raylib

public struct PipeManager {
    // spawing
    var pipes: [Pipe] = []
    let spawnPositionRange = Vector2(200.0, 650.0)
    let spawnPositionOffset: Float = 50.0
    let spawnDelaySeconds: Float = 2.0
    var spawnTimer: Float = 0.0

    init() {}

    mutating func update(_ dt: Float) {
        // update pipes
        for i in pipes.indices {
            pipes[i].update(dt)
        }

        // delete all flagged as should remove
        pipes.removeAll { $0.shouldRemove }

        // spawn pipe on timer
        if spawnTimer >= spawnDelaySeconds {
            spawnPipe()
            spawnTimer = 0.0
        } else {
            spawnTimer += dt
        }
    }

    func draw() {
        // draw pipes
        for i in pipes.indices {
            pipes[i].draw()
        }
    }

    mutating func spawnPipe() {
        // set spawn position
        let position = Vector2(
            1280.0 + spawnPositionOffset,
            Float.random(in: spawnPositionRange.x...spawnPositionRange.y)
        )

        // create new pipe
        let pipe = Pipe(position)
        pipes.append(pipe)
    }
}
