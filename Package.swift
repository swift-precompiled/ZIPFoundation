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
            swiftSettings: [.define("SCIPIO_PRECOMPILED_BINARY_WRAPPER")]
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/0.9.20/ZIPFoundation-1ac4e7321e92861d82b1449976aabbe30200e5550861f52d3e43971c89bfc1df.xcframework.zip",
            checksum: "1ac4e7321e92861d82b1449976aabbe30200e5550861f52d3e43971c89bfc1df"
        ),
        .target(
            name: "ZIPFoundation_PrecompiledProduct",
            dependencies: ["ZIPFoundation_Aggregation"]
        )
    ]
)