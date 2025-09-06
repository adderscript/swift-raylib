import CRaylib

public enum Raylib {
    // window ------------------------------------------------------------------
    public static func initWindow(_ width: Int32, _ height: Int32, _ title: String) {
        CRaylib.InitWindow(width, height, title)
    }

    public static func setTargetFPS(_ fps: Int32) {
        CRaylib.SetTargetFPS(fps)
    }

    public static func windowShouldClose() -> Bool {
        return CRaylib.WindowShouldClose()
    }

    public static func closeWindow() {
        CRaylib.CloseWindow()
    }

    public static func getFrameTime() -> Float {
        return CRaylib.GetFrameTime()
    }

    // input ------------------------------------------------------------------
    public static func isKeyDown(_ key: Key) -> Bool {
        return CRaylib.IsKeyDown(key.cValue)
    }

    public static func isKeyPressed(_ key: Key) -> Bool {
        return CRaylib.IsKeyPressed(key.cValue)
    }

    // drawing ----------------------------------------------------------------
    public static func beginDrawing() {
        CRaylib.BeginDrawing()
    }

    public static func endDrawing() {
        CRaylib.EndDrawing()
    }

    public static func clearBackground(_ color: Color) {
        CRaylib.ClearBackground(color.cValue)
    }

    public static func drawText(_ text: String, _ x: Float, _ y: Float, _ size: Float, _ color: Color) {
        text.withCString { cString in
            CRaylib.DrawText(cString, Int32(x), Int32(y), Int32(size), color.cValue)
        }
    }

    public static func drawRectangle(_ x: Float, _ y: Float, _ width: Float, _ height: Float, _ color: Color) {
        CRaylib.DrawRectangle(Int32(x), Int32(y), Int32(width), Int32(height), color.cValue)
    }

    public static func drawRectangleV(_ pos: Vector2, _ size: Vector2, _ color: Color) {
        CRaylib.DrawRectangle(Int32(pos.x), Int32(pos.y), Int32(size.x), Int32(size.y), color.cValue)
    }

    public static func drawCircle(_ x: Float, _ y: Float, _ radius: Float, _ color: Color) {
        CRaylib.DrawCircle(Int32(x), Int32(y), radius, color.cValue)
    }

    public static func drawCircleV(_ pos: Vector2, _ radius: Float, _ color: Color) {
        CRaylib.DrawCircle(Int32(pos.x), Int32(pos.y), radius, color.cValue)
    }

    // textures ----------------------------------------------------------------
    public static func loadTexture(_ fileName: String) -> Texture2D {
        return CRaylib.LoadTexture(fileName)
    }

    public static func drawTexture(_ texture: Texture2D, _ x: Float, _ y: Float, _ tint: Color) {
        CRaylib.DrawTexture(texture, Int32(x), Int32(y), tint.cValue)
    }

    public static func drawTextureV(_ texture: Texture2D, _ pos: Vector2, _ tint: Color) {
        CRaylib.DrawTexture(texture, Int32(pos.x), Int32(pos.y), tint.cValue)
    }

    public static func drawTextureEx(_ texture: Texture2D, _ pos: Vector2, _ rotation: Float, _ scale: Float, _ tint: Color) {
        CRaylib.DrawTextureEx(texture, CRaylib.Vector2(x: pos.x, y: pos.y), rotation, scale, tint.cValue)
    }

    public static func drawTextureBetter(_ texture: Texture2D, _ pos: Vector2, _ rotation: Float, _ scale: Float, _ baseOrigin: Vector2, _ tint: Color) {
        let sourceRect = CRaylib.Rectangle(x: 0, y: 0, width: Float(texture.width), height: Float(texture.height))
        let destRect = CRaylib.Rectangle(x: pos.x, y: pos.y, width: Float(texture.width) * scale, height: Float(texture.height) * scale)
        let origin = CRaylib.Vector2(x: (Float(texture.width) * scale) * baseOrigin.x, y: (Float(texture.height) * scale) * baseOrigin.y)
        CRaylib.DrawTexturePro(texture, sourceRect, destRect, origin, rotation, tint.cValue)
    }
}
