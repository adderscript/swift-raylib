import CRaylib

public struct Rectangle {
    public var x: Float
    public var y: Float
    public var width: Float
    public var height: Float

    public init(_ x: Float, _ y: Float, _ width: Float, _ height: Float) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }

    var cValue: CRaylib.Rectangle {
        return CRaylib.Rectangle(x: x, y: y, width: width, height: height)
    }
}
