//
//  ViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/12/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MorseCodePlayerDelegateProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard   let encodedMessage = MessageEncoder.encode(message: "test") else { return }
        let signals = MorseTransmissionScheduler.scheduleTransmission(fromMessage: encodedMessage)
        let player = SignalPlayer(signals: signals, delegate: self)
        player.play()
    }
    
    // MARK: - Morse Code Player Delegate Methods
    
    func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal) {
        print(morseEncodedSignal)
    }
    
    func playerFinished() {
        print("done")
    }
    
}

