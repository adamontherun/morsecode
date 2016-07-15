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
        let result = MorseTransmissionScheduler.scheduleTransmission(fromMessage: message)
        
        XCTAssertEqual(actual, result)
    }
    
    func testMessageIsT_returnsOnDash() {
        let actual = [Signal.On(DashValue)]
        
        let message = MessageEncoder.encode(message: "t")!
        let result = MorseTransmissionScheduler.scheduleTransmission(fromMessage: message)
        
        XCTAssertEqual(actual, result)
    }
    
    func testMessageIsI_returnsOnDotOffDotShortOnDot() {
        let actual = [Signal.On(DotValue), Signal.Off(InterSignalPauseDuration), Signal.On(DotValue)]
        
        let message = MessageEncoder.encode(message: "i")!
        let result = MorseTransmissionScheduler.scheduleTransmission(fromMessage: message)
        
        XCTAssertEqual(actual, result)
    }
    
    func testMessageIsEE_returnsOnDotOffMediumOnDot() {
        let actual = [Signal.On(DotValue), Signal.Off(InterCharachterPauseDuration), Signal.On(DotValue)]
        
        let message = MessageEncoder.encode(message: "ee")!
        let result = MorseTransmissionScheduler.scheduleTransmission(fromMessage: message)
        
        XCTAssertEqual(actual, result)
    }

}
