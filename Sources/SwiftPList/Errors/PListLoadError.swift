//
//  PListLoadError.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

/// Error returned by ``PList`` methods which read file contents.
public enum PListLoadError: Error {
    case fileNotFound
    case formatNotExpected
    case unexpectedKeyTypeEncountered
    case unexpectedKeyValueEncountered
    case unhandledType
}
