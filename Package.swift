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
            targets: ["ZIPFoundation_Aggregation"]
        )
    ],
    targets: [
        .target(
            name: "ZIPFoundation_Aggregation",
            dependencies: ["ZIPFoundation"]
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/main-22787ffb59de99e5dc1fbfe80b19c97a904ad48d/ZIPFoundation-d9c2d8461b5d320d306120565e2850e7f7f97083f00f3eb16ad081b912292342.xcframework.zip",
            checksum: "d9c2d8461b5d320d306120565e2850e7f7f97083f00f3eb16ad081b912292342"
        )
    ]
)