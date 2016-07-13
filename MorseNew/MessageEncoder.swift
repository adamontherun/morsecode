//
//  PhraseEncoder.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

class MessageEncoder {
    
    static func encode(message message: String) -> Message? {
        let words = message.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())

        let encodedWords = words.map{ WordEncoder.encode(word: $0)! }
        return Message(words: encodedWords)
    }
}