//
//  Model.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

enum Mark {
    case Dot
    case Dash
}

struct Symbol {
    
    let marks: [Mark]
}

struct Word {
    
    let symbols: [Symbol]
}

struct Message {
    let words: [Word]
}