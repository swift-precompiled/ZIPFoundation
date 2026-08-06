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
            targets: ["ZIPFoundation_PrecompiledProduct"]
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
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/main-22787ffb59de99e5dc1fbfe80b19c97a904ad48d/ZIPFoundation-ea46a8ed4c3b7b7da77620ec9ff34066d8d05378359b86ada048671453d71aaf.xcframework.zip",
            checksum: "ea46a8ed4c3b7b7da77620ec9ff34066d8d05378359b86ada048671453d71aaf"
        ),
        .target(
            name: "ZIPFoundation_PrecompiledProduct",
            dependencies: ["ZIPFoundation_Aggregation"]
        )
    ]
)