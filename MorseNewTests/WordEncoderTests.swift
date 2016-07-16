//
//  WordEncoderTests.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class WordEncoderTests: XCTestCase {

    func testEncodeEE_returnsCorrectWord() {
        
        let result = WordEncoder.encode(word: "ee")
        let e = Symbol(marks: [Mark.Dot])
        let actual = Word(symbols: [e,e])
        
        XCTAssertEqual(result!, actual)
    }
}
