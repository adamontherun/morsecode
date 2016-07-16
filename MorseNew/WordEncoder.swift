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
        
        var symbols = [Symbol]()
        for character in word.characters {
            guard let symbol = SymbolEncoder.encode(character: character) else { return nil }
            symbols.append(symbol)
        }
        return Word(symbols: symbols)
    }
}
