// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FlappyBird",
    platforms: [
        .macOS(.v10_15), .iOS(.v13), .tvOS(.v13),
    ],
    dependencies: [
        .package(name: "raylib-swift", path: "../../")
    ],
    targets: [
        .executableTarget(
            name: "FlappyBird",
            dependencies: [
                .product(name: "Raylib", package: "raylib-swift")
            ],
            path: "Sources"
        )
    ]
)
