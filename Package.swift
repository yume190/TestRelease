// swift-tools-version:5.9

import PackageDescription
import Foundation
import CompilerPluginSupport

let package = Package(
    name: "Engine",
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
    dependencies: [.package(path: "../swift-syntax")],
    targets: [
        .target(
            name: "Engine_Aggregation",
            dependencies: [.target(name: "Engine"), "EngineCore_Aggregation"]
        ),
        .binaryTarget(
            name: "Engine",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213075205.zip",
            checksum: "d34edfee0db9bd727619a38447aa579a3fa558a5875699d3fcac1dfd145c9e9e"
        ),
        .target(
            name: "EngineCore_Aggregation",
            dependencies: [.target(name: "EngineCore"), "EngineCoreC_Aggregation"]
        ),
        .binaryTarget(
            name: "EngineCore",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213075207.zip",
            checksum: "94a20790e1d4426881e1c41436be33cfa3ed7c262a023c15ae41d31eba1caf5a"
        ),
        .target(
            name: "EngineCoreC_Aggregation",
            dependencies: [.target(name: "EngineCoreC")]
        ),
        .binaryTarget(
            name: "EngineCoreC",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213075209.zip",
            checksum: "42ed765a4a049c8fb3c950371105e16222eb6894514d2ea88a1479769ac3ab50"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/213075210.zip",
            checksum: "ede384c85b8c620164bff04f45759f744d8448e573c98548bfe541648de27f75"
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