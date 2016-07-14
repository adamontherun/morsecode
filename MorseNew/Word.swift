//
//  Word.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct Word: Equatable, CustomDebugStringConvertible {
    
    let symbols: [Symbol]
    
    var debugDescription: String {
        return self.symbols.reduce("Word with symbols: "){ text, symbol in
            "\(text), \(symbol)"
        }
    }
}

func ==(lhs: Word, rhs: Word) -> Bool {
    return lhs.symbols == rhs.symbols
}