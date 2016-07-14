//
//  MessageEncoderTests.swift
//  MorseNew
//
//  Created by adam smith on 7/14/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class MessageEncoderTests: XCTestCase {

    func testEncodeESpaceE() {
        let message = MessageEncoder.encode(message: "e e")
        print(message)
    }

}
