//
//  SymbolEncoder.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import Foundation

class SymbolEncoder {
    
    static var characterMap: [String: String] = DataLoader.loadData(forFileName: "morse", fileExtension: "json")!
    
    static func encode(character character: Character) -> Symbol? {
        
        guard let dotsAndDashes = createDotsAndDashes(forCharacter: character) else { return nil }
        var marks = [Mark]()
        for dotOrDash in dotsAndDashes.characters {
            guard let mark = createMarkFrom(dotOrDash) else { return nil }
            marks.append(mark)
        }
        return Symbol(marks: marks)
    }
    
    static private func createDotsAndDashes(forCharacter character: Character) -> String? {
        
        return characterMap[String(character).lowercaseString]
    }
    
    static private func createMarkFrom(dotOrDash: Character) -> Mark? {
        
        switch dotOrDash {
        case ".":
            return Mark.Dot
        case "-":
            return Mark.Dash
        default:
            return nil
        }
    }
}