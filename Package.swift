// swift-tools-version:5.3

import PackageDescription
import Foundation

let package = Package(
    name: "swift-collections",
    products: [
        .library(
            name: "Collections",
            targets: ["Collections_Aggregation"]
        ),
        .library(
            name: "DequeModule",
            targets: ["DequeModule_Aggregation"]
        ),
        .library(
            name: "OrderedCollections",
            targets: ["OrderedCollections_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "Collections_Aggregation",
            dependencies: [
                .target(name: "Collections"),
                "DequeModule_Aggregation",
                "OrderedCollections_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "Collections",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212063501.zip",
            checksum: "59387100bfd222c6dc9f905a23098a37529003573b1f78c93f45d989c2b7a13f"
        ),
        .target(
            name: "DequeModule_Aggregation",
            dependencies: [.target(name: "DequeModule")]
        ),
        .binaryTarget(
            name: "DequeModule",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212063510.zip",
            checksum: "0ce6e6ae34bc098da28a90bf398871f34fbd65124bd7abee57779f66173c2193"
        ),
        .target(
            name: "OrderedCollections_Aggregation",
            dependencies: [.target(name: "OrderedCollections")]
        ),
        .binaryTarget(
            name: "OrderedCollections",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212063515.zip",
            checksum: "5beeaf0f8798ead5beabbe699e19a4c1f6a1b26b3c72089adbb88b9b555b8772"
        )
    ]
)