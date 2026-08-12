// swift-tools-version:5.9.0

import PackageDescription
import Foundation

let package = Package(
    name: "ZIPFoundation",
    platforms: [
        .macOS("10.13"),
        .iOS("12.0"),
        .tvOS("12.0"),
        .watchOS("4.0"),
        .visionOS("1.0")
    ],
    products: [
        .library(
            name: "ZIPFoundation",
            targets: ["ZIPFoundation", "ZIPFoundation_PrecompiledProduct"]
        )
    ],
    targets: [
        .target(
            name: "ZIPFoundation_Aggregation",
            dependencies: ["ZIPFoundation"],
            resources: [.copy("Resources/PrivacyInfo.xcprivacy")],
            packageAccess: false,
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/0.9.20/ZIPFoundation-29ade35b9c05e719074a422982e544d1ca6d7bfd434e819932d85fd30a0da230.xcframework.zip",
            checksum: "29ade35b9c05e719074a422982e544d1ca6d7bfd434e819932d85fd30a0da230"
        ),
        .target(
            name: "ZIPFoundation_PrecompiledProduct",
            dependencies: ["ZIPFoundation_Aggregation"],
            packageAccess: false
        )
    ]
)