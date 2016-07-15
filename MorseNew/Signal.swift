//
//  Signal.swift
//  morse
//
//  Created by adam smith on 7/2/16.
//  Copyright © 2016 adam smith. All rights reserved.
//

import Foundation

let DotValue = 1
let DashValue = 3

let InterSignalPauseDuration = 1
let InterCharachterPauseDuration = 3
let InterWordPauseDuration = 7

enum Signal {
    
    typealias DurationMultiplier = Int
    case On (DurationMultiplier)
    case Off (DurationMultiplier)
    
    func duration(forBasePlaybackRate basePlaybackRate: Double) -> NSTimeInterval {
        switch self {
        case let .Off(value):
            return NSTimeInterval(Double(value) * basePlaybackRate)
        case let .On(value):
            return NSTimeInterval(Double(value) * basePlaybackRate)
        }
    }
}

// conforms to equatable to allow for unit testing.
extension Signal: Equatable {
    
}

func ==(lhs: Signal, rhs: Signal) -> Bool {
        
    switch (lhs, rhs) {
    case let (.Off(valueA), .Off(valueB)):
        return valueA == valueB
    case let (.On(valueA), .On(valueB)):
        return valueA == valueB
    default:
        return false
    }
}