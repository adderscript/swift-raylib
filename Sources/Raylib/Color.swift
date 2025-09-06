import CRaylib

public enum Color {
    case red
    case green
    case blue
    case white
    case black
    case custom(UInt8, UInt8, UInt8, UInt8)

    public var cValue: CRaylib.Color {
        switch self {
        case .red:   return CRaylib.Color(r: 230, g: 41,  b: 55,  a: 255)
        case .green: return CRaylib.Color(r: 0,   g: 228, b: 48,  a: 255)
        case .blue:  return CRaylib.Color(r: 0,   g: 121, b: 241, a: 255)
        case .white: return CRaylib.Color(r: 245, g: 245, b: 245, a: 255)
        case .black: return CRaylib.Color(r: 0,   g: 0,   b: 0,   a: 255)
        case let .custom(r, g, b, a):
            return CRaylib.Color(r: r, g: g, b: b, a: a)
        }
    }
}

