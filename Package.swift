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
            url: "https://github.com/swift-precompiled/ZIPFoundation/releases/download/main-22787ffb59de99e5dc1fbfe80b19c97a904ad48d/ZIPFoundation-4de4c8b3f06229d7a0fad473141d882b57fbfab321dc431e8fee41410ea01cbd.xcframework.zip",
            checksum: "4de4c8b3f06229d7a0fad473141d882b57fbfab321dc431e8fee41410ea01cbd"
        )
    ]
)