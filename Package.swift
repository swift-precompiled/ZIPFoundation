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
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/0.9.20/ZIPFoundation-93d403f371d42262eee7d3bdce4508a8c4d860e143e3ba6c7d96ff11cdcbcf4b.xcframework.zip",
            checksum: "93d403f371d42262eee7d3bdce4508a8c4d860e143e3ba6c7d96ff11cdcbcf4b"
        ),
        .target(
            name: "ZIPFoundation_PrecompiledProduct",
            dependencies: ["ZIPFoundation_Aggregation"]
        )
    ]
)