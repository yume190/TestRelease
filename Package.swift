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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210959806.zip",
            checksum: "9484432201604d88fe6a910cd4e09f737a5ed6e154ab4963037371ddae1db484"
        ),
        .target(
            name: "SwiftUIX_Aggregation",
            dependencies: [.target(name: "SwiftUIX"), "_SwiftUIX_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftUIX",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210959819.zip",
            checksum: "4f58f49912dafd44ee9e1c67e64377cf091b52de4ec6db8e2a67e63d978edc5c"
        )
    ]
)