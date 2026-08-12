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
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/0.9.20/ZIPFoundation-f9c190aa1dd692c634bf10aa8d2232995a7e0283b84800ca3266cf8ba0912971.xcframework.zip",
            checksum: "f9c190aa1dd692c634bf10aa8d2232995a7e0283b84800ca3266cf8ba0912971"
        ),
        .target(
            name: "ZIPFoundation_PrecompiledProduct",
            dependencies: ["ZIPFoundation_Aggregation"]
        )
    ]
)