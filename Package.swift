// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libsmbclient",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(
            name: "Libsmbclient",
            targets: ["_Libsmbclient"]
        ),
        .library(
            name: "Libsmbclient-ios",
            targets: ["_Libsmbclient-ios"]
        ),
        .library(
            name: "Libsmbclient-tvos",
            targets: ["_Libsmbclient-tvos"]
        ),
        .library(
            name: "Libsmbclient-macos",
            targets: ["_Libsmbclient-macos"]
        ),
        .library(
            name: "Libsmbclient-xros",
            targets: ["_Libsmbclient-xros"]
        ),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libsmbclient",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient"],
            path: "Sources/_Libsmbclient"
        ),
        .target(
            name: "_Libsmbclient-ios",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-ios"],
            path: "Sources/_Libsmbclient-ios"
        ),
        .target(
            name: "_Libsmbclient-tvos",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-tvos"],
            path: "Sources/_Libsmbclient-tvos"
        ),
        .target(
            name: "_Libsmbclient-macos",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-macos"],
            path: "Sources/_Libsmbclient-macos"
        ),
        .target(
            name: "_Libsmbclient-xros",
            dependencies: ["gmp", "nettle", "hogweed", "gnutls", "Libsmbclient-xros"],
            path: "Sources/_Libsmbclient-xros"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "gmp",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/gmp.xcframework.zip",
            checksum: "5b162a9c94ac18fed854dfca2ce9265c828367e307c2c638352ab7ecaa8d4597"
        ),

        .binaryTarget(
            name: "nettle",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/nettle.xcframework.zip",
            checksum: "01521200be85b5e11eae23136a9fc359723fa0eeef08135ab79741aba45c8253"
        ),
        .binaryTarget(
            name: "hogweed",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/hogweed.xcframework.zip",
            checksum: "4fbb5330ebca9c12e8bf08acb027f310b3ab33400ddbae04e249e2de47d52371"
        ),

        .binaryTarget(
            name: "gnutls",
            url: "https://github.com/mpvkit/gnutls-build/releases/download/3.8.8-xcode26/gnutls.xcframework.zip",
            checksum: "8a17bd6f1aac58a22a88fdbf645a73cb7cc3f6510996a2be488e5b6c9bb2148b"
        ),

        .binaryTarget(
            name: "Libsmbclient",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-xcode26/Libsmbclient.xcframework.zip",
            checksum: "7d38351311b271e98dc5576cbe354cd23134d9d5ae9e142ab290b454a97c100b"
        ),
        .binaryTarget(
            name: "Libsmbclient-ios",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-xcode26/Libsmbclient-ios.xcframework.zip",
            checksum: "6e7b37f1b3020f4395a3028c4ae5c6e918e6a5670ea0fa0f22c15228d2260b59"
        ),
        .binaryTarget(
            name: "Libsmbclient-tvos",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-xcode26/Libsmbclient-tvos.xcframework.zip",
            checksum: "2939456d41986036176cb251997e851c20d9cd53e7cce42fbc28b5be83a565fe"
        ),
        .binaryTarget(
            name: "Libsmbclient-macos",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-xcode26/Libsmbclient-macos.xcframework.zip",
            checksum: "5da7c92ddfccc4b0e7d92ac09192ccdd2696d2b4996edb08c19a67cc3147254b"
        ),
        .binaryTarget(
            name: "Libsmbclient-xros",
            url: "https://github.com/mpvkit/libsmbclient-build/releases/download/4.15.13-xcode26/Libsmbclient-xros.xcframework.zip",
            checksum: "cb06d5a526a31c635abd1086ebaa06005c019e5cda56e62ca7a61d53957b577b"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
