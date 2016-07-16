//
//  MessageEncoderTests.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class MessageEncoderTests: XCTestCase {

    func testEncodeESpaceE_returnsCorrectPhrase() {
        
        let result = MessageEncoder.encode(message: "e e")!
        
        let e = Symbol(marks: [Mark.Dot])
        let firstWord = Word(symbols: [e])
        let secondWord = Word(symbols: [e])

        let actual = Message(words: [firstWord, secondWord])
        
        XCTAssertEqual(result, actual)
    }

}
