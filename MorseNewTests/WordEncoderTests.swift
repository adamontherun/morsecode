//
//  WordEncoderTests.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class WordEncoderTests: XCTestCase {

    func testEncodeEE() {
        let word = WordEncoder.encode(word: "ee")
        print(word)
    }
}
