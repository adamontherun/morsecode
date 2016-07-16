//
//  MessageValidator.swift
//  MorseNew
//
//  Created by adam smith on 7/15/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

struct MessageValidator {
    
    static func validate(message message: String) -> Bool
    {
        return message.characters.count > 0
    }
}