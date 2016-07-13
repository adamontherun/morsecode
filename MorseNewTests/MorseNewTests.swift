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
        let symbol = SymbolEncoder.encode(character: "e")
        print(symbol)
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
