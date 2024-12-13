// swift-tools-version:5.9

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "Engine",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .macCatalyst(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "Engine",
            targets: ["Engine_Aggregation"]
        ),
        .library(
            name: "EngineCore",
            targets: ["EngineCore_Aggregation"]
        ),
        .library(
            name: "EngineCoreC",
            targets: ["EngineCoreC_Aggregation"]
        ),
        .library(
            name: "EngineMacros",
            targets: ["EngineMacros_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-syntax",
            "509.0.0"..<"600.1.1"
        )
    ],
    targets: [
        .target(
            name: "Engine_Aggregation",
            dependencies: [.target(name: "Engine"), "EngineCore_Aggregation"]
        ),
        .binaryTarget(
            name: "Engine",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213094592.zip",
            checksum: "ef6b664472cd307939ba9393d603b0c081bec5385644946b7751bc47be98151f"
        ),
        .target(
            name: "EngineCore_Aggregation",
            dependencies: [.target(name: "EngineCore"), "EngineCoreC_Aggregation"]
        ),
        .binaryTarget(
            name: "EngineCore",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213094597.zip",
            checksum: "873a6a607d6d55152c9dc3e688fdea83a40b74b104f9ebdcf27727e000c30f3e"
        ),
        .target(
            name: "EngineCoreC_Aggregation",
            dependencies: [.target(name: "EngineCoreC")]
        ),
        .binaryTarget(
            name: "EngineCoreC",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213094602.zip",
            checksum: "6867f337a0c10d83cb093c86d422a1f9c3860e63ddbb756e8d5b12f53af74fab"
        ),
        .target(
            name: "EngineMacros_Aggregation",
            dependencies: [
                .target(name: "EngineMacros"),
                "Engine_Aggregation",
                "EngineMacrosCore"
            ]
        ),
        .binaryTarget(
            name: "EngineMacros",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213094603.zip",
            checksum: "4d4f90780ad7525953528d828bc31caf9a49f071a0b3d72a8a8be5be27963dcc"
        ),
        .macro(
            name: "EngineMacrosCore",
            dependencies: [
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                )
            ],
            path: "Macros/EngineMacrosCore"
        )
    ]
)
