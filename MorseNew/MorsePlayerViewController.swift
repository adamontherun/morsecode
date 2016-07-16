//
//  MorsePlayerViewController.swift
//  MorseNew
//
//  Created by adam smith on 7/15/16.
//  Copyright © 2016 adamontherun. All rights reserved.
//

import UIKit

protocol MorsePlayerViewControllerDelegateProtocol {
    func closeModal()
}

 /// Base class for a view controller that can play a Morse Signal

class MorsePlayerViewController: UIViewController, MorseCodePlayerDelegateProtocol
{
    
    var delegate: MorsePlayerViewControllerDelegateProtocol?
    var signals: [Signal]?
    
    override  func endAppearanceTransition() {
        
        if let signalsQueue = signals {
            let player = SignalPlayer(signals: signalsQueue, delegate: self)
            player.play()
        }
    }
    
    /// Methods to be overridden in sub-classes
    func playSignal(forMorseEncodedSignal morseEncodedSignal: Signal) {}
    func playerFinished(){}
    
    @IBAction func handleCloseButtonTapped(sender: UIButton)
    {
        delegate?.closeModal()
    }
    
}
