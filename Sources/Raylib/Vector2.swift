import CRaylib

public struct Vector2 {
    public var x: Float
    public var y: Float

    public init(_ x: Float, _ y: Float) {
        self.x = x
        self.y = y
    }

    var cValue: CRaylib.Vector2 {
        return CRaylib.Vector2(x: x, y: y)
    }

    public static func + (lhs: Vector2, rhs: Vector2) -> Vector2 {
        return Vector2(lhs.x + rhs.x, lhs.y + rhs.y)
    }
}

