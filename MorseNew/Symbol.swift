//
//  Symbol.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct Symbol: Equatable {
    let marks: [Mark]
}

func ==(lhs: Symbol, rhs: Symbol) -> Bool {
    return lhs.marks == rhs.marks
}