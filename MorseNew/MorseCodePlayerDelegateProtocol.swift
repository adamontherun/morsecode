//
//  MorseCodeGeneratorDelegateProtocol.swift
//  morse
//
//  Created by adam smith on 7/4/16.
//  Copyright © 2016 adam smith. All rights reserved.
//

import Foundation

protocol MorseCodePlayerDelegateProtocol: class {
    func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal)
    func playerFinished()
}