//
//  WordEncoder.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

class WordEncoder {
    
    static func encode(word word: String) -> Word? {
        let symbols = word.characters.map{ SymbolEncoder.encode(character: $0)! }
        return Word(symbols: symbols)
    }
}
