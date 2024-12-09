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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163906.zip",
            checksum: "5eabe0d485e588a4489ecff8434a62db521ef6be5ec6e042436b0fc333da40cc"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163907.zip",
            checksum: "81d50a95e48b0968b78d075ae92d425674d5643ad8b4b4714234926a604ad8ef"
        ),
        .target(
            name: "SwiftDiagnostics_Aggregation",
            dependencies: [.target(name: "SwiftDiagnostics"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftDiagnostics",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163909.zip",
            checksum: "a437d8e2c441076898ff5cafca01d54f713b13525257847e3552d23f96a2c238"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163913.zip",
            checksum: "5c209d69cebf027e7ec052d704eed54342788c49b6c1404ba0eb3e541596d3af"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163916.zip",
            checksum: "15fce5dbd998a2aa951e3980d51150aa7c7516d268b8dab35fe47d0b37a8e5b3"
        ),
        .target(
            name: "SwiftParser_Aggregation",
            dependencies: [.target(name: "SwiftParser"), "SwiftSyntax_Aggregation"]
        ),
        .binaryTarget(
            name: "SwiftParser",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163929.zip",
            checksum: "f9e9e5c05a1cf2c2b5a22f791de4ae450885f52c0df344af43b6d806d25e9982"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163941.zip",
            checksum: "e1d295968ef51d515389086438eba8216544dfa38f0d0514c216fc2f16f053fd"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163944.zip",
            checksum: "d240b37e17194a531b61f06c1a6d4877476936df3577cda4d150c930483b0cba"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163963.zip",
            checksum: "0a9f7f5a82d2cbbaf5475bb5a251f92d2ced555cc32d9ea0169d586c7b689f7d"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163969.zip",
            checksum: "9cfc7592be4c5fefb71f45f1fde4acd2c3f0d048af253cdd5fdb97d23cff64b8"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163970.zip",
            checksum: "d56bfb29be65638c87164d54f69383716ee10a8ee737201cd1c89b073fca6f92"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163971.zip",
            checksum: "117f1038f7ffc571b39bc3f996c42d753e6e8eaa849fe0f3d24cb04340f82e9b"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163973.zip",
            checksum: "61338559dcd4143cccc269154ece1f0e71639f5d927dbf2ab3ecfdcff52c6ab3"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163974.zip",
            checksum: "e74faa13fe8ffff54451ae92a176565694602f8825a60569c6d300c3250c3051"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163982.zip",
            checksum: "2b314b5ac11cf2879840a73a2a2798b8fd2b34e6c1891209aa330fdffc315a1f"
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
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163986.zip",
            checksum: "9c77fec0420842d5098e9815146a0405eb0f0b90f20e119a533ad4f6273a6eb5"
        ),
        .target(
            name: "_SwiftSyntaxGenericTestSupport_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxGenericTestSupport")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxGenericTestSupport",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163994.zip",
            checksum: "b7dc68a8c7b93d9845d997b1d2a44bbeea2c59eecc88649b3f61b6e120c0cd89"
        ),
        .target(
            name: "_SwiftSyntaxCShims_Aggregation",
            dependencies: [.target(name: "_SwiftSyntaxCShims")]
        ),
        .binaryTarget(
            name: "_SwiftSyntaxCShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212163999.zip",
            checksum: "a95d99b4d04391083d2c36485523348f17d7abb9378e051f80e365458245dea5"
        ),
        .target(
            name: "_SwiftLibraryPluginProviderCShims_Aggregation",
            dependencies: [.target(name: "_SwiftLibraryPluginProviderCShims")]
        ),
        .binaryTarget(
            name: "_SwiftLibraryPluginProviderCShims",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212164001.zip",
            checksum: "869ee891a0c8091310dec9f1beba4189492bcdc58060104290f4126ee20aa7dd"
        ),
        .target(
            name: "SwiftSyntax600_Aggregation",
            dependencies: [.target(name: "SwiftSyntax600")]
        ),
        .binaryTarget(
            name: "SwiftSyntax600",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212164003.zip",
            checksum: "7fb46878e84b277390a8380902e5c88059a91a6be472736fa677cf5d23ee33ec"
        ),
        .target(
            name: "SwiftSyntax510_Aggregation",
            dependencies: [.target(name: "SwiftSyntax510")]
        ),
        .binaryTarget(
            name: "SwiftSyntax510",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212164005.zip",
            checksum: "ccdce5d53f599312c46faf6dfa982465199fe86abbbc978afe85f141585a33cf"
        ),
        .target(
            name: "SwiftSyntax509_Aggregation",
            dependencies: [.target(name: "SwiftSyntax509")]
        ),
        .binaryTarget(
            name: "SwiftSyntax509",
            url: "https://api.github.com/repos/yume190/TestRelease/releases/assets/212164008.zip",
            checksum: "9551e893e4e0e0b7bd0e5aab41a1161f97bcbdfeecc5a38fedcb175990232ecb"
        )
    ]
)