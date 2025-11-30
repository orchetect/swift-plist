//
//  Utilities.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Convenience method to form an `NSError`.
func nsError(_ failureReason: String, recoverySuggestion: String? = nil) -> NSError {
    var userInfo: [String: Any] = [:]
    
    userInfo[NSLocalizedDescriptionKey] = NSLocalizedString(
        failureReason,
        comment: ""
    )
    
    userInfo[NSLocalizedFailureReasonErrorKey] = NSLocalizedString(
        failureReason,
        comment: ""
    )
    
    if recoverySuggestion != nil {
        userInfo[NSLocalizedRecoverySuggestionErrorKey] = NSLocalizedString(
            recoverySuggestion!,
            comment: ""
        )
    }
    
    return NSError(domain: "swift-plist", code: -1, userInfo: userInfo)
}
