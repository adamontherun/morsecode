//
//  Message.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct Message: Equatable {
    let words: [Word]
}

func ==(lhs: Message, rhs: Message) -> Bool {
    return lhs.words == rhs.words
}