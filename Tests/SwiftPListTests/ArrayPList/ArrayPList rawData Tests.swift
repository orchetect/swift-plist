//
//  ArrayPList rawData Tests.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import SwiftPList
import XCTest

final class ArrayPList_rawData_Tests: XCTestCase {
    func testRawData_FromXML() throws {
        let pl = try kSamplePList.ArrayRootBasicValues.XML.plist()
        
        // check that rawData succeeds
        
        // xml
        let rawDataXML = try pl.rawData(format: .xml)
        let plFromXML = try ArrayPList(data: rawDataXML)
        kSamplePList.ArrayRootBasicValues.verify(matches: plFromXML)
        
        // binary
        let rawDataBinary = try pl.rawData(format: .binary)
        let plFromBinary = try ArrayPList(data: rawDataBinary)
        kSamplePList.ArrayRootBasicValues.verify(matches: plFromBinary)
        
        // openStep
        // Apple docs:
        // "The NSPropertyListOpenStepFormat constant is not supported for writing. It can be used
        // only for reading old-style property lists."
    }
    
    func testRawData_FromBinary() throws {
        let pl = try kSamplePList.ArrayRootBasicValues.XML.plist()
        
        // check that rawData succeeds
        
        // xml
        let rawDataXML = try pl.rawData(format: .xml)
        let plFromXML = try ArrayPList(data: rawDataXML)
        kSamplePList.ArrayRootBasicValues.verify(matches: plFromXML)
        
        // binary
        let rawDataBinary = try pl.rawData(format: .binary)
        let plFromBinary = try ArrayPList(data: rawDataBinary)
        kSamplePList.ArrayRootBasicValues.verify(matches: plFromBinary)
        
        // openStep
        // Apple docs:
        // "The NSPropertyListOpenStepFormat constant is not supported for writing. It can be used
        // only for reading old-style property lists."
    }
}
