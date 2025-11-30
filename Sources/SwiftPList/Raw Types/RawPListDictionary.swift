//
//  RawPListDictionary.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import Foundation

/// Raw `NSDictionary` used by `PropertyListSerialization`.
public typealias RawPListDictionary = [NSObject: AnyObject]

// MARK: - Conversion

extension RawPListDictionary {
    /// Function to recursively translate a raw plist dictionary to a Swift-friendly typed tree.
    public func convertedToPListDictionary() -> PListDictionary? {
        // translate to Swift-friendly types
        
        var newDict: PListDictionary = [:]
        
        for (keyRaw, value) in self {
            // key must be translatable to String
            guard let key = keyRaw as? String else { return nil }
            
            // if key == "SidebarWidthTenElevenOrLater" {
            //    print("SidebarWidthTenElevenOrLater - type: ", String(describing: type(of:
            //      value)), "value:", value)
            //    print("NSNumber doubleValue:", (value as? NSNumber)?.doubleValue as Any)
            //    print("NSNumber intValue:", (value as? NSNumber)?.intValue as Any)
            //    (value as? NSNumber)?.boolValue
            //    (value as? NSNumber)?.decimalValue
            //    (value as? NSNumber)?.doubleValue
            //    (value as? NSNumber)?.floatValue
            //    (value as? NSNumber)?.attributeKeys
            //    (value as? NSNumber)?.className
            // }
            
            guard let typedValue = convertToPListValue(from: value)
            else { return nil }
            
            newDict[key] = typedValue
        }
        
        return newDict
    }
}
