//
//  Mark.swift
//  MorseNew
//
//  Created by adam smith on 7/13/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

enum Mark: CustomDebugStringConvertible {
    case Dot
    case Dash
    
    var debugDescription: String {
        switch self {
            
        case .Dot:
            return "Dot"
        case .Dash:
            return "Dash"
        }
    }
}