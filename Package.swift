// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "raylib-swift",
    products: [
        .library(name: "Raylib", targets: ["Raylib"])
    ],
    targets: [
        .systemLibrary(
            name: "CRaylib",
            path: "Sources/CRaylib",
            pkgConfig: "raylib",
            providers: [
                .brew(["raylib"]),
                .apt(["libraylib-dev"]),
            ]
        ),
        .target(
            name: "Raylib",
            dependencies: ["CRaylib"],
            path: "Sources/Raylib",
            cSettings: [
                .headerSearchPath("../CRaylib/include")
            ]
        ),
    ]
)
