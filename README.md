# swift-plist

[![Platforms - macOS 10.10+ | iOS 9+ | tvOS 9+ | watchOS 2+ | visionOS 1+](https://img.shields.io/badge/platforms-macOS%2010.10+%20|%20iOS%209+%20|%20tvOS%209+%20|%20watchOS%202+%20|%20visionOS%201+-lightgrey.svg?style=flat)](https://developer.apple.com/swift) ![Swift 5.3-6.2](https://img.shields.io/badge/Swift-5.5–6.2-orange.svg?style=flat) [![Xcode 13-26](https://img.shields.io/badge/Xcode-13–26-blue.svg?style=flat)](https://developer.apple.com/swift) [![License: MIT](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat)](https://github.com/orchetect/swift-plist/blob/main/LICENSE)

A multi-platform Swift library bringing functional methods and type safety to .plist (Property List) files.

## Motivation

The challenges that Apple's standard `PropertyListSerialization` presents:

1. **Lack of type safety** which allows the inadvertent injection of incompatible value types, which can lead to unexpected errors when saving a plist file later on, and are difficult to diagnose
2. **Root-level dictionary access only**, making traversal of nested dictionaries very cumbersome
3. **Deals in NS value types** which is not very Swifty and requires extra boilerplate at every interaction

swift-plist solves these issues by:

1. Acting as a **safe and convenient** wrapper for `PropertyListSerialization`
2. Providing **clean functional syntax** for
   - easily manipulating nested keys and values in dictionary trees
   - loading and saving plist files
3. Dealing in **native Swift value types** for keys and values
4. **Preventing the inadvertent use of incompatible value types** to avoid unexpected errors due to lack of type safety

## Installation

### Swift Package Manager (SPM)

To add this package to an Xcode app project, use:

 `https://github.com/orchetect/xctest-extensions` as the URL.

To add this package to a Swift package, add the dependency to your package and target in Package.swift:

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/orchetect/swift-plist", from: "3.0.0")
    ],
    targets: [
        .target(
            dependencies: [
                .product(name: "SwiftPList", package: "swift-plist")
            ]
        )
    ]
)
```

## Documentation

See the [online documentation](https://orchetect.github.io/swift-plist/) or view it in Xcode's documentation browser by selecting the **Product → Build Documentation** menu.

## Resources

- [Apple Docs: About Property Lists](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/PropertyLists/AboutPropertyLists/AboutPropertyLists.html)

## Author

Coded by a bunch of 🐹 hamsters in a trenchcoat that calls itself [@orchetect](https://github.com/orchetect).

## License

Licensed under the MIT license. See [LICENSE](https://github.com/orchetect/swift-plist/blob/master/LICENSE) for details.

## Community & Support

Please do not email maintainers for technical support. Several options are available for issues and questions:

- Questions and feature ideas can be posted to [Discussions](https://github.com/orchetect/swift-plist/discussions).
- If an issue is a verifiable bug with reproducible steps it may be posted in [Issues](https://github.com/orchetect/swift-plist/issues).

## Contributions

Contributions are welcome. Posting in [Discussions](https://github.com/orchetect/swift-plist/discussions) first prior to new submitting PRs for features or modifications is encouraged.

## Legacy

This repository was formerly known as PListKit.
