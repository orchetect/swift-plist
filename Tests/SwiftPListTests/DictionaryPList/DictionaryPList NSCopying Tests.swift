//
//  DictionaryPList NSCopying Tests.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import SwiftPList
import XCTest

final class DictionaryPList_NSCopying_Tests: XCTestCase {
   func testNSCopying() throws {
        let pl = try kSamplePList.DictRootAllValues.XML.plist()
    
        // set up other properties
    
        pl.format = .binary
    
        // make copy
    
        let copy = try XCTUnwrap(pl.copy() as? DictionaryPList)
    
        // verify contents
    
        kSamplePList.DictRootAllValues.verify(matches: copy)
    
        // verify stored properties
    
        XCTAssertEqual(copy.storage.count, 9)
        XCTAssertEqual(copy.format, .binary)
    }
}
