// swift-tools-version:5.5
// (be sure to update the .swift-version file when this Swift version changes)

import PackageDescription

let package = Package(
    name: "swift-plist",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(
            name: "SwiftPList",
            targets: ["SwiftPList"]
        )
    ],
    targets: [
        .target(
            name: "SwiftPList"
        ),
        .testTarget(
            name: "SwiftPListTests",
            dependencies: ["SwiftPList"]
        )
    ]
)
