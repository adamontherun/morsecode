//
//  MorseNewTests.swift
//  MorseNewTests
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest
@testable import MorseNew

class MorseNewTests: XCTestCase {
    
    func testEncodeE() {
        let result = SymbolEncoder.encode(character: "e")
        let mark = Mark.Dot
        let actual = Symbol(marks: [mark])
        XCTAssertEqual(result!, actual)
    }
    
    func testEncodeEE() {
        let word = WordEncoder.encode(word: "ee")
        print(word)
    }
    
    func testEncodeESpaceE() {
        let message = MessageEncoder.encode(message: "e e")
        print(message)
    }
    
    
}
