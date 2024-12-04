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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210988081.zip",
            checksum: "93f3ac5bfb564f6f3c9b61130ebf639ce58037dc7f3815ecc399a7f4d5896c73"
        ),
        .target(
            name: "SwiftUIX_Aggregation",
            dependencies: [.target(name: "SwiftUIX"), "_SwiftUIX_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftUIX",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/210988088.zip",
            checksum: "d800a20e7c1b331a04f68c54433c9fef0fb67cea1ce5e0982129fadfa95e72cf"
        )
    ]
)