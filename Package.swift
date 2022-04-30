// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Near",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NearSwift",
            targets: ["NearSwift"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/Flight-School/AnyCodable",
            .upToNextMinor(from: "0.6.0")
        ),
        .package(
            url: "https://github.com/GigaBitcoin/secp256k1.swift.git",
            .upToNextMajor(from: "0.5.0")
        ),
        .package(
            url: "https://github.com/bitmark-inc/tweetnacl-swiftwrap.git",
            .upToNextMajor(from: "1.1.0")
        ),
        .package(
            url: "https://github.com/keefertaylor/Base58Swift.git",
            from: "2.1.0"
        ),
        .package(
            url: "https://github.com/kishikawakatsumi/KeychainAccess",
            from: "4.2.2"
        )
    ],
    targets: [
        .target(
            name: "NearSwift",
            dependencies: [
                "AnyCodable",
                "KeychainAccess",
                .product(name: "TweetNacl", package: "tweetnacl-swiftwrap"),
                .product(name: "secp256k1", package: "secp256k1.swift"),
                "Base58Swift"
            ]
        )
    ]
)
