// swift-tools-version:6.0

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "DebugOnlyMacro",
    products: [
        .library(
            name: "DebugOnly",
            targets: ["DebugOnly_Aggregation"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-precompiled/swift-syntax",
            "600.0.0"..<"601.0.0"
        )
    ],
    targets: [
        .target(
            name: "DebugOnly_Aggregation",
            dependencies: [.target(name: "DebugOnly"), "DebugOnlyMacro"]
        ),
        .binaryTarget(
            name: "DebugOnly",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210943022.zip",
            checksum: "2200875ca3d11411628ef5a5c0852a642f67e38d6ab071103b3770309b729af0"
        ),
        .macro(
            name: "DebugOnlyMacro",
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
            path: "Macros/DebugOnlyMacro"
        )
    ]
)