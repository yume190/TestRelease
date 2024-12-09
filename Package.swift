// swift-tools-version:5.8

import PackageDescription
import Foundation

let package = Package(
    name: "swift-syntax",
    products: [
        .library(
            name: "SwiftBasicFormat",
            targets: ["SwiftBasicFormat_Aggregation"]
        ),
        .library(
            name: "SwiftCompilerPlugin",
            targets: ["SwiftCompilerPlugin_Aggregation"]
        ),
        .library(
            name: "SwiftDiagnostics",
            targets: ["SwiftDiagnostics_Aggregation"]
        ),
        .library(
            name: "SwiftIDEUtils",
            targets: ["SwiftIDEUtils_Aggregation"]
        ),
        .library(
            name: "SwiftOperators",
            targets: ["SwiftOperators_Aggregation"]
        ),
        .library(
            name: "SwiftParser",
            targets: ["SwiftParser_Aggregation"]
        ),
        .library(
            name: "SwiftParserDiagnostics",
            targets: ["SwiftParserDiagnostics_Aggregation"]
        ),
        .library(
            name: "SwiftRefactor",
            targets: ["SwiftRefactor_Aggregation"]
        ),
        .library(
            name: "SwiftSyntax",
            targets: ["SwiftSyntax_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxBuilder",
            targets: ["SwiftSyntaxBuilder_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacros",
            targets: ["SwiftSyntaxMacros_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacroExpansion",
            targets: ["SwiftSyntaxMacroExpansion_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacrosTestSupport",
            targets: ["SwiftSyntaxMacrosTestSupport_Aggregation"]
        ),
        .library(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            targets: ["SwiftSyntaxMacrosGenericTestSupport_Aggregation"]
        ),
        .library(
            name: "_SwiftCompilerPluginMessageHandling",
            targets: ["SwiftCompilerPluginMessageHandling_Aggregation"]
        ),
        .library(
            name: "_SwiftLibraryPluginProvider",
            targets: ["SwiftLibraryPluginProvider_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "SwiftBasicFormat_Aggregation",
            dependencies: [.target(name: "SwiftBasicFormat"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftBasicFormat",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141868.zip",
            checksum: "741ea320c9f2ff0970aa673741f6e48b649424d9e6e7e7370d8efc4e4061c47b"
        ),
        .target(
            name: "SwiftCompilerPlugin_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPlugin"),
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "SwiftSyntaxMacros_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftCompilerPlugin",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141869.zip",
            checksum: "e972b72b97e12e0b502958f1d67d15dfad400b0a3353633d6385899610b8131e"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141871.zip",
            checksum: "aca8259fd9406a4fadeadfe42c7239f396262ccf348808282ebaf42cd11b804c"
        ),
        .target(
            name: "SwiftIDEUtils_Aggregation",
            dependencies: [
                .target(name: "SwiftIDEUtils"),
                "SwiftSyntax_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftIDEUtils",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141872.zip",
            checksum: "6806343a6d53be5ae29df266333229d05361706a154faaa25c928ed9c8d5b966"
        ),
        .target(
            name: "SwiftOperators_Aggregation",
            dependencies: [
                .target(name: "SwiftOperators"),
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftOperators",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141874.zip",
            checksum: "a5ba69bbcf846d4e434bc08a18c3eb6622b53127b847c078574b7046b08d793d"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141877.zip",
            checksum: "7c8d4d37b28792a3537f293690bdfbdf5ae96f018307a192554ec06a328575dd"
        ),
        .target(
            name: "SwiftParserDiagnostics_Aggregation",
            dependencies: [
                .target(name: "SwiftParserDiagnostics"),
                "SwiftBasicFormat_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftParserDiagnostics",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141879.zip",
            checksum: "54634253c0ae0fa20393fc3b0f92cc5d1f498cfd0cc7bd7311ef8aae503df889"
        ),
        .target(
            name: "SwiftRefactor_Aggregation",
            dependencies: [
                .target(name: "SwiftRefactor"),
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftRefactor",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141880.zip",
            checksum: "181ae380014d731230a67889c170d58a49e0192c1828c7e60f0ac5a58b810a05"
        ),
        .target(
            name: "SwiftSyntax_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntax"),
                "_SwiftSyntaxCShims_Aggregation",
                "SwiftSyntax509_Aggregation",
                "SwiftSyntax510_Aggregation",
                "SwiftSyntax600_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntax",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141886.zip",
            checksum: "12c9aeac5546e71d8c5f9a5787ce582c2d075a633b979e7b67cff81a65461399"
        ),
        .target(
            name: "SwiftSyntaxBuilder_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxBuilder"),
                "SwiftBasicFormat_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftParserDiagnostics_Aggregation",
                "SwiftSyntax_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxBuilder",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141890.zip",
            checksum: "5c707f280b38fd4edc607bce508f9ee1a1e60a7a5be5cd221a2d7861dafe0f2f"
        ),
        .target(
            name: "SwiftSyntaxMacros_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacros"),
                "SwiftDiagnostics_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacros",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141892.zip",
            checksum: "1ad85a8134801721b450e258e67359a0a9f5825ba6bcef1eeaef81ee18d77180"
        ),
        .target(
            name: "SwiftSyntaxMacroExpansion_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacroExpansion"),
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxBuilder_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacroExpansion",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141894.zip",
            checksum: "336c4597855fcea4b5229186cb8daddad1350fa42df0df9160e33ad3c635b6de"
        ),
        .target(
            name: "SwiftSyntaxMacrosTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosTestSupport"),
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacrosGenericTestSupport_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosTestSupport",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141896.zip",
            checksum: "f115c8c36dba6eb7ba56e594cd49b907a9d7a838960c0552e9dd092ca5c22e7a"
        ),
        .target(
            name: "SwiftSyntaxMacrosGenericTestSupport_Aggregation",
            dependencies: [
                .target(name: "SwiftSyntaxMacrosGenericTestSupport"),
                "_SwiftSyntaxGenericTestSupport_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftIDEUtils_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftSyntaxMacrosGenericTestSupport",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141901.zip",
            checksum: "0f8127ed1caf79d8e49d3408475d1eea529f02b3ab9fb8d2db938b354167a393"
        ),
        .target(
            name: "SwiftCompilerPluginMessageHandling_Aggregation",
            dependencies: [
                .target(name: "SwiftCompilerPluginMessageHandling"),
                "_SwiftSyntaxCShims_Aggregation",
                "SwiftDiagnostics_Aggregation",
                "SwiftOperators_Aggregation",
                "SwiftParser_Aggregation",
                "SwiftSyntax_Aggregation",
                "SwiftSyntaxMacros_Aggregation",
                "SwiftSyntaxMacroExpansion_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftCompilerPluginMessageHandling",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141905.zip",
            checksum: "017e118755d7fed06ac7507e30bc0b3b13dd1cf0adfc2c6ed35409abe1cea58c"
        ),
        .target(
            name: "SwiftLibraryPluginProvider_Aggregation",
            dependencies: [
                .target(name: "SwiftLibraryPluginProvider"),
                "SwiftSyntaxMacros_Aggregation",
                "SwiftCompilerPluginMessageHandling_Aggregation",
                "_SwiftLibraryPluginProviderCShims_Aggregation"
            ]
        ),
        .binaryTarget(
            name: "SwiftLibraryPluginProvider",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141906.zip",
            checksum: "e27c223d54187cc989132755e70f57316d5d0d07f952ab4ca87cee16e9417381"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141907.zip",
            checksum: "b145797bf6ae8f977ddc1c15503e4623ae8952330ebf896020abb8b5ed999460"
        ),
        .target(
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141910.zip",
            checksum: "14309ae90990d98e96fb5546d1fc95f0a24c61053b88bd93eef3bef9a65c6dea"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141911.zip",
            checksum: "8b3b495d1a8a1c0fc0a1e8a7fd86abdda41755883d032bc89a6257fa712ec189"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141913.zip",
            checksum: "ba3d852c787a5851cf7e8627448787efa7d93b229ca4384bfcbc9e8a8ecca35c"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141915.zip",
            checksum: "dc3a8c35abd47c37560fe0ca65411f291506c8b899c72f0c087be420a05baa0f"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212141918.zip",
            checksum: "f58c74702511dc447afc4c9b64ba9aca620e5451b1f0b889e539928b6caeb65d"
        )
    ]
)