//
//  Symbol.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct Symbol: Equatable, CustomDebugStringConvertible {
    let marks: [Mark]
    
    var debugDescription: String {
        return self.marks.reduce("Symbol with marks: "){ text, mark in
            "\(text), \(mark)"
        }
    }
}

func ==(lhs: Symbol, rhs: Symbol) -> Bool {
    return lhs.marks == rhs.marks
}