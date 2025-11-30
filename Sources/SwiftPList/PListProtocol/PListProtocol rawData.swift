//
//  PListProtocol rawData.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import Foundation

extension PListProtocol {
    public func rawData(
        format: PListFormat? = nil
    ) throws -> Data {
        // if passed as nil, use `format` property
        let fileFormat = format != nil ? format! : self.format
        
        // Apple Docs: "Currently unused. Set to 0."
        let opts = PropertyListSerialization.WriteOptions()
        
        let result =
            try PropertyListSerialization.data(
                fromPropertyList: storage,
                format: fileFormat,
                options: opts
            )
        
        return result
    }
}
