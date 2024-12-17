// swift-tools-version:5.9

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "Engine",
    platforms: [
        .iOS("13.0"),
        .macCatalyst("13.0"),
        .macOS("10.15"),
        .tvOS("13.0"),
        .visionOS("1.0"),
        .watchOS("6.0")
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213852206.zip",
            checksum: "b2ea5adea6a66b397354ed296dad46680f616c44404e814d6974862bb95dc35f"
        ),
        .target(
            name: "EngineCore_Aggregation",
            dependencies: [.target(name: "EngineCore"), "EngineCoreC_Aggregation"]
        ),
        .binaryTarget(
            name: "EngineCore",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213852209.zip",
            checksum: "4827aa7f64b75e95abda2d3552e6860b1c345d13863d18d220c87c95f4d61385"
        ),
        .target(
            name: "EngineCoreC_Aggregation",
            dependencies: [.target(name: "EngineCoreC")]
        ),
        .binaryTarget(
            name: "EngineCoreC",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213852210.zip",
            checksum: "5025bb21fe2301f358bc207119f8cb0f7316ad81b46c35a22d4e64a67744484a"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213852211.zip",
            checksum: "5548024e300fd55202a8b71e88da44cccc3de80d68d7576b51222dbe544af6b9"
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