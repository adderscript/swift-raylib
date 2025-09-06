public enum Key {
    // Letters
    case a, b, c, d, e, f, g, h, i, j, k, l, m
    case n, o, p, q, r, s, t, u, v, w, x, y, z
    
    // Numbers
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    // Function keys
    case f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12
    
    // Arrows
    case up, down, left, right
    
    // Misc
    case space, enter, escape, backspace, tab, capsLock, leftShift, rightShift
    case leftControl, rightControl, leftAlt, rightAlt, leftSuper, rightSuper
    case insert, delete, home, end, pageUp, pageDown
    
    // Symbols
    case comma, period, semicolon, apostrophe, slash, backslash, minus, equal, leftBracket, rightBracket, graveAccent

    public var cValue: Int32 {
        switch self {
        // Letters
        case .a: return 65
        case .b: return 66
        case .c: return 67
        case .d: return 68
        case .e: return 69
        case .f: return 70
        case .g: return 71
        case .h: return 72
        case .i: return 73
        case .j: return 74
        case .k: return 75
        case .l: return 76
        case .m: return 77
        case .n: return 78
        case .o: return 79
        case .p: return 80
        case .q: return 81
        case .r: return 82
        case .s: return 83
        case .t: return 84
        case .u: return 85
        case .v: return 86
        case .w: return 87
        case .x: return 88
        case .y: return 89
        case .z: return 90

        // Numbers
        case .zero: return 48
        case .one: return 49
        case .two: return 50
        case .three: return 51
        case .four: return 52
        case .five: return 53
        case .six: return 54
        case .seven: return 55
        case .eight: return 56
        case .nine: return 57

        // Arrows
        case .up: return 265
        case .down: return 264
        case .left: return 263
        case .right: return 262

        // Function keys
        case .f1: return 290
        case .f2: return 291
        case .f3: return 292
        case .f4: return 293
        case .f5: return 294
        case .f6: return 295
        case .f7: return 296
        case .f8: return 297
        case .f9: return 298
        case .f10: return 299
        case .f11: return 300
        case .f12: return 301

        // Misc
        case .space: return 32
        case .enter: return 257
        case .escape: return 256
        case .backspace: return 259
        case .tab: return 258
        case .capsLock: return 280
        case .leftShift: return 340
        case .rightShift: return 344
        case .leftControl: return 341
        case .rightControl: return 345
        case .leftAlt: return 342
        case .rightAlt: return 346
        case .leftSuper: return 343
        case .rightSuper: return 347
        case .insert: return 260
        case .delete: return 261
        case .home: return 268
        case .end: return 269
        case .pageUp: return 266
        case .pageDown: return 267

        // Symbols
        case .comma: return 44
        case .period: return 46
        case .semicolon: return 59
        case .apostrophe: return 39
        case .slash: return 47
        case .backslash: return 92
        case .minus: return 45
        case .equal: return 61
        case .leftBracket: return 91
        case .rightBracket: return 93
        case .graveAccent: return 96
        }
    }
}

