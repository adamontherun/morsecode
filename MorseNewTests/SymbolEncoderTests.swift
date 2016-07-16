//
//  SymbolEncoderTests.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class SymbolEncoderTests: XCTestCase {

    func testEncodeE_MarkDotIsReturned() {
        let result = SymbolEncoder.encode(character: "e")
        let mark = Mark.Dot
        let actual = Symbol(marks: [mark])
        XCTAssertEqual(result!, actual)
    }
}
