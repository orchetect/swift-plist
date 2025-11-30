//
//  AnyPList Tests.swift
//  swift-plist • https://github.com/orchetect/swift-plist
//  © 2020-2025 Steffan Andrews • Licensed under MIT License
//

import SwiftPList
import XCTest

final class AnyPList_Tests: XCTestCase {
    func testInit_XML_DictionaryRoot() throws {
        let anyPList = try AnyPList(xml: kSamplePList.DictRootAllValues.XML.raw)
        guard case let .dictionaryRoot(plist) = anyPList else { XCTFail(); return }
        kSamplePList.DictRootAllValues.verify(matches: plist)
    }
    
    func testInit_XML_ArrayRoot() throws {
        let anyPList = try AnyPList(xml: kSamplePList.ArrayRootBasicValues.XML.raw)
        guard case let .arrayRoot(plist) = anyPList else { XCTFail(); return }
        kSamplePList.ArrayRootBasicValues.verify(matches: plist)
    }
    
    func testInit_XML_StringRoot() throws {
        let anyPList = try AnyPList(xml: kSamplePList.StringRoot.XML.raw)
        guard case let .stringRoot(plist) = anyPList else { XCTFail(); return }
        kSamplePList.StringRoot.verify(matches: plist)
    }
}
