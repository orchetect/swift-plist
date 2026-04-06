// swift-tools-version: 5.8

import Foundation
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
    dependencies: [],
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

/// Conditionally opt-in to Swift DocC Plugin when an environment flag is present.
if ProcessInfo.processInfo.environment["ENABLE_DOCC_PLUGIN"] != nil {
    package.dependencies += [
        .package(url: "https://github.com/swiftlang/swift-docc-plugin.git", from: "1.4.5")
    ]
}
