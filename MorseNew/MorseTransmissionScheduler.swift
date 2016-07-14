//
//  MorseTransmissionScheduler.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

class MorseTransmissionScheduler {
    
    static func scheduleTransmission(fromMessage message: Message) -> [Signal]? {
        
        var signals = [Signal]()
        
        for word in message.words {
            for symbol in word.symbols {
                for mark in symbol.marks {
                    let signal = createOnSignal(fromMark: mark)
                    signals.append(signal)
                }
            }
        }
        
        return signals
    }
    
    private static func createOnSignal(fromMark mark: Mark) -> Signal {
        switch mark {
        case .Dot:
            return Signal.On(DotValue)
        case .Dash:
            return Signal.On(DashValue)
        }
    }
}