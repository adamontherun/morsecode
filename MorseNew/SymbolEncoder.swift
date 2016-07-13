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
        
        let dotsAndDashes = createDotsAndDashes(forCharacter: character)
        
        let marks = dotsAndDashes?.characters.map {createMarkFrom($0)!}
        return Symbol(marks: marks!)
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