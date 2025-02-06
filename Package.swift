// swift-tools-version:5.5

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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/226803300.zip",
            checksum: "3a40a93920df774d3c5aeedd1546ec23bb03cfedc7e93bf2a70ee1317891c49b"
        ),
        .target(
            name: "Numerics_Aggregation",
            dependencies: [
                .target(name: "Numerics"),
                "ComplexModule_Aggregation",
                "IntegerUtilities_Aggregation",
                "RealModule_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Numerics",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/226803307.zip",
            checksum: "412d4c374bcc085847e2cb32fc3f4ab4d968c52f5dba7d15c14b5c9d951db86a"
        ),
        .target(
            name: "RealModule_Aggregation",
            dependencies: [.target(name: "RealModule"), "_NumericsShims_Aggregation"]
        ),
        .binaryTarget(
            name: "RealModule",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/226803314.zip",
            checksum: "0ece19dcf269d1d155a246d46a524edef8ca8ce5f67b89aecf6244f986ae4151"
        ),
        .target(
            name: "_NumericsShims_Aggregation",
            dependencies: [.target(name: "_NumericsShims")]
        ),
        .binaryTarget(
            name: "_NumericsShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/226803323.zip",
            checksum: "dc3abf5815c7362a76f5611a2e4050d30456475f0be82383cb833d7a6f2d69f2"
        ),
        .target(
            name: "IntegerUtilities_Aggregation",
            dependencies: [.target(name: "IntegerUtilities")]
        ),
        .binaryTarget(
            name: "IntegerUtilities",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/226803331.zip",
            checksum: "f17ababbed5de22515a7437b8c8f6cfedba2dc54e2efa5f53bd2a6bb02b27b11"
        )
    ]
)