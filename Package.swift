// swift-tools-version:5.10

import PackageDescription
import Foundation

let package = Package(
    name: "SwiftUIX",
    products: [
        .library(
            name: "SwiftUIX",
            targets: ["_SwiftUIX_Aggregation", "SwiftUIX_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "_SwiftUIX_Aggregation",
            dependencies: [.target(name: "_SwiftUIX")]
        ),
        .binaryTarget(
            name: "_SwiftUIX",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210958207.zip",
            checksum: "aae015726f1e61e77005f8150ec39b0f0d9ef1b1adbbbfd653108f4bc03582bf"
        ),
        .target(
            name: "SwiftUIX_Aggregation",
            dependencies: [.target(name: "SwiftUIX"), "_SwiftUIX_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftUIX",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210958214.zip",
            checksum: "a12b66774648ca90e0e8bf7b9c4241d5ff046a6ffe0e546ee4e45e3d49b15581"
        )
    ]
)