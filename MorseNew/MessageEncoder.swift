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
        
        var morseEncodedWords = [Word]()
        for word in words {
            guard let morseEncodedWord = WordEncoder.encode(word: word) else { return nil }
            morseEncodedWords.append(morseEncodedWord)
        }
        return Message(words: morseEncodedWords)
    }
}