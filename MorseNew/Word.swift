//
//  Word.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct Word: Equatable {
    
    let symbols: [Symbol]
}

func ==(lhs: Word, rhs: Word) -> Bool {
    return lhs.symbols == rhs.symbols
}