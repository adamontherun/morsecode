//
//  MorseTransmissionSchedulerTests.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import XCTest

class MorseTransmissionSchedulerTests: XCTestCase {

    func testMessageIsE_returnsOnDot() {
        let actual = [Signal.On(DotValue)]
        
        let message = MessageEncoder.encode(message: "e")!
        let result = MorseTransmissionScheduler.scheduleTransmission(fromMessage: message)!
        
        XCTAssertEqual(actual, result)
        
    }

}
