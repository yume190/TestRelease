// swift-tools-version:5.0

import PackageDescription
import Foundation

let package = Package(
    name: "swift-numerics",
    products: [
        .library(
            name: "ComplexModule",
            targets: ["ComplexModule_Aggregation"]
        ),
        .library(
            name: "Numerics",
            targets: ["Numerics_Aggregation"]
        ),
        .library(
            name: "RealModule",
            targets: ["RealModule_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "ComplexModule_Aggregation",
            dependencies: [.target(name: "ComplexModule"), "RealModule_Aggregation"]
        ),
        .binaryTarget(
            name: "ComplexModule",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/214649535.zip",
            checksum: "5feb0a52439e0f6533cb199650f1381c50417fbb322f45385bd1781d229f583e"
        ),
        .target(
            name: "Numerics_Aggregation",
            dependencies: [
                .target(name: "Numerics"),
                "ComplexModule_Aggregation",
                "RealModule_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Numerics",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/214649536.zip",
            checksum: "2aaeb0610beaf196203264991b0e2fadcf10d418447011810c6fe503c596b215"
        ),
        .target(
            name: "RealModule_Aggregation",
            dependencies: [.target(name: "RealModule"), "_NumericsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "RealModule",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/214649537.zip",
            checksum: "197aea48419440531af42a1a5b254766976859ac26c98b8615c211a74d350205"
        ),
        .target(
            name: "_NumericsShims_Aggregation",
            dependencies: [.target(name: "_NumericsShims")]
        ),
        .binaryTarget(
            name: "_NumericsShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/214649538.zip",
            checksum: "844ca0e39ea5f672b058e29ebadf4828d63b698ddb81763463e72987facbb7f0"
        )
    ]
)